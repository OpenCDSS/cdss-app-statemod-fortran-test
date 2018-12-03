# cdss-app-statemod-fortran-test

Colorado's Decision Support Systems (CDSS) StateMod water allocation model tests.

This repository is envisioned to hold functional tests that will validate StateMod software features. 
For example, "small" tests may include:

1. reading model datasets without errors
2. running simple datasets to demonstrate core functionality (natural flows, simulation, etc.)
3. confirming that specific operating rules work

Additionally, "large" tests may include:

1. running entire basin datasets to confirm that interaction of model features work as expected
2. running joined basin datasets

It is also necessary to compare different versions of StateMod, for example:

1. compare 32-bit Lahey executable with 32-bit gfortran executable
2. compare 32-bit gfortran executable with 64-bit gfortran executable
3. compare different StateMod versions with each other

Content will be added to this repository as existing testing approaches are adapted for the
OpenCDSS development environment.
It is challenging to implement tests due to the large size of model output for full datasets.
