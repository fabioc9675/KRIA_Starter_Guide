from pynq import DefaultIP


class Comblock(DefaultIP):
    """
    La clase Comblock contiene los metodos para el control 
    del IP COMmunication BLOCK (ComBlock IP), del cual, se 
    puede consultar detalles en:

    https://gitlab.com/rodrigomelo9/core-comblock/-/tree/master


    Attributes
    ----------

    properties : dict
        Contiene las parametros implementados en comblock, 
        tal como, el numero de registros o si las memorias
        Fifo o DRam estan habilitadas o no.

    Los siguientes atributos estan presentes segun las 
    especificaciones de properties:

    IN_REGS : pynq.Comcblock.Register
        objeto que ofrece el metodo para la lectura 
        de los registros de entrada.

    OUT_REGS : pynq.Comcblock.Register
        objeto que ofrece los metodos para la lectura y escritura 
        de los registros de salida.

    FIFO_IN : pynq.Comcblock.Register
        objeto que ofrece los metodos para la lectura 
        de la memoria FIFO de entrada.

    FIFO_OUT : pynq.Comcblock.Register
        objeto que ofrece los metodos para la escritura
        de la memoria FIFO de salida.

    DRAM : pynq.Comcblock.Register
        objeto que ofrece los metodos para la lectura y escritura 
        de la memoria DRAM.


    """
    def __init__(self, description):
        super().__init__(description=description)
        self.properties = description["parameters"]
        
        
        if description['mem_id'] == 'AXIL':
            print("entro aca 1")
            if self.properties['REGS_IN_ENA'] == "true":
                self.IN_REGS = Register("in", 
                               int(self.properties["REGS_IN_DEPTH"]), self.mmio)
            
            if self.properties['REGS_OUT_ENA'] == "true":
                self.OUT_REGS = Register("out", 
                                int(self.properties["REGS_OUT_DEPTH"]), self.mmio)

            if self.properties['FIFO_IN_ENA'] == "true":
                self.FIFO_IN = Fifo("in", 
                               int(self.properties["FIFO_IN_DEPTH"]), self.mmio)

            if self.properties['FIFO_OUT_ENA'] == "true":
                self.FIFO_OUT = Fifo("out", 
                                int(self.properties["FIFO_OUT_DEPTH"]), self.mmio)
        

        elif description['mem_id'] == 'AXIF':
            print("entro aca 2")
            if self.properties['DRAM_IO_ENA'] == "true":
                self.DRAM = Dram(int(self.properties["DRAM_IO_AWIDTH"]), self.mmio)


    bindto = ['www.ictp.it:user:comblock:2.0']


    def Write(self, offset, value):
        """
        Redefine el offset para poder escribir con el 
        metodo pynq.overlay.DefaultIP.write
        
        Parameters
        ----------
        offset : int
            direccion a escribir.

        value : int or bytes
            dato a escribir.

        """
        addr = offset * 4 
        self.write(addr, value)


    def Read(self, offset):
        """
        Redefine el offset para poder leer con el 
        metodo pynq.overlay.DefaultIP.read
        Parameters
        ----------
        offset : int
            direccion a leer.

        Returns
        ----------
            int
        """
        addr = offset * 4
        return self.read(addr)



