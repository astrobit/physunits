# physunits
A LaTeX package that provides macros for SI, cgs, astronomical, imperial,
US customary, and historical units.

The current release is available from CTAN (https://ctan.org/pkg/physunits)
and from GitHub (https://github.com/astrobit/physunits). The GitHub
repository also holds the current development version. Please report bugs at
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
- A LaTeX distribution with `pdflatex` or `xelatex` and `makeindex`
- The `amssymb` and `hyperref` packages

# Files
```
    makefile                GNU makefile to simplify building and installation on Linux
    README.md               This file.
    CHANGELOG.md            List of changes
    physunits.ins           The installer file
    physunits.dtx           The package code and documentation
    physunits.pdf           The package user manual
```

# Building the Package
## Linux / Mac using make and xelatex
1. `make`

## Otherwise
1. Run `latex` on `physunits.ins` to create the `.sty` file, e.g. `latex physunits.ins`.
1. The following steps apply only if you want the documentation (recommended).
  1. Run `pdflatex` or `xelatex` on `physunits.dtx` to create the `.pdf` file, e.g. `xelatex physunits.dtx`.
  1. Run `makeindex` to create the index, e.g. `makeindex -s gind.ist -o physunits.ind physunits.idx`.
  1. Run `makeindex` to create the change log, e.g. `makeindex -s gglo.ist -o physunits.gls physunits.glo`.
  1. Run `pdflatex` or `xelatex` on `physunits.dtx` again to add the index and change log, e.g. `xelatex physunits.dtx`.
  1. Run `pdflatex` or `xelatex` on `physunits.dtx` once more to resolve the labels, e.g. `xelatex physunits.dtx`.

Instructions that may help on Windows can be found at [this post on StackExchange](https://tex.stackexchange.com/questions/369921/loading-packages-with-ins-and-dtx-files).

# Installation
First build the package as described above.

## For a single project
1. Copy `physunits.sty` into your project, where your `.tex` files are located.

## For all users and projects
### Linux / Mac using make and xelatex
1. `sudo make localinstall` to install the package into `TEXMFLOCAL`. Build first without `sudo` so the generated files are not owned by root.

### Otherwise
Instructions that may help on Windows can be found at [this post on StackExchange](https://tex.stackexchange.com/questions/369921/loading-packages-with-ins-and-dtx-files).
1. Figure out where your LaTeX local packages are installed.
1. Create a directory named `physunits` in that location.
1. Copy the `.sty` file into the directory you just created.
1. Figure out where your LaTeX local package documentation is installed.
1. Create a directory named `physunits` in that location.
1. Copy the `.pdf` file into the directory you just created.
1. Run `texhash` or the equivalent to let LaTeX know the package is there.


# Uninstallation

## Linux / Mac using make
1. `sudo make localuninstall`

## Otherwise
1. Figure out where your LaTeX local packages are installed.
1. Delete the directory named `physunits` in that location.
1. Figure out where your LaTeX local package documentation is installed.
1. Delete the directory named `physunits` in that location.
1. Run `texhash` or the equivalent to let LaTeX know the package is gone.
