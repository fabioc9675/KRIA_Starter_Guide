#!/usr/bin/env python
# coding: utf-8

# In[11]:


from pynq import Overlay

overlay = Overlay('/home/xilinx/jupyter_notebooks/design_leds/design_leds.bit')


# In[6]:


get_ipython().run_line_magic('pinfo', 'overlay')


# In[12]:


from pynq import DefaultIP

class Leds_Control(DefaultIP):
    def __init__(self, description):
        super().__init__(description=description)

    bindto = ['xilinx.com:user:Fab_Led_IP:1.3']

    def Leds_Off(self):
        self.write(0x00, 0x00)
        
    def Leds_On(self):
        self.write(0x00, 0xFF)


# In[20]:


overlay.Fab_Led_IP_0.Leds_Off()


# In[19]:


overlay.Fab_Led_IP_0.Leds_On()


# In[31]:


overlay.Fab_Led_IP_0.write(0x00, 0x0B)