class Register(Comblock):
    """
    Esta clase ofrece los metodos para la escritura y lectura 
    de registros de entrada y salida del Comblock IP.

    Attributes
    ----------
    mmio :  pynq.MMIO
        Controlador MMIO subyacente para el dispositivo

    kind : str
        define si los registros serán de entrada o salida ("in" o "out").

    depth : int
        define la cantidad de registros que se habilitaton 
        en la implementacion

    """
    def __init__(self, kind, depth, Mmio):
        self.mmio = Mmio
        self.kind = kind
        self.depth = depth


    def writeReg(self, offset, value):
        """
        Esta función discrimina la posibilidad de escribir o no 
        el registro según sea de entrada o salida y según el valor
        de offset ingresado (No hay más de 16 registros).

        Parameters
        ----------
        offset : int 
            direccion a escribir. (0-15)

        value : int o bytes
            dato a escribir.


        """
        if self.kind == "in":
            return "Error: you can't write the input registers" 
        
        elif self.kind == "out":       
            if offset > 15:
                return "WARNING: this memory address  is not an input or output register, verify the 'offset' parameter"
            else:
                if offset > self.depth:
                   return "WARNING: your overlay doesn't have this register connected"
                else:
                    self.Write(offset + 16, value)
        else:
            pass


    def readReg(self, offset):
        """
        Esta función discrimina la posibilidad de leer o no 
        el registro según sea de entrada o salida y según el valor
        de offset ingresado (No hay más de 16 registros).

        Parameters
        ----------
        offset : int 
            direccion a escribir. (0-15)

        Returns
        ----------
            int
        """
        if offset > 15:
                return "Erorr: this memory address  is not an input or output register, verify the 'offset' parameter"

        elif offset > self.depth:
            return "WARNING: your overlay doesn't have this register connected"

        else:
            if self.kind == "out":
                offset = offset + 16
            
            return self.Read(offset)


class Fifo(Comblock):
    """
    Esta clase ofrece los metodos para la escritura y lectura 
    en la memoria fifo de entrada y salida del Comblock IP.

    Attributes
    ----------
    mmio :  pynq.MMIO
        Controlador MMIO subyacente para el dispositivo

    kind : str
        define si la fifo será de entrada o salida ("in" o "out").

    depth : int
        define la profundidad de la memoria fifo.

    """
    def __init__(self, kind, depth, Mmio):
        self.mmio = Mmio
        self.kind = kind
        self.depth = depth
 
        if self.kind == "in":
            self.offset_Value = 32 
            self.offset_control = 33
            self.offset_status = 34

        if self.kind == "out":
            self.offset_Value = 36 
            self.offset_control = 37
            self.offset_status = 38
        
        self.depth = depth
        

    def writeF(self, value):
        """
        Esta función discrimina la posibilidad de escribir o no 
        en la memoria fifo según sea de entrada o salida y según 
        el valor el espacio libre de esta.

        Parameters
        ----------
        value : int o bytes
            dato a escribir.

        """
        
        if self.kind == "in":
            return "Error: you can't write the input fifo "

        elif self.kind == "out":
            status = self.checkStatus()
            
            if status == 3 or status == 2:
                return "WARNING: The output fifo is FULL"
            else:
                self.Write(self.offset_Value, value)
        

    def readF(self):
        """
        Esta función discrimina la posibilidad de leer o no 
        la memoria fifo según sea de entrada o salida y según 
        la disponibilidad de datos, si esta vacia no habrá nada 
        que leer.

        Returns
        ----------
            int
        """
        
        if self.kind == "out":
            return "Error: you can't read the output fifo"
        
        elif self.kind == "in":
            status = self.Read(self.offset_status)
            
            if status == 3 or status == 7:
                return "The input fifo is empty"
            
            else:
                return self.Read(self.offset_Value)   


    def writeBulk(self, Buffer):
        """
        Esta función permite escribir en la memoria fifo 
        un bloque de datos no más grande que la profundidad 
        de la memoria.

        Parameters
        ----------
         Buffer : array (list) of int or bytes.
            bloque de datos que se escribiran en la fifo

        """
        depth_allowed =self.depth - self.dataAmount()
        depth = len(Buffer)

        if depth > depth_allowed:
            return "you're trying to write %d data but output fifo has only %d free spaces"%(depth, depth_allowed)
        
        else:
            for i in Buffer:
                self.writeF(i)


    def readBulk(self, depth):
        """
        Esta función permite leer de la memoria fifo 
        un bloque de datos no más grande que la profundidad 
        de la memoria.

        Parameters
        ----------
        depth : int
            cantidad de datos a leer.

        Returns
        ----------
        data : list of int
            lista con los datos leidos.

        """
 
        data_amount = self.dataAmount() 

        if depth > self.depth:
            return "Error: you're trying to read %d data but input fifo is just %d deep"%(depth, self.depth)
        elif depth > data_amount:
            print("WARNING: Fifo has just %d data"%(data_amount))
            depth = data_amount

        data = []
        
        for i in range(depth):
            data.append(self.readF())

        return data


    def dataAmount(self):
        try:
            data_amount = int(bin(self.Read(self.offset_status))[:-16], 2)
        except:
            data_amount = 0

        return data_amount


    def checkStatus(self):
        return int(bin(self.Read(self.offset_status))[-16:], 2)


    def reset(self):
        """
        Esta función envía la señal de reinicio a la memoria fifo, 
        es util para asegurarse del estado de las memorias fifos antes
        o despues de leerlas o escribirlas.

        """
        self.Write(self.offset_control, 1)
        
        if self.kind == "out":
            self.writeBulk([0 for i in range(self.depth)])
            self.Write(self.offset_control, 1)

        print("reset finished")



