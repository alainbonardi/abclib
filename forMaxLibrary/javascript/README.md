# abclib
## The abc wrapper
### CICM (Centre de recherches Informatique et Création Musicale) - University Paris 8
### http://cicm.univ-paris8.fr/

The ‘abc_wrp.js’ was developed to be placed inside the global abstractions of the ‘abc library’. These global abstractions are placed inside the folder ‘extensions’ inside the distribution for MAX MSP. This global abstractions in conjunction with the ‘abc_wrp.js’ file have 2 main functions:
[1]	Dynamically replace the ‘abc’ objects inside the global abstractions to adjust it to the desired number of channels or ambisonic order. This will allow the user to manage the desired object by adding attributes to the main global abstraction. For example, an ambisonic decoder that will normally be called using this terminology:
abc_2d_decoder5_12~
Will now be called using this terminology:
abc.hoa.decoder~ 5 @speakers 12 @dimensions 2 @stereo 1
This new abstraction will replace the required object adjusting dynamically the amount of input and outputs taking in account the attributes @dimensions (2d,3d) and @speakers. The attribute @stereo will send a configuration message to set the decoder in stereo mode.
[2]	These global abstractions will also transform every ‘abc’ object into multichannel objects, the ‘abc_wrp.js’ file will add an ‘mc.unpack~’ object at the input of the abstraction and will condensate every output into one using the ‘mc.pack’ object. This will allow every ‘abc’ object to be connected between each other using just one single cable.

To contribute:
Updates to the ‘abc_wrp.js’ should be done gradually when a new object is added to the ‘abc library’. In order to add a new object it is recommended to follow the same logic the file already uses. You will see some ambisonic objects, multichannel objects and simple objects that are not neither ambisonic or multichannel. It is recommended to follow the logic of each family depending on the object to be added.
If the new added object is not an ‘special object’ (check the end of the JavaScript to see the special objects) the only thing that needs to be done is to reconstruct the desired object into a String and save it into the ‘objectToInstantiate’ variable. The code will do the rest.
If the object is an special object, which means that the input or output must be packed different from all the other objects, additional code should be added at the end of the document. Basically, the code will generate a ‘normal’ patch and it will be necessary to disconnect, add objects and reconnect objects.
