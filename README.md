# cdss-app-statemod-fortran-test

Colorado's Decision Support Systems (CDSS) StateMod water allocation model software tests.
See the [OpenCDSS StateMod software web page](https://opencdss.state.co.us/opencdss/statemod/)
for more information.

* [Background](#background)
* Test Implementations and Results (links to other documents):
    + [Dataset Test Results Documentation](test-results-doc/README.md) - separate file with summary of test results
    + [Legacy Example Test List](test/examples/README.md) - list of legacy examples that have been added as tests
* [Repository Contents](#repository-contents)
* [Getting Started](#getting-started)
    1. [Set up StateMod Development Environment](#set-up-statemod-development-environment)
    2. [Clone Repository](#clone-repository)
    3. [Install TSTool](#install-tstool)
    4. [`statemod-test.bash` Script](#statemod-testbash-script)
* [Dataset Testing](#dataset-testing)
    + [Dataset Testing Quick Checklist](#dataset-testing-quick-checklist)
    + [Overview of the Dataset Testing Process](#overview-of-the-dataset-testing-process)
        1. [Download Files and Install Datasets and Executables](#download-files-and-install-datasets-and-executables)
        2. [Create New Test Dataset Variant](#create-new-test-dataset-variant)
        3. [Run StateMod to Generate Output](#run-statemod-to-generate-output)
        4. [Create a Comparison](#create-a-comparison)
        5. [Run a Comparison and Visualize Results](#run-a-comparison-and-visualize-results)
    + [Future Dataset Testing Enhancements](#future-dataset-testing-enhancements)
* [Small Examples Testing](#small-examples-testing)
* [Release Notes](#release-notes)

-----------------

## Background

This repository contains tests that help to validate StateMod software features.
Test processing is automated as much as possible and additional automation will be implemented in the future.
Tests consistent of:

1. Full dataset comparisons:
  	1. Used to compare different StateMod versions and ensure reasonable results for full datasets.
  	2. Used to compare the current software with reference (accepted baseline) version.
2. Small tests:
  	1. Examples used with Training.
    2. Specific tests for model features.

The working files for this repository contain full StateMod datasets.
It is recognized that modelers will use separate copies of datasets to perform modeling work independent of software development.
The purpose of the testing repository is to support software development,
not dataset development, although these activities may overlap.
Consequently, the folder structure and processes described in this repository
are focused on software development, not model dataset development.
Version control for model datasets is expected to occur elsewhere,
such as repositories for each dataset.

## Repository Contents

The following explains repository contents.
Dynamic files such as model run output and model executables are not saved
in the repository, as controlled by the main `.gitignore` file and other `.gitignore` files.
Only controlling configuration, scripts, and folder framework are saved in the repository.

```
C:\Users\user\                                 User files on Windows.
/C/Users/user/                                 User files on Git Bash, MinGW.
  cdss-dev/                                    CDSS development work.
    StateMod/                                  StateMod product software development files.
      git-repos/                               Repositories for StateMod.
============= above this line, recommended; below this line repo controls ===========
        cdss-app-statemod-fortran/             StateMod software files.
        cdss-app-statemod-fortran-doc-dev/     StateMod developer's documentation.
        cdss-app-statemod-fortran-doc-user/    StateMod user documentation.
        cdss-app-statemod-fortran-test/        StateMod tests (this repository).
```

Files in this repository are as follows, using the `cm2015` dataset as an example.

```
cdss-app-statemod-fortran-test/                StateMod tests (this repository).
  .gitattriutes                                Repository configuration.
  .gitignore                                   Repository ignored files list.
  README.md                                    This file.
  downloads/                                   Folder where datasets and executables are downloaded.
    *.tstool                                   TSTool command files to download and unzip to test folder.
    datasets/                                  Downloaded dataset zip files from CDSS, etc.
      cm2015_StateMod.zip                      Are unzipped to matching 'test/datasets/*/0-dataset' folder.
    executables/                               Downloaded executable files from CDSS, OpenCDSS,
                                               copies from development folder, etc.
      statemod-17.0.2.gfortran-win-64bit.exe   Executable program, copied to
                                               'test/datasets/*/exes/*/StateMod' folder.
  scripts/                                     Scripts to help with testing.
    statemod-test.bash                         Main script used to manage and run tests.
  test/                                        Main folder for all tests.
    datasets/                                  Folder for all dataset tests.
      cm2015_StateMod/                         For example, Upper Colorado dataset,
                                               using CDSS download file name.
        0-dataset/                             The unzipped dataset files from dataset download - DO NOT MODIFY.
                                               The contents of the folder are copied to other folders.
        comp/                                  Folder for comparisons.
          comp~executable1~executable2/        TSTool command files and output to compare two
                                               dataset variants for model executables.
        exes/                                  Folder containing dataset variants for executables.
          statemod-17.0.2.gfortran-win-64bit/  Copy of '0-dataset' files for an executable.
                                               The folder name matches the StateMod executable name without `.exe`.
            StateMod/                          StateMod dataset main folder.  The Software is run in this folder.
              cm2015.*                         Model dataset files, used as input for the simulation.
              cm2015*.rsp                      Dataset "response file" with configuration information.
              cm2015.B*                        Binary output file, contains time series that are compared.
          statemod-17.0.2gfortran-win-32bit/   Another executable dataset copy.
            StateMod/
              see above
    examples/                                  Tests using based on legacy examples.
      ex*/                                     Folders for separate example tests.
    examples-suite/                            Test suite for 'examples'.
  test-results-doc/                            Test results documentation.
    README.md                                  Manually-created summary of testing results.
  tstool-templates/                            TSTool command file templates.
                                               Files are copied modified on the fly for specific comparisons.
    compare-statemod-runs/                     Command files used to compare full dataset results.
    ts-diff/                                   Command and other files used to compare
                                               and visualize one time series.
```

## Getting Started

This section provides brief instructions for getting started with testing.

### Set up StateMod Development Environment

The StateMod tests are run in a MinGW environment that is the same as used for StateMod development
(and is the same environment that is used for StateCU development and testing).
Therefore, follow the documentation for
[setting up a StateMod development environment](https://opencdss.state.co.us/statemod/latest/doc-dev/dev-new/overview/).

Running tests does not require full development environment.
However, because the MinGW environment is packaged with the Fortran compiler,
installing MinGW is most of the effort.
The MinGW environment provides a Linux environment running on Windows.

Git software should also be installed in order to clone the test repository (next section).

### Clone Repository

It is assumed that the person using this repository has basic Git software understanding and skills
and has configured Git within the MinGW environment,
such as for StateCU and StateMod software development.

To use the test repository, create top-level folders as described in the [`Repository Contents`](#repository-contents) section.
In the `git-repos` folder, run the following in an MSys2 64-bit terminal:

```
git clone https://github.com/OpenCDSS/cdss-app-statemod-fortran-test.git
```

### Install TSTool

The TSTool software is used to perform dataset comparisons.
At least version 14.0.0 should be installed.
See the [OpenCDSS TSTool](https://opencdss.state.co.us/opencdss/tstool/) software web page.

### `statemod-test.bash` Script

The `scripts/statemod-test.bash` script is provided to help with test management.
It helps to enforce the standard folder naming conventions and
performs tasks for new test setup.
It is efficient to use a command line script because
StateMod development uses an MSys2 MinGW environment
to support Fortran development.

To run the script, `cd` to the repository's `scripts` folder and then run:

```
  ./statemod-test.bash
```

The script will present an interactive menu to execute testing tasks,
as described in the sections below.

## Dataset Testing

This section describes how to test StateMod using full datasets.

### Dataset Testing Quick Checklist

The next section [Overview of the Dataset Testing Process](#overview-of-the-dataset-testing-process) provides an overview of the testing process.
The following checklist is an abbreviated list of typical testing workflow.
Long commands are shown but the shorter equivalent can be used in the `statemod-test` menu.

1. Use TSTool to run command files in the `downloads` folder to download StateMod datasets and softare executables.
Downloads only need to be processed if new downloads are available.
2. Run the `scripts/statemod-test.bash` script from a MSys2 64-bit MinGW window.
An interactive menu provides commands to help with testing.
    1. First `cd scripts`.  Then run `./statemod-test.bash`.
    2. Use `lstest`, `lsvariant`, and `lscomp` to list existing tests and comparisons.
    3. If necessary, use `rmtest`, `rmvariant`, and `rmcomp` commands to remove old files, for example to free up disk space.
    4. At any time, use `help command` (where `command` is a menu command) to see a short help note.
    5. Use the `newvariant` command to create a new test dataset variant,
    which involves selecting a dataset and executable.
    6. Use the `runstatemod` command to run the dataset.
    Select the scenarios in the dataset to run.
    7. Use `newcomp` to create a new comparison by selecting two
    test dataset variants.
    This only initializes files for the comparison but does not perform the analysis.
    8. Use the `runcomp` command to run TSTool and create a summary of all differences.
    Select the output files from TSTool results to review differences.
    9. Use the `vheatmap` command to run TSTool to view a heatmap of the differences for one time series.

Repeat steps as necessary based on changes to datasets and executables.

### Overview of the Dataset Testing Process

The following sections describe the overall dataset testing process.
The following terminology is used throughout the repository,
listed in order that drills down into the testing process.

| **Term** | **Description** |
|-- | -- |
| test dataset | The dataset downloaded from CDSS or other source. To avoid confusion, all test dataset folders use the name from the zip file (e.g., `cm2015_StateMod` rather than `cm2015`). If the StateMod dataset packaging changes in the future, the name in the zip file will be used. |
| executable | The executable StateMod program name.  On Windows, executable files have an extension `.exe` and on Linux the extension is omitted.  Executable filenames for recent StateMod versions are verbose (e.g., `statemod-17.0.2-gfortran-win-64bit`) in order to uniquely identify the version and avoid confusion. The naming convention may change in the future, for example as 64-bit becomes the default and there is no need to maintain 32-bit executable. |
| executable version | The StateMod executable program version (e.g., `17.0.2`). | 
| executable variant | A variant of the StateMod executable within the same version, for example 32bit/64bit and optimization level (e.g., may include `o3` or `check` in the filename). | 
| test dataset variant | A copy of the test dataset that reflects an executable variant.  For example, the `0-dataset` folder is copied to the `cm2015_StateMod/exes/statemod-17.0.2-gfortran-win-64bit` folder to create a new test dataset variant. |
| dataset working files | The test dataset (and test dataset variant) `StateMod` folder contains input files and the results of running a simulation. These working files are the same that would be used by a modeler in their modeling environment. The `StateMod` folder may be at the top level of a test dataset zip file or in a sub-folder, depending on how the dataset is packaged in the distribution zip file. |
| dataset response file | StateMod datasets use a "respone file" (`*.rsp`) to provide controlling properties for the dataset and simulation. See "dataset scenario". |
| dataset scenario | A test dataset `StateMod` folder typically contains more than one scenario corresponding to multiple response file names.  For example, the `cm2015H` scenario (`cm2015H.rsp`) corresponds to historical data and the `cm2015B` scenario (`cm2015B.rsp`) corresponds to baseline conditions.  The scenarios are consistent with StateCU model scenarios that follow similar naming conventions. |
| comparison | The results from comparing two test dataset variants. The `comps` folder under a test dataset contains comparisons, using a folder name `datasetvariant~datasetvariant2` for comparison results (e.g., `cm2015_StateMod/comps/statemod-17.0.2-gfortran-win-64bit~statemod-17.0.2-gfortran-win-32bit`). |
| binary output file | StateMod writes time series output to `*.b*` file extension files, which contains time series input and output. These time series are the data of interest when comparing results. |
| time series comparison | The comparison of two dataset variants focuses on comparing the time series from the binary output files.  The TSTool software is used to compare matching time series from two dataset variants and differences are noted in the comparison output files. Comparisons are made using criteria such as tolerance in order to ignore noise such as roundoff. |
| output file comparison | It is also possible to compare output text files, such as StateMod report files.  This approach is not currently implemented in StateMod full dataset tests because time series comparison provides a more granular result. |

Although it may be ideal to perform as many comparisons as possible to confirm software performance and results,
the number of permutations requires time resources, which has a cost.
For example, consider the following files necessary to complete a single comparison of two dataset variants (two model executables)
and each datasets scenarios (`cm2015H` and `cm2015B`), which yields 4 comparisons:

```
test/
  datasets/
    cm2015_StateMod/
      exes/
        statemod-17.0.2-gfortran-win-64bit/
          StateMod/
            cm2015H.rsp -> cm2015H.b*
            cm2015B.rsp -> cm2015B.b*
        statemod-17.0.2-gfortran-win-32bit/
          StateMod/
            cm2015H.rcp -> cm2015H.b*
            cm2015B.rcp -> cm2015B.b*
      comps/
        statemod-17.0.2-gfortran-win-64bit~statemod-14.0.2-gfortran-win-32bit/
          results/
            cm2015-ts-diff.*        (results of comparing cm2015.B* time series)
```

Although a number of permutations should always be run before a software release
as part of a release checklist,
it is likely that a software developer will
focus on a dataset of interest in day-to-day work,
for example a dataset that contains features relevant to current development,
such as specific operations within a basin, groundwater, consumptive use method, etc.

Comparing full published datasets and their scenarios provides check-off for major milestones,
such as migrating from 32-bit to 64-bit compiler,
and making sure there are no major bugs in software updates.

StateMod datasets include options in the control file (`*.ctl`) that can be used to vary the analysis.
This testing framework does not currently try to exercise those options on full datasets.
Smaller tests can be created to verify specific software features.

The following sections describe the mechanics of performing testing.
Note that once the folder structure has been established,
test datasets can be deleted and recreated as appropriate,
and updated files can be copied into the folders as appropriate.
For example, during active software development,
a new executable can be copied into dataset variant folder's `StateMod` folder
rather than recreating the entire dataset unzip process.

#### Download Files and Install Datasets and Executables

**Execute this step when new versions of datasets and executables are available.**

This repository contains the `downloads` folder and TSTool command files
to download StateMod datasets from standard CDSS web locations.
Download files are large, dynamic, and are "gitignored" from the repository.
Therefore, the files must be downloaded to use in testing.

New downloads should occur when a new dataset or model executable needs to be tested.
If working in the development environment, model executables can be copied from
the `cdss-app-statemod-main/src/main/fortran` folder to the `downloads/executables` folder.
Executables can also be copied from CDSS or OpenCDSS websites, or other location.

The TSTool command files download and install the dataset files into the
`test/datasets/*/0-dataset` folder, for example
`test/datasets/cm2015_StateMod/0-dataset`.
The dataset files are then available to copy into folders for an executable,
to run for testing.
The `0-dataset` files should not be modified.

#### Create New Test Dataset Variant

**Execute this step when a new executable comparison is necessary.**

The previous step creates a `0-dataset` folder that is copied to create a test dataset.
A test dataset is referred to as a "variant" because it contains a
specific StateMod executable variant with properties:

* StateMod version (e.g., `17.0.2`)
* compiler (e.g., `gfortran` or `Lahey`)
* compiler options (e.g., `check` and `o3`)
* 32/64-bit

Run the `statemod-test.bash` script and use the `newvariant` command to
initialize each test dataset of interest, which includes a selected dataset.
The selected executable is copied to the dataset `StateMod` folder.
A separate folder is necessary for each variant to fully isolate the dataset from another executable.
This ensures that there is no mixing of test results.

#### Run StateMod to Generate Output

**Execute this step when a new dataset or StateMod executable has been installed.**

The StateMod executable in the test dataset is run using one of the following methods:

1. Use the `statemod-test.bash` script's `runstatemod` command to select and run a dataset.
2. To run from the command line, change to the `StateMod` folder in a command line window.
Run the executable in the folder as per normal StateMod conventions.

#### Create a Comparison

**Execute this step to create a new comparison, for example when new executable is available.**

The StateMod output from the previous step is used to compare the output
of one test dataset variant with another.
Use the `statemod-test.bash` script's `newcomp` command to create a new comparison.
This creates a folder in the dataset named `comp/variant1~variant2`
(e.g., `statemod-17.0.2-gfortran-win-64bit~statemod-17.0.2-gfortran-win-32bit`),
which contains a comparison of the two datasets.
Note that a tilde character (`~`) is used to separate the executable names.

TSTool command files are used to compare the binary output files,
which form the bulk of the results.

#### Run a Comparison and Visualize Results

**Execute this step frequently to (re)create comparison and review results.
For example, this can be run during development to evaluate how changes in software are impacting simulations.**

Use the `statemod-test.bash` script's `runcomp` command to create a comparison.
Output text files can be used to review the frequency and magnitude of differences.

Use the `vheatmap` command to view the differences for a specific time series as a heatmap.
The TSTool graph allows interactively reviewing the date and magnitude of differences.

### Future Dataset Testing Enhancements

Initial implementation of the testing framework has focused on implementing a structured process for testing
and establishing conventions for consistency.
Although the framework includes some automation,
the process does currently require some interactive tasks and review
using the `test-statemod.bash` script.
The existing testing framework features can be leverated to increase automation.

## Small Examples Testing

In addition to tests that use full datasets,
small tests are implemented using examples.  See the
[Developer Documentation Testing](https://opencdss.state.co.us/tstool/latest/doc-dev/dev-tasks/testing/testing/)
documentation for details.

## Release Notes

The following are release notes for the StateMod testing framework,
which mainly involves changes to the `statemod-test.bash` script.

| **Version** | **Release Notes** |
| -- | -- |
| 1.1.0 | Add small (example) tests using TSTool. |
| 1.0.0 | Initial version of testing framework. |