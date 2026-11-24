# physunits
A LaTeX package that provides macros for SI, cgs, astronomical, imperial,
US customary, and historical units.

The current release is available from CTAN (https://ctan.org/pkg/physunits)
and from GitHub (https://github.com/astrobit/physunits). This repository also
holds the current development version. Please report bugs at
https://github.com/astrobit/physunits/issues.

# License
Copyright (C) 2020-2026 by Brian W. Mulligan <b.w.mulligan@txstate.edu>
-----------------------------------------------------------

This file may be distributed and/or modified under the conditions of
the LaTeX Project Public License, either version 1.3c of this license
or (at your option) any later version. The latest version of this
license is in:

https://www.latex-project.org/lppl.txt

and version 1.3c or later is part of all distributions of LaTeX
version 2006/05/20 or later.

# Dependencies
- A LaTeX format dated 2022-11-01 or later
- `iftex` and `graphicx`
- `unicode-math` (only with XeLaTeX or LuaLaTeX)

# Build Dependencies
- A LaTeX distribution with `xelatex` and `makeindex`. The makefile assumes you have TeX Live.
- The `amssymb` and `hyperref` packages
- GNU `make`

# Files
```
    README.md               This file.
    README.dist.md          A readme file suitable for distribution.
    CHANGELOG.md            List of changes
    CHANGELOG.dist.md       A list of changes suitable for distribution.
    physunits.ins           The installer file
    physunits.dtx           The package code and documentation
    makefile                GNU makefile to create and install the package
    makefile.dist           A makefile suitable for distribution.
```

# Distributable Files
The following distributable files can be created as described below.
```
    physunits.tar.gz        Tarball containing the package, documentation,
                            and the distribution README
    physunits.zip           Zip file containing the package, documentation,
                            and the distribution README
```
Each distributable file contains the following:
```
    makefile                GNU makefile to simplify building and installation on Linux (from makefile.dist)
    README.md               The distribution readme (from README.dist.md)
    CHANGELOG.md            List of changes (from CHANGELOG.dist.md)
    physunits.ins           The installer file
    physunits.dtx           The package code and documentation
    physunits.pdf           The package user manual
```
## Building
### Linux / Mac
1. `make` to generate the package
### Windows or if make doesn't work

Instructions that may help on Windows can be found at [this post on StackExchange](https://tex.stackexchange.com/questions/369921/loading-packages-with-ins-and-dtx-files).
1. Run `latex` on `physunits.ins`
1. Run `pdflatex` or `xelatex` on `physunits.dtx`
1. Run `makeindex -s gind.ist -o physunits.ind physunits.idx`
1. Run `makeindex -s gglo.ist -o physunits.gls physunits.glo`
1. Run `pdflatex` or `xelatex` on `physunits.dtx` to add the index and change log
1. Run `pdflatex` or `xelatex` on `physunits.dtx` again to get the right links and labels

## Creating distributions

### Linux / Mac
To create a distribution on Linux (or Mac):
1. Build the package as described above.
1. `make dist` to generate the distributable tarball and zip file

### Windows or if make doesn't work
1. Build the package as described above.
1. Create a directory named `physunits`
1. Copy `physunits.ins`, `physunits.dtx`, and `physunits.pdf` into the directory
1. Copy `README.dist.md` into the directory as `README.md`
1. Copy `CHANGELOG.dist.md` into the directory as `CHANGELOG.md`
1. Copy `makefile.dist` into the directory as `makefile`
1. Create a `.zip` file from the directory.

# Installation
## Linux (and Mac)
### For a single project
1. Build the package as described above.
1. Copy `physunits.sty` into your project, where your `.tex` files are located.
### For all users and projects
1. Build the package as described above.
1. `sudo make localinstall` to install the package into `TEXMFLOCAL`. Build first without `sudo` so the generated files are not owned by root.


## Windows or if the above doesn't work for Linux/Mac
1. Build the package as described above.
1. Instructions that may help on Windows can be found at [this post on StackExchange](https://tex.stackexchange.com/questions/369921/loading-packages-with-ins-and-dtx-files).
1. Figure out where your LaTeX local packages are installed.
1. Create a directory named `physunits` in that location.
1. Copy `physunits.sty` into the new directory.
1. Figure out where your LaTeX local package documentation is installed.
1. Create a directory named `physunits` in that location.
1. Copy `physunits.pdf` into the new directory.
1. Run `texhash` or the equivalent to let LaTeX know the package is there.

# Uninstallation

## Linux (and Mac)
1. `sudo make localuninstall`

## Windows or if the above doesn't work for Linux/Mac
1. Figure out where your LaTeX local packages are installed.
1. Delete the directory named `physunits` in that location.
1. Figure out where your LaTeX local package documentation is installed.
1. Delete the directory named `physunits` in that location.
1. Run `texhash` or the equivalent to let LaTeX know the package is gone.
