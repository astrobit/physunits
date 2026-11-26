# Changes
## [1.0.0] - 2020/01/22
- Initial version
## [1.0.1] - 2020/01/25
### Added
- A changelog
- A readme
- Code for changelog into physconst.cpp
- `make dist` to create distributable tarball and zip
- line in .ins to force generation of the .sty
- nicer index entries (and some associated code in .cpp to generate them)
- added localuninstall and distuninstall targets to the makefile
### Changed
- Modified the makefile to split up generation of the .sty, and .pdf
- Added a newline in the middle of the title declaration (in .cpp)
- Added a newline in the middle of the \DoNotIndex declaration (in .cpp)
- fixed makefile install options to correctly find TEXMF path
## [1.0.2] - 2020/01/25
### Changed
- Switch compression of tarball to gzip to match requirement for CTAN
## [1.0.3] - 2020/01/26
### Added
- uninstall instructions in README.md
- installcheck in makefile
- force makefile to be run serial
### Changed
- Switch tarball/zip to include .dtx instead of .sty per CTAN requirement
- Clean up installation instructions in README.md
- Made some changes in the makefile to take better advantage of make
## [1.0.3a] - 2020/01/26
### Added
- Created a separate readme for the distribution
- Created a separate makefile for the distribution
### Changed
- modify the makefile to include .ins in the package files
- modify the makefile to include the new distrubution readme and makefile
- give instructions on using makefile for distribution
- Did a little more reformatting in the README.
## [1.0.3.d] - 2020/01/26
- there was some issues and mixup with tags in github. This is just a version 
number change to get the github tags to show up in the right order 
## [1.0.3.e] - 2020/01/26
### Changed
- add a section on just build instructions into readme
## [1.0.4] - 2020/03/26
### Changes
- kcal appeared to accept a prefix, though it was ignored; remove option for the
macro
- Celcius, Fahrenheit, and Rankine had the ^\circ outside of the ensuremath,
causing problems for text mode. The degree symbol is also typically typeset
with the unit instead of with the number. Correct both of these issues.
- correct version number and file date in dtx and pdf documentation
- Make sure \micro macro is compatable with siunitx
### Added
- Add acknowledgements to documentation
- Add bug reporting section to documentation
- Add prerequisites section to documentation
- Give some explanation of differences to siunitx in introduction
## [1.1.0] - 2020/11/02
### Added
- Added Celsius macro (correct spelling of Celcius). Retained incorrect
spelling for backward compatability.
## [1.2.0] - 2021/03/26
### Added
- Added centigrade macro. 
### Changes
- Fixed some versioning comments
## [1.3.0] - 2026/11/24
### Added
- Added section for volume
- Added macros for liter (liter and l)
- Added the remaining SI units and a large set of cgs, astronomical,
imperial, US customary and historical units (over 200 new unit macros),
grouped by quantity
- Added lower-case and title-case forms of the units (e.g. \newton and
\Newton; \Gilbert, \Oersted, \Maxwell, \Franklin, \Buckingham, \Fermi,
\Roentgen, \Curie, \Rutherford, \Eotvos, \Sverdrup, \Poiseuille and
\Morgan)
- Added all SI prefix macros, including ronna, quetta, ronto and quecto, and
\myria
- Added user-level unit constructors \punit, \punitDeg and \punitVar
- Added \physunitssetup for setting options in the document
- Added options for alternative unit symbols (arcmin, minute, hour, day, year,
au, gram, liter, kcal, Cal, btu, tonTNT, amu, and the imperial area, volume
and length units, among others), combine-slash for the combination units,
and degree-space
- Added named spacing macros (\pThinSpace, \pMediumSpace, \pThickSpace,
\pFullSpace)
- Added mho units, using the font's mho glyph when amssymb or unicode-math is
loaded and a rotated Omega otherwise, with a small gap after a prefix
- Added a table of contents, a section on where to obtain the package, a
license section, an AI usage statement, and attribution for the shear code
used for the upright micro sign (from Bruno Le Floch, used under the LPPL
with his permission)
- Added title-case \Lambert, \Einstein, \Rayleigh and \Talbot
- Added short forms \impgal, \usgal, \floz, \hft (hoppus foot), \htn
(hoppus ton), \hhd and \bbl
- Added combination units \lbft and \lbin (pound-force foot and inch), and
\bps and \Bps (bit and byte per second, with an optional prefix)
- Added the disable-astro-mass-radii option, which leaves \solarmass,
\jupitermass, \earthmass, \moonmass, \solarradius, \jupiterradius,
\earthradius and \moonradius undefined for documents that define their own
- Added combination units \Wh and \Ah (watt hour and ampere hour, with Wh
and Ah options for W·h or Wh, and A·h or Ah) and
\molar (mol/L or mol L^-1, following combine-slash and the liter option),
each with an optional prefix
- Added \bohr and \Bohr, \rydberg and \Rydberg, \hartree and \Hartree
(with a hartree option for E_h or Ha), \solarluminosity, \magnitude,
\raddose, \dobsonunit, and \enzymeunit (with an enzymeunit option for U or
IU)
- Added a Ratios section with \percent (with a percent option: symbol,
percent, or per cent), \permille, \ppm and \ppb
- Added \basepair (with a basepair option: bp, b, or mixed, which gives bp
without a prefix and kb, Mb with one) and \nucleotideunit (nt), both with
prefixes
- Added a Climate and carbon section with \tonneC, \tonneCOtwo and
\tonneCOtwoeq (with a tonneCOtwoeq option for the e or -eq suffix); the
prefix applies to the tonne (GtC, MtCO2e)
- Added the disable option, which leaves any listed commands undefined (e.g.
disable={solarmass, ly}), and the skip-defined option, which leaves commands
that already exist when physunits is loaded unchanged. Commands built from a
disabled command still work
- Added the astro-units-roman option, which sets the letter of the
astronomical masses, radii and solar luminosity in roman (as MNRAS requires)
### Changed
- All unit macros reimplemented with \NewDocumentCommand; each takes
optional prefix, exponent and separator arguments, in that order. Units that
do not take SI prefixes (e.g. \Min, \h) no longer accept a prefix
- Package options are now key-value options (\DeclareKeys); amu, unit-space
and deka replace the old amu-, space- and deka- options
- Requires a LaTeX format dated 2022-11-01 or later; upgreek is no longer
loaded
- \micro is always an upright mu: sheared math italic mu under pdfLaTeX,
\upmu under XeLaTeX and LuaLaTeX
- Default symbol for \tnt is now "ton TNT" (was "ton of TNT")
- \units@separator works as in v1.2: redefining it changes the space before
(and within) every unit. The unit-space option sets it; whichever is done
last takes effect
- Reorganized the documentation: units grouped by quantity, each split into
SI, cgs and semi-SI, and imperial, US customary and historical units
- \sqin, \sqft, \sqyd, \sqmi, \cuin, \cuft, \cuyd and \cumi take an
optional separator argument
- \Nm takes an optional prefix for the newton
- Fixed liter=ell, \ohm, \statohm and \abohm, which printed nothing under
XeLaTeX and LuaLaTeX
- Fixed \Angstrom under XeLaTeX and LuaLaTeX, where unicode-math replaced it
with its own symbol, and the placement of the ring on the angstrom symbol
- disable-astro-mass-radii also leaves \solarluminosity undefined
- Units are defined under internal names and refer to each other by those
names; the public commands are defined at the end of the package. A clash
with an existing command now gives an error that suggests disable or
skip-defined. disable-astro-mass-radii is a shortcut for disable
- The user manual no longer shows the implementation; the change history and
index are still included
- Package options in the documentation are grouped by unit type, in the same
order as the units
- Updated email address to txstate.edu
- Updated the readmes: current description, dependencies, copyright and
email, links to CTAN and GitHub, corrected build commands (run pdflatex or
xelatex on physunits.dtx), sudo for localinstall and localuninstall, and
typo fixes
- makefile: xelatex runs with -interaction=nonstopmode -halt-on-error; clean
also removes the .hd file; the install checks use $(MAKE); installcheck now
reports the copy of physunits.sty that LaTeX will actually use
