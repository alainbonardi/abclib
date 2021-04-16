# abclib
## 20 years of research, teaching and creation in mixed music using Faust language
CICM (Centre de recherches Informatique et Création Musicale) - University Paris 8
http://cicm.mshparisnord.org/
Alain Bonardi & Paul Goutmann - 2019-2021

abclib library is the result of 20 years of research, teaching and creation in mixed music, expressed as a set of codes in Faust language.
The main topics addressed are:
- spatial sound processing and synthesis using ambisonics
- multi-channel sound processing
- utility objects for mixed music

It comes as a prolongation of the HOA library developed by the CICM between 2012 and 2015 which provided an impressive framework for ambisonics:
hoalibrary.mshparisnord.fr

abclib takes over HOA, proposing a large set of processes written in Faust language and implemented at various ambisonic orders (from 1 to 7, which means from 3 to 15 parallel instances). It also puts the emphasis, outside the scope of ambisonics on multi-channel sound processing with various dimensions from 1 to 16 parallel instances. The use of Faust language guarantees software durability and interoperability between Mac and Windows systems, as well as Max and PureData softwares. Faust files are available on a Github repository : https://github.com/alainbonardi/abclib/


The Faust processes are compiled to Max or PureData objects. Help patches are also provided as well as some overview patches or graphic abstractions based on jitter (in Max) or gem libraries (in PureData). In the field of ambisonics, 2D objects are provided, including general objects (encoders, decoders, optimizers, scopes), geometry objects (maps, mirrors, rotates, specific trajectory generators), and a set of spatial sound processes (decorrelators, delays, granulators, ring modulators) in both 'syn' and 'fx' modes. The names of the ambisonic objects in 2D use '2d' as a prefix: for instance abc_2d_decoder3~ is an ambisonic decoder in 2D at order 3. Multi-channel sound process objects do not use '2d' prefix: for instance, abc_delays16 implements a set of 16 parallel delay lines. Multi-channel sound processors include flangers, parallel and sequential delays, frequency shifters, harmonizers, granulators, reverberations.

The abclib library also provides utility objects for mixed music:  chowning-like panners, matrices, envelopes, an attack and release detector, synthesizers (additive, substractive, sound coat, sound grain, Risset's bell, rain drops).

Graphic objects especially to represent spatial components were developed using simple available technology in the two softwares: in Max, we use openGL primitives implemented thanks to Jitter. In PureData, we use the GEM library (that should be installed to enable ambisonic field visualization).

Teaching mixed music at Paris 8 University helped us in many implementation choices, thinking of practical requirements for composers, to allow them to test their patches either in multichannel academic studios or at home in simple stereo.
