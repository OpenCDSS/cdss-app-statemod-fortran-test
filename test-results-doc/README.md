# test-results-doc

This document summarizes dataset test results for different software versions.
This summary can be updated as the software moves forward.
The comparisons that are listed have the most recent version at the top of this document.

* [Approach](#approach)
* [17.0.2-gfortran-win-64bit Compared to 17.0.0-gfortran-win-32bit](#1702-gfortran-win-64bit-compared-to-1702-gfortran-win-32bit)

----------------

## Approach

The approach for testing is generally to compare the current baseline version (the accepted version) with another version,
for example the next version that will be released.
In some cases, the baseline is compared with an old version, such as comparing 17.0.0 with 16.00.47,
in order to establish a documented history.

The testing framework was used to run each of the CDSS datasets and compare results, as documented below.

It is expected that as a new version is released,
it will become the baseline to which newer versions are compared.

## `17.0.2-gfortran-win-64bit` Compared to `17.0.2-gfortran-win-32bit`

The `17.0.0-gfortran-win-64bit` executable was compared to the `17.0.2-gfortran-win-32bit` executable to confirm
that no significant differences exist between 32-bit compiler and 64-bit compiler.
This allows confirms that 64-bit architecture is OK for future StateMod work.
The 32-bit version was compiled using an ***MSYS2 MinGW 32-Bit*** command shell and
`make statemod_release` build.
The `statemod-17.0.2-gfortran-win-32bit.exe` executable was copied into the
`downloads/executables/statemod-cdss-17.0.2` folder for use with the testing framework.

Tolerances of 2, 10, 100, and 1000 were used to categorize differences.
If the "Number of Time Series Different" is zero,
It means that the absolute value of all differences was < 2.
The number of time series impacts the run time.

| **Dataset** | **Scenario** | **Total Time Series** | **Number of Time Series Different** | **Magnitude of Differences** | **Comments** | **Who** |
| -- | -- | -- | -- | -- | -- | -- |


| `cm2015_StateMod` | `cm2015` | 18864 | 173 | < 150 | | smalers |
| `cm2015_StateMod` | `cm2015B` | 18864 | 103 | < 90 | | smalers |
| `gm2015_StateMod_modified` | `gm2015` | 13200? | | | No BD1 file created for version 14. | smalers |
| `gm2015_StateMod_modified` | `gm2015B` | 13200? | | | No BD1 file created for version 14. | smalers |
| `NP2018_StateMod_modified` | `NP2018` | 10080 | 0 | | | smalers |
| `NP2018_StateMod_modified` | `NP2018B` | 10080 | 0 | | | smalers |
| `sj2015_StateMod_modified` | `sj2015` | 14976 | 201 | < 70 | | smalers |
| `sj2015_StateMod_modified` | `sj2015B` | | | | TSTool has error reading BD1 file.  File seems small.  Corrupt format? | smalers |
| `SP2016_StateMod_modified` | `SP2016` | 26784 | 104 | < 11000 | `0100503_I River Diversion` is largest | smalers |
| `SP2016_StateMod_modified` | `SP2016_Restricted` | 26784 | 1201 | < 11000 | `0100503_I River Diversion` is largest | smalers |
| `wm2015_StateMod_modified` | `wm2015` | 6720 | 18 | < 3 | | smalers |
| `wm2015_StateMod_modified` | `wm2015B` | 6720 | 0 | | | | smalers |
| `ym2015_StateMod_modified` | `ym2015` | 14688| 35 | < 7 | | smalers |
| `ym2015_StateMod_modified` | `ym2015B` | | | | No BD1 file created for version 14. | smalers |
