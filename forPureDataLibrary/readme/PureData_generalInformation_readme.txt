Thank you for downloading the abclib library, version v1.0.3.
______________________________________________________________

To use abclib v1.0.3. for Pure Data, it is necessary to download a multichannel version of the software, i.e. Pure Data version 0.54 minimum.
https://puredata.info/downloads/pure-data

We now use multichannel implementations for some graphical abstractions such as abc_meter2_m, abc_meter4_m, etc. or abc_ambi_scope1, abc_ambi_scope2, etc.
Next version of the library will provide a full multichannel version of the library that will make patches far more readable and easier to create.

You will also need to download cyclone library (we use the scope~ object from this library).
You can simply add it from the help menu within Pure Data (Find externals): you look for cyclone and it will be properly downloaded.

In Pure Data, the content of a library is contained in a folder (it is not possible to include subfolders):
- in the case of the compiled version of the abclib library, the abclib folder contains compiled objects, help patches, useful abstractions and 8 general tutorials.
- in the case of the universal version for faustgen, the abclib folder contains Faust dsp files, useful abstractions, help patches as tutorials, and 8 general tutorials. As everything is based on the embedded compiler faustgen2~, there are no compiled objects, and no real help patches (help is only on faustgen2~) but tutorials.


