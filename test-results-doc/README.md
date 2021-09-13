# test-results-doc

This document summarizes dataset test results for different software versions.
This summary can be updated as the software moves forward.
The comparisons that are listed have the most recent version at the top of this document.

* [Approach](#approach)
    + [TSTool Memory](#tstool-memory)
* [17.0.2-gfortran-win-64bit Baseline](#1702-gfortran-win-64bit-baseline)
    + [17.0.2-gfortran-win-64bit Compared to 17.0.2-gfortran-win-32bit](#1702-gfortran-win-64bit-compared-to-1702-gfortran-win-32bit)
    + [17.0.2-gfortran-win-64bit Compared to 17.0.2-lahey-win-32bit](#1702-gfortran-win-64bit-compared-to-1702-lahey-win-32bit)
    + [17.0.2-gfortran-win-64bit Compared to 15.00.01-lahey-win-32bit](#1702-gfortran-win-64bit-compared-to-1500001-lahey-win-32bit)


----------------

## Approach

The approach for testing is generally to compare the current baseline version (the accepted version) with another version,
for example the next version that will be released or a previous version.
In some cases, the baseline is compared with an old version, such as comparing 17.0.2 with 16.00.47,
in order to establish a documented history.

The testing framework was used to run each of the CDSS datasets and compare results, as documented below.

It is expected that as a new version is released,
it will become the baseline to which newer versions are compared.

Scenarios are listed below in the order that they are run.
All indicated scenarios are run and then the comparison is run on each scenario.

### TSTool Memory

If TSTool runs out of memory, for example with `java.lang.OutOfMemoryError: Java heap space` error,
use the `--java-xmx` option to the `statemod-test.bash` script.
Now that TSTool is 64-bit, the value is only limited by computer memory,
so if necessary close other applications, web browser tabs, etc. to free up memory.
All tests were able to run with:

```
./statemod-test.bash --java-xmx=4096m
```

## 17.0.2-gfortran-win-64bit Baseline

These comparisons use the 17.0.2 `gfortran` 64-bit version as the baseline.

### `17.0.2-gfortran-win-64bit` Compared to `17.0.2-gfortran-win-32bit`

**Comparison Summary**:  The 64-bit and 32-bit `gfortran` executables give similar results,
other than some differences in `Control_Right` time series.
Therefore, `gfortran` 64-bit compiler is accepted as the default compiler going forward.


The `17.0.2-gfortran-win-64bit` executable was compared to the `17.0.2-gfortran-win-32bit` executable to confirm
that no significant differences exist between 32-bit compiler and 64-bit compiler.
This confirms that 64-bit architecture is OK for future StateMod work.
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
| `cm2015_StateMod` | `cm2015H` | 33194 | 180 | < 48700 | Differences are for `Control_Right` | smalers |
| `cm2015_StateMod` | `cm2015H2` | 33194 | 183 | < 48700 | Differences are for `Control_Right` | smalers |
| `cm2015_StateMod` | `cm2015B` | 33194 | | | 32-bit and 64-bit executables stopped in Carrpl - [see issue](https://github.com/OpenCDSS/cdss-app-statemod-fortran/issues/74) | smalers |
| `gm2015_StateMod_modified` | `gm2015H` | 29754 | 430 | < 44500 | Differences are for `Control_Right` | smalers |
| `gm2015_StateMod_modified` | `gm2015H2` | 29754 | 227 | < 44520 | Differences are for `Control_Right` | smalers |
| `gm2015_StateMod_modified` | `gm2015B` | 29754 | 487 | < 44400 | Differences are for `Control_Right` | smalers |
| `NP2018_StateMod_modified` | `NP2018H` | 21579 | 141 | < 3750 | Differences are for `Control_Right` | smalers |
| `NP2018_StateMod_modified` | `NP2018B` | 21579 | 382 | < 6705 | Differences are for `Control_Right` | smalers |
| `sj2015_StateMod_modified` | `sj2015H1` | 23894 | 103 | Most are < 720, maximum is 25394 | Differences are for `Control_Right` | smalers |
| `sj2015_StateMod_modified` | `sj2015H2` | 23894 | 86 | Most are < 1600, maximum is 15310 | Differences are for `Control_Right` | smalers |
| `sj2015_StateMod_modified` | `sj2015B` | 23894 | 155 | Most are < 1600, maximum is 14942 | Differences are for `Control_Right` | smalers |
| `SP2016_StateMod_modified` | `SP2016H` | | | | **Does not run - [see issue](https://github.com/OpenCDSS/cdss-app-statemod-fortran/issues/73)** | smalers |
| `wm2015_StateMod_modified` | `wm2015H` | 7399 | 3 | < 370 | Differences are for `Control_Right` for 3 ditches and 5 MSF. | smalers |
| `wm2015_StateMod_modified` | `wm2015B` | 7399 | 34 | < 5050 | Differences are for `Control_Right` | smalers |
| `ym2015_StateMod_modified` | `ym2015H` | 19815 | 86 | Most are < 2500, one is 27362. | Differences are for `Control_Right` | smalers |
| `ym2015_StateMod_modified` | `ym2015H2` | 19815 | 86 | Most are < 2500, one is 9284. | Differences are for `Control_Right` | smalers |
| `ym2015_StateMod_modified` | `ym2015B` | 19815 | 136 | < 24300  | Differences are for `Control_Right` | smalers |

### `17.0.2-gfortran-win-64bit` Compared to `17.0.2-lahey-win-32bit`

**Comparison Summary**:  The 64-bit `gfortran` and 32-bit Lahey executables give similar results,
other than some differences in `Control_Right` time series.
Therefore, `gfortran` 64-bit compiler is accepted as the default compiler going forward.

The `17.0.2-gfortran-win-64bit` executable was compared to the `17.0.2-lahey-win-32bit` executable to confirm
that no significant differences exist between  Lahey and gfortran compiler executables.
This confirms that the `gfortran` compiler is OK for future StateMod work.
The `statemod-17.0.2-lahey-win-32bit.exe` executable was provided by Ray Bennett and copied into the
`downloads/executables/statemod-cdss-17.0.2` folder for use with the testing framework.

Tolerances of 2, 10, 100, and 1000 were used to categorize differences.
If the "Number of Time Series Different" is zero,
It means that the absolute value of all differences was < 2.
The number of time series impacts the run time.

| **Dataset** | **Scenario** | **Total Time Series** | **Number of Time Series Different** | **Magnitude of Differences** | **Comments** | **Who** |
| -- | -- | -- | -- | -- | -- | -- |
| `cm2015_StateMod` | `cm2015H` | 33194 | 175 | < 48700 | Differences are for `Control_Right` | smalers |
| `cm2015_StateMod` | `cm2015H2` | 33194 | 173 | < 48700 | Differences are for `Control_Right` | smalers |
| `cm2015_StateMod` | `cm2015B` | 33194 | | | The 64-bit executable and Lahey executable stopped in Carrpl - [see issue](https://github.com/OpenCDSS/cdss-app-statemod-fortran/issues/74) | smalers |
| `gm2015_StateMod_modified` | `gm2015H` | 29754 | 459 | < 30560 | Differences are for `Control_Right` | smalers |
| `gm2015_StateMod_modified` | `gm2015H2` | 29754 | 238 | < 44520 | Differences are for `Control_Right` | smalers |
| `gm2015_StateMod_modified` | `gm2015B` | 29754 | 480 | < 44400 | Differences are for `Control_Right` | smalers |
| `NP2018_StateMod_modified` | `NP2018H` | 21579 | 124 | < 3750 | Differences are for `Control_Right` | smalers |
| `NP2018_StateMod_modified` | `NP2018B` | 21579 | 380 | < 9640 | Differences are for `Control_Right` | smalers |
| `sj2015_StateMod_modified` | `sj2015H1` | 23894 | 111 | Most are < 1600, maximum is 35395| Differences are for `Control_Right` | smalers |
| `sj2015_StateMod_modified` | `sj2015H2` | 23894 | 107 | Most are < 1600, maximum is 15310 | Differences are for `Control_Right` | smalers |
| `sj2015_StateMod_modified` | `sj2015B` | 23894 | 153 | Most are < 1600, maximum is 14942 | Differences are for `Control_Right` | smalers |
| `SP2016_StateMod_modified` | `SP2016H` | | | | **Does not run - [see issue](https://github.com/OpenCDSS/cdss-app-statemod-fortran/issues/73)** | smalers |
| `wm2015_StateMod_modified` | `wm2015H` | 7399 | 3 | < 370 | Differences are for `Control_Right` | smalers |
| `wm2015_StateMod_modified` | `wm2015B` | 7399 | 35 | < 5050 | Differences are for `Control_Right` | smalers |
| `ym2015_StateMod_modified` | `ym2015H` | 19815 | 115 | < 2500, one is 27362. | Differences are for `Control_Right` | smalers |
| `ym2015_StateMod_modified` | `ym2015H2` | 19815 | 89 | Most are < 2900 , one is 18508. | Differences are for `Control_Right` | smalers |
| `ym2015_StateMod_modified` | `ym2015B` | 19815 | 133 | < 24300 | Differences are for `Control_Right` | smalers |

### `17.0.2-gfortran-win-64bit` Compared to `15.00.01-lahey-win-32bit`

**Comparison Summary**:  TBD

The `17.0.2-gfortran-win-64bit` executable was compared to the `15.00.01-lahey-win-32bit` executable to understand
the magnitude and frequency of differences exist between current `gfortran` bsaeline version and Lahey executable that has been distributed with model datasets.
This provides information about whether additional review should occur
to confirm the 17.0.2 code version.

Tolerances of 2, 10, 100, and 1000 were used to categorize differences.
If the "Number of Time Series Different" is zero,
It means that the absolute value of all differences was < 2.
The number of time series impacts the run time.

| **Dataset** | **Scenario** | **Total Time Series** | **Number of Time Series Different** | **Magnitude of Differences** | **Comments** | **Who** |
| -- | -- | -- | -- | -- | -- | -- |
| `cm2015_StateMod` | `cm2015H` | | | | | smalers |
| `cm2015_StateMod` | `cm2015H2` | | | | | smalers |
| `cm2015_StateMod` | `cm2015B` | | | | The 64-bit executable stopped in Carrpl - [see issue](https://github.com/OpenCDSS/cdss-app-statemod-fortran/issues/74) | smalers |
| `gm2015_StateMod_modified` | `gm2015H` | | | | | smalers |
| `gm2015_StateMod_modified` | `gm2015H2` | | | | | smalers |
| `gm2015_StateMod_modified` | `gm2015B` | | | | | smalers |
| `NP2018_StateMod_modified` | `NP2018H` | | | | | smalers |
| `NP2018_StateMod_modified` | `NP2018B` | | | | | smalers |
| `sj2015_StateMod_modified` | `sj2015H1` | | | | | smalers |
| `sj2015_StateMod_modified` | `sj2015H2` | | | | | smalers |
| `sj2015_StateMod_modified` | `sj2015B` | | | | | smalers |
| `SP2016_StateMod_modified` | `SP2016H` | | | | **The 64-bit executble does not run - [see issue](https://github.com/OpenCDSS/cdss-app-statemod-fortran/issues/73)** | smalers |
| `wm2015_StateMod_modified` | `wm2015H` | | | | | smalers |
| `wm2015_StateMod_modified` | `wm2015B` | | | | | smalers |
| `ym2015_StateMod_modified` | `ym2015H` | | | | | smalers |
| `ym2015_StateMod_modified` | `ym2015H2` | | | | | smalers |
| `ym2015_StateMod_modified` | `ym2015B` | | | | | smalers |