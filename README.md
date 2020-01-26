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

# Dependencies
None.

# Build Dependencies
- some LaTeX distribution with `xelatex`. The makefile assumes you have texlive.
- `hyperref` package for LaTeX
- GNU `make`

# Files
```
    README.md               This file.
    CHANGELOG.md            List of changes
    physunits.ins           The installer file
    physunits.ins           The package code and documentation
    makefile                GNU makefile to create and install the package
```

# Distributable Files
The following distributable files can be created as described below.
```
    physunits.sty           The actual package
    physunits.pdf           Usage documentation
    physunits.tar.gz        Tarball containing package, documentation, and 
                            this README
    physunits.zip           Zip file containing package, documentation, and 
                            this README
```
## Linux / max
To create a disribution on linux (or mac?)
- `make` to generate the package
- `make dist` to generate the distributable tarball and zip file
- `make distcheck` (make sure that the files were created)
## Windows
- create a zip file containing `physunits.dtx`, `physunits.pdf`, `CHANGELOG.md`, and `README.md`

# Installation
## Linux (and mac?)
### For a single project
- `make` to generate the package
- copy the `physunits.sty` into your project where your `.tex` files are located
### for all users and projects
- `make` to generate the package
- `make localinstall` to generate the package


## Windows or if the above doesn't work for linux/max
- Create the `.sty` and `.pdf` files
- Instructions that might help can be for windows can be found at [this post on StackExchange](https://tex.stackexchange.com/questions/369921/loading-packages-with-ins-and-dtx-files).
- figure out where your LaTeX local packages are installed
- create a directory named `physunits` in that location
- copy `physunits.sty` into the new directory
- figure out where your LaTeX local package documentation is installed
- create a directory named `physunits` in that location
- copy `physunits.pdf` into the new directory
- run `texhash` or the equivalent to let latex know the package is there

# Uninstallation

## Linux (and mac?)
- `sudo make localuninstall`

## Windows or if the above doesn't work for linux/max
- figure out where your LaTeX local packages are installed
- delete the directory named `physunits` in that location
- figure out where your LaTeX local package documentation is installed
- delete the directory named `physunits` in that location
- run `texhash` or the equivalent to let LaTeX know the package is gone

