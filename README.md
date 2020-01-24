# physunits
A LaTeX package that includes macros for SI, cgs, and some imperial units.

# License
Copyright (C) 2020 by Brian W. Mulligan <bwmulligan@astronaos.com>
-----------------------------------------------------------

This file may be distributed and/or modified under the conditions of
the LaTeX Project Public License, either version 1.3c of this license
or (at your option) any later version. The latest version of this
license is in:

http://www.latex-project.org/lppl.txt

and version 1.3c or later is part of all distributions of LaTeX
version 2006/05/20 or later.

# Files
```
    README.md     This file.
    physunits.ins The installer file
    physunits.dtx The package code and documentation
    makefile      GNU makefile to create and install the package
```

# Installation
For linux, run `makefile` to generate the package (.sty file) and documentation.
If you are using texlive (most modern linux distributions use texlive), you may 
then run `sudo makefile localinstall` to install the package to your latex 
distribution. If you are not using texlive, you will need to manually
copy the .sty file into either the folder where your .tex files reside that
require the package, or manually install the package in your latex distribution.

For mac, the instructions above for linux might work. Otherwise you're sort of 
on your own. Most likely your latex disrubution is somewhere in /usr/share.
You will need to figure out the name and where the package files are stored, 
then run `texhash` so that latex knows that they are there.

For windows, you're kind of on your own. Instructions that might help can be
found at [this post on StackExchange](https://tex.stackexchange.com/questions/369921/loading-packages-with-ins-and-dtx-files).

