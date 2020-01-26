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
    README.dist.md          A readme file suitable for distribution.
    CHANGELOG.md            List of changes
    physunits.ins           The installer file
    physunits.dtx           The package code and documentation
    makefile                GNU makefile to create and install the package
    makefile.dist           A makefile suitable for distribution.
```

# Distributable Files
The following distributable files can be created as described below.
```
    physunits.tar.gz        Tarball containing package, documentation, and 
                            this README
    physunits.zip           Zip file containing package, documentation, and 
                            this README
```
Each distributable file contains the following:
```
    makefile                GNU makefile to simplify building and installation on linux
    README.md               This file.
    CHANGELOG.md            List of changes
    physunits.ins           The installer file
    physunits.dtx           The package code and documentation
    physunits.pdf           The package user manual
```
## Creating distributions

### Linux / max
To create a disribution on linux (or mac?)
1 `make` to generate the package
1 `make dist` to generate the distributable tarball and zip file

### Windows
1 Build the package.
1 Create a directory named `physunits`
1 Copy `physunits.ins`, `physunits.dtx`, `physunits.pdf`, and `CHANGELOG.md` into the directory
1 Copy `README.dist.md` into the directory as `README.md`
1 Copy `makefile.dist` into the directory as `makefile`
1 Create a `.zip` file from the directory.

# Installation
## Linux (and mac?)
### For a single project
1 Build the package as described above.
1 Copy the `physunits.sty` into your project where your `.tex` files are located.
### for all users and projects
1 Build the package as described above.
1 `make localinstall` to generate the package.


## Windows or if the above doesn't work for linux/max
1 Build the package as described above.
1 Instructions that might help can be for windows can be found at [this post on StackExchange](https://tex.stackexchange.com/questions/369921/loading-packages-with-ins-and-dtx-files).
1 Figure out where your LaTeX local packages are installed.
1 Create a directory named `physunits` in that location.
1 Copy `physunits.sty` into the new directory.
1 Figure out where your LaTeX local package documentation is installed.
1 Create a directory named `physunits` in that location.
1 Copy `physunits.pdf` into the new directory.
1 Run `texhash` or the equivalent to let latex know the package is there.

# Uninstallation

## Linux (and mac?)
1 `sudo make localuninstall`

## Windows or if the above doesn't work for linux/max
1 Figure out where your LaTeX local packages are installed.
1 Delete the directory named `physunits` in that location.
1 Figure out where your LaTeX local package documentation is installed.
1 Delete the directory named `physunits` in that location.
1 Run `texhash` or the equivalent to let LaTeX know the package is gone.

