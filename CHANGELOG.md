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
## [1.0.4.0] - 2020/03/26
### Changes
- kcal appeared to accept a prefix, though it was ignored; remove option for the
macro
- Celcius, Fahrenheit, and Rankine had the ^\circ outside of the ensuremath,
causing problems for text mode. The degree symbol is also typically typeset
with the unit instead of with the number. Correct both of these issues.
- correct version number and file date in dtx and pdf documentation
- Use dist changelog for distribution.
- Make sure \micro macro is compatable with siunitx
### Added
- Create separate changelog for dist.
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
## [1.3.0] - 2021/11/16
### Added
- Added section for volume
- Added macros for liter (liter and l)

