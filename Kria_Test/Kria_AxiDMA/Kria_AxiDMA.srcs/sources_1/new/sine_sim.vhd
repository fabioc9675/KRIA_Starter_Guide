library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Declaramos la entidad principal
entity sine_wave_gen is
    Port ( clk         : in  STD_LOGIC;
           rst         : in  STD_LOGIC;
           sine_out    : out STD_LOGIC_VECTOR(15 downto 0));
end sine_wave_gen;

architecture Behavioral of sine_wave_gen is

    -- Definimos la tabla precalculada de la onda seno (una aproximación)
    -- Usamos 256 muestras de la onda seno, cada valor corresponde a un punto de la onda
    type sine_wave_table is array(0 to 255) of integer range 0 to 65535; -- 16 bits
    constant sine_table : sine_wave_table := (
        32768, 33575, 34382, 35188, 35992, 36795, 37595, 38392, 39185,
       39975, 40761, 41541, 42316, 43086, 43849, 44605, 45354, 46096,
       46829, 47554, 48270, 48977, 49674, 50360, 51036, 51700, 52354,
       52995, 53624, 54240, 54844, 55434, 56010, 56572, 57119, 57652,
       58170, 58672, 59159, 59629, 60083, 60521, 60942, 61346, 61732,
       62101, 62452, 62785, 63099, 63396, 63673, 63932, 64172, 64393,
       64595, 64777, 64940, 65084, 65208, 65312, 65396, 65461, 65506,
       65530, 65535, 65520, 65486, 65431, 65356, 65262, 65148, 65015,
       64861, 64689, 64496, 64285, 64055, 63805, 63537, 63250, 62944,
       62620, 62278, 61919, 61541, 61146, 60734, 60304, 59858, 59396,
       58917, 58423, 57913, 57388, 56847, 56293, 55723, 55140, 54544,
       53934, 53311, 52676, 52029, 51370, 50699, 50018, 49326, 48625,
       47913, 47193, 46464, 45726, 44981, 44228, 43468, 42702, 41929,
       41151, 40368, 39581, 38789, 37994, 37195, 36394, 35590, 34785,
       33979, 33172, 32364, 31557, 30751, 29946, 29142, 28341, 27542,
       26747, 25955, 25168, 24385, 23607, 22834, 22068, 21308, 20555,
       19810, 19072, 18343, 17623, 16911, 16210, 15518, 14837, 14166,
       13507, 12860, 12225, 11602, 10992, 10396,  9813,  9243,  8689,
        8148,  7623,  7113,  6619,  6140,  5678,  5232,  4802,  4390,
        3995,  3617,  3258,  2916,  2592,  2286,  1999,  1731,  1481,
        1251,  1040,   847,   675,   521,   388,   274,   180,   105,
          50,    16,     1,     6,    30,    75,   140,   224,   328,
         452,   596,   759,   941,  1143,  1364,  1604,  1863,  2140,
        2437,  2751,  3084,  3435,  3804,  4190,  4594,  5015,  5453,
        5907,  6377,  6864,  7366,  7884,  8417,  8964,  9526, 10102,
       10692, 11296, 11912, 12541, 13182, 13836, 14500, 15176, 15862,
       16559, 17266, 17982, 18707, 19440, 20182, 20931, 21687, 22450,
       23220, 23995, 24775, 25561, 26351, 27144, 27941, 28741, 29544,
       30348, 31154, 31961, 32768
    );

    signal sine_index : integer range 0 to 255 := 0;  -- Índice de la tabla
    signal sine_value : integer range 0 to 65535 := 0;

begin

    -- Proceso principal que genera la señal seno
    process(clk, rst)
    begin
        if rst = '1' then
            sine_index <= 0;
            sine_value <= sine_table(0);
        elsif rising_edge(clk) then
            -- Obtener el valor de la onda seno de la tabla
            sine_value <= sine_table(sine_index);

            -- Salida de datos (16 bits)
            sine_out <= conv_std_logic_vector(sine_value, 16);

            -- Aumentar el índice de la tabla para el siguiente valor
            if sine_index = 255 then
                sine_index <= 0;  -- Reiniciar el índice al final del ciclo
            else
                sine_index <= sine_index + 1;
            end if;
        end if;
    end process;

end Behavioral;
