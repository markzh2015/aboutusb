        ��  ��                  p      �� ��     0 	        p4   V S _ V E R S I O N _ I N F O     ���             ?                        �   S t r i n g F i l e I n f o   �   0 4 0 9 0 4 b 0   h $  C o m p a n y N a m e     h t t p : / / l i b u s b - w i n 3 2 . s o u r c e f o r g e . n e t   d   F i l e D e s c r i p t i o n     l i b u s b - w i n 3 2   -   I n s t a l l - F i l t e r   0   F i l e V e r s i o n     1 . 2 . 6 . 0   F   I n t e r n a l N a m e   i n s t a l l - f i l t e r . e x e     n %  L e g a l C o p y r i g h t   2 0 0 2 - 2 0 0 9   S .   M e y e r ;   2 0 1 0   T .   R o b i n s o n     N   O r i g i n a l F i l e n a m e   i n s t a l l - f i l t e r . e x e     \   P r o d u c t N a m e     l i b u s b - w i n 3 2   -   I n s t a l l - F i l t e r   4   P r o d u c t V e r s i o n   1 . 2 . 6 . 0   D    V a r F i l e I n f o     $    T r a n s l a t i o n     	��      ��,��$'    0 	        WARNING:
  Improper use of libusb-win32 install-filter can cause devices to
  malfunction and in some cases complete system failure.

DISCLAIMER:
  THIS SOFTWARE IS PROVIDED IN AN "AS IS" CONDITION. NO WARRANTIES,
  WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT NOT LIMITED
  TO, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
  PARTICULAR PURPOSE APPLY TO THIS SOFTWARE. THE ORGANIZATION SHALL
  NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL OR
  CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
  

USAGE: install-filter [install|uninstall|list] <-ac> <-dc> <-ad> 
                                               <-c=> <-d=> <-f=>
                                               <-p=> <-w=>

Commands:             Compatible Switches:
  install   (i/-i)      <-ac> <-c=> <-d=> <-f=> <-p=> <-w=>
  uninstall (u/-u)      <-ac> <-c=> <-d=> <-f=> <-p=> <-w=> <-ad>
  list      (l/-l)      <-ac> <-dc> <-c=> <-p=> <-w=>

NOTE: 
  * If no switches are specified, the default class key list is used.
  * 64bit OSes must use the 64bit version of this application.

Switches For Class Filters:
  --all-classes         (-ac)
    install  : Adds libusb-win32 as an upper class filter for all
               classes in the USB enumerator. (Same as -dc in install mode)
    uninstall: Removes libusb-win32 as an upper class filter for all
               known classes.  This is a FULL class removal.
    list     : Displays all known classes.
    
  --device-classes      (-dc)
    install  : Adds libusb-win32 as an upper class filter for all
               classes in the USB enumerator.
    uninstall: Removes libusb-win32 as an upper class filter for all
               classes in the USB enumerator.
    list     : Displays all classes in the USB enumerator and the devices
               contained within them.
               
  --class=<nameOrGuid>  (-c=)
    install  : Adds libusb-win32 as an upper class filter for the
               specified class only.  Classes can be specified by name or
               guid.
    uninstall: Removes libusb-win32 as an upper class filter for the
               specified class only.  Classes can be specified by name or
               guid.
    list     : Displays information about the specified classes and the
               devices contained within them.

Switches For Device Filters:
  --device=<hwid>       (-d=)
    install  : Adds libusb-win32 as an upper device filter for the
               specified device.
    uninstall: Removes libusb-win32 as an upper device filter for the
               specified device.
    list     : <NA>
    
  --all-devices         (-ad)
  install
    install  : <NA>
    uninstall: Removes libusb-win32 device filters from all devices in the
               USB enumerator.
    list     : <NA>

Switches For INF Files:
 --inf=<your_file.inf> (-f=)
    install  : Installs usb device(s) from an inf file. 
    uninstall: Attempts to roll back a device driver installation. If 
               rollback fails or is unavailable, the device is removed and
               all root hubs are restarted.
    list     : <NA>

Common Switches:
 --prompt=<your_prompt_string> (-p=)
   Prompts the user with the specified string before running. To include
   spaces in the prompt string, place the entire switch in double quotes.
   Example: "-p=Are you sure?"
   
 --wait=<your_wait_string>     (-w=)
   After the operation completes, displays the specified string and waits for
   user input. To include spaces in the prompt string, place the entire
   switch in double quotes.
   Example: "-w=Press any key.."


Examples:
  install-filter install --device-classes
  install-filter uninstall --all-classes
  install-filter list --device-classes
  install-filter install --class={00000000-0000-0000-0000-000000000000}
  install-filter install "--device=USB\Vid_04d8&Pid_000c&Rev_0000"
  install-filter install --device=USB\Vid_04d8.Pid_000c.Rev_0000
  install-filter install --inf=your_file.inf
   