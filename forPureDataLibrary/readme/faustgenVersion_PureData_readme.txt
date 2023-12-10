Thank you for downloading the abclib library, version v1.0.3.
______________________________________________________________

(all general information on the version of Pure Data required is in 'generalInformation_PureData_readme.txt' file)

Since v1.0.3 we provide a universal faustgen version for Pure Data, available for Mac OS, Windows and Linux.

________________________________
1st step: installing pd-faustgen
________________________________
It uses pd-faustgen2 by Albert Graef, which provides an embedded Faust compiler that can run in a Pure Data patch.
You may download it here:
https://github.com/agraef/pd-faustgen/releases/latest
The faustgen2~ folder must be inside your 'externals' folder

You need to add it to your startup path inside Pure Data.
Just open your preferences panel, select 'Startup' window, and add 'faustgen2~' to the list of Pd libraries to load on startup.
Reboot Pure Data, and then faustgen2~ embedded compiler will be available in any patch.


___________________________
2nd step: installing abclib
___________________________
After decompressing the 'abclib_puredata_universal_faustgen' folder, you will get two folders 'abclib' and 'abclib_faustCodes' you should copy to the externals folder.
Then you should add their path in the preferences panel of Pure Data, in the 'Path' window.
pd-faustgen2 will automatically compile the .dsp files that you would include in your Pure Data patch.
For instance, if you create a patch, then an object, and type as a name 'abc_2d_decoder3' or 'abc_2d_decoder3~', you will create a new object which provides the running instance of the abc_2d_decoder3.dsp file.

By adding 'abclib_faustCodes' to the list of pathes of Pure Data, you can use any of the .dsp codes inside your Pure Data patch.

In 'abclib_faustCodes', you will find various abstractions and a lot of tutorials. There are no real help patches, since asking for it by clicking on pd-faustgen displays the pd-faustgen help patch.








