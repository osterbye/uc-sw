# Spiri uC software

This repository holds source for microcontroller firmware used in Spiri car (models CP104 and newer), as well vehicles retrofitted with Spiri ride-sharing cluster technology.

# Toolchain

* Code Composer Studio is used as IDE. HalCoGen is used for generating HAL and FreeRTOS sources
* TI compiler toolchain is used for building, as well as code analysis for MISRA compliance
* CppUTest is used as unit testing framework. On-target testing can be automated with TI DSS
* [FreeRTOS code convention](http://www.freertos.org/FreeRTOS-Coding-Standard-and-Style-Guide.html) is used for all microcontroller code
* FreeRTOS is used as an OS, with possibility of switching to SafeRTOS at later stage

# Directory organization

* Source code directory structure should reflect safety- and non-safety- critical code
* Source code directory structure should separate generated, 3rd party, and our own code

# Repository organization 

* Releases will have separate branches, first release has codename Anvil
* Each developer will have at least one main development branch and a review branch
* Features are developed in their own branches and after code review merged into the release branches
* Releases will be merged into the master branch after release approval
* Releases will be tagged across repositories, with common release names
* Code shared between repositories will be kept in subtree repositories