class Dram(Comblock):
    """
    Esta clase ofrece los metodos para la escritura y lectura 
    en la memoria Dram (True Dual port RAM) del Comblock IP.
    El tamaño de memoria (depth) depende de tamaño de la direccion
    de memoria awidth.

    Attributes
    ----------
    mmio :  pynq.MMIO
        Controlador MMIO subyacente para el dispositivo.

    depth : int
        define la profundidad de la memoria Dram.

    """
    def __init__(self,  awidth , Mmio):
        self.mmio = Mmio
        self.depth = 2 ** awidth



    def writeRam(self, addr, value):
        """ 
        Usa el metodo Comblock.Write. discrimina si la direccion
        de memoria ingresada es invalida según la profundidad
        
        Parameters
        ----------
        addr : int
            dirección de memoria a escribir.

        value : int or bytes
            dato a escribir.

        """
        if addr > self.depth:
            return " WARNING: Dual Port RAM is just %d deep"%self.depth

        else:
            self.Write(addr, value)
        

    def readRam(self, addr):
        """ 
        Usa el metodo Comblock.Read para leer solo las direcciones de 
        memoria que ya hayan sido rellenadas.

        Parameters
        ----------
        addr : int
            dirección de memoria a leer.

        Returns
        ---------
            int

        """
        if addr > self.depth:
            return " WARNING: Dual Port RAM is just %d deep"%self.depth
        else:
            return self.Read(addr)


    def writeBulk(self, baseAddr, Buffer):
        """ 
        Escribe en la RAM un bloque contiguo de datos a partir de
        baseAddr usando el metodo Comblock.Write.

        Parameters
        ----------
        baseAddr : int
            direccion base a partir de la cual escribir.

        Buffer : array (list) of int or bytes.
            bloque de datos a escribir.

        """
        if self.depth - baseAddr < len(Buffer):
            return "WARNING: you are trying to write in the interval {%d,%d} that is outside the allowed range {0, %d}"%\
                                                                            (baseAddr, baseAddr + len(Buffer), self.depth)
        else:
            j = 0                                                            
            for i in range(baseAddr, baseAddr + len(Buffer)):
                self.writeRam(i, Buffer[j])
                j += 1

    def readBulk(self, baseAddr, depth):
        """ 
        Lee de la RAM un bloque contiguo de datos a partir de
        baseAddr usando el metodo Comblock.Read.

        Parameters
        ----------
        baseAddr : int
            direccion base a partir de la cual leer.

        depth : int
            cantidad de datos a leer.
        """ 
        data = []
        if self.depth - baseAddr < depth:
            return "WARNING: Change the depth parameter,from %d there are only %d (<%d) possible memory addresses"%\
                                                                            (baseAddr, self.depth - baseAddr , depth)

        else:
            for i in range(baseAddr, baseAddr + depth ):
                data.append(self.readRam(i))

            return data