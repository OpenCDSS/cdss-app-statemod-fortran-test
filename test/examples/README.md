# test/examples

* [Introduction](#introduction)
* [Automated Test Summary](#automated-test-summary)
* [Original Test Description](#original-test-description)

------

## Introduction ##

This folder contains the StateMod example datasets used with documentation,
which have also been used to test software.

Not all examples may have been run recently.
The next section summarizes the test status within this repository.

To run tests, start TSTool from the `scripts/test-statemod.bash` script.
This allows a StateMod executable to be selected to run tests.

Run an individual test by opening and running the TSTool command file in the test folder.
This can be used when troubleshooting a specific issue or new feature.

To create a test suite, open and run the TSTool command file in the `../examples-suite/create/` folder.
To run the test suite, open and run the TSTool command file in the `../examples-suite/run/` folder.
This can be used when running all tests prior to software release.

## Automated Test Summary ##

The following table lists the examples and status in this testing repository.
Ray Bennett provided the file `StateMod Test Files_2021-08-06.zip` via the DWR FTP site
to ensure transfer of the latest version of tests to OpenCDSS effort.
The zip file contains 622MB of files that need to be reviewed so that only test input and
expected results are saved in the repository.

The original test folders from Ray Bennett have been modified as follows:

* renamed folders to lowercase and padded with zeros in order to sort in sequential order,
with 4 digits to allow for up to 9999 tests to be defined
* only the files referenced in the response file have been copied to the test
* all files use lowercase names and base name matching the example
* omitted some folders that will take more work to review
* dynamically-generated output files and binary files are by default ignored from the repository
* legacy `README.txt` files of various names have been merged into `README.md`

Tests listed in the following table that do not have information have not been enabled.

| **Example Test** | **Enabled** | **Description** |
| -- | -- | -- |
| `ex0000` | | |
| `ex0000d` | | |
| `ex0001` | Yes | Demonstrates a simple 8 node network. |
| `ex0001d` | | |
| `ex0002` | | |
| `ex0002d` | | |
| `ex0003` | | |
| `ex0004` | | |
| `ex0005` | | |
| `ex0006` | | |
| `ex0007` | | |
| `ex0008` | | |
| `ex0008b` | | |
| `ex0008bx` | | |
| `ex0009` | | |
| `ex0010` | | |
| `ex0012` | | |
| `ex0013` | | |
| `ex0014` | | |
| `ex0015` | | |
| `ex0016` | | |
| `ex0017` | | |
| `ex0018` | | |
| `ex0019` | | |
| `ex0020` | | |
| `ex0021` | | |
| `ex0022` | | |
| `ex0023` | | |
| `ex0024` | | |
| `ex0025` | | |
| `ex0026` | | |
| `ex0027` | | |
| `ex0028` | | |
| `ex0029` | | |
| `ex0030` | | |
| `ex0031` | | |
| `ex0032` | | |
| `ex0033` | | |
| `ex0034` | | |
| `ex0035` | | |
| `ex0036` | | |
| `ex0037` | | |
| `ex0038` | | |
| `ex0039` | | |
| `ex003d` | | |
| `ex0040` | | |
| `ex0041` | | |
| `ex0042` | | |
| `ex0043` | | |
| `ex0044` | | |
| `ex0045` | | |
| `ex0046` | | |
| `ex0047` | | |
| `ex0048` | | |
| `ex0049` | | |
| `ex004d` | | |
| `ex0050` | | |
| `ex0051` | | |
| `ex0052` | | |
| `ex0053` | | |
| `ex0054` | | |
| `ex0056` | | |
| `ex0057` | | |
| `ex0058` | | |
| `ex0059` | | |
| `ex005d` | | |
| `ex0060` | | |
| `ex0061` | | |
| `ex0062` | | |
| `ex0063` | | |
| `ex0064` | | |
| `ex0065` | | |
| `ex0066` | | |
| `ex0067` | | |
| `ex0068` | | |
| `ex0069` | | |
| `ex0070` | | |
| `ex0071` | | |
| `ex0072` | | |
| `ex0073` | | |
| `ex0074` | | |
| `ex0075` | | |
| `ex0076` | | |
| `ex0077` | | |
| `ex0078` | | |
| `ex0079` | | |
| `ex0080` | | |
| `ex0081` | | |
| `ex0082` | | |
| `ex0083` | | |
| `ex0084` | | |
| `ex0085` | | |
| `ex0086` | | |
| `ex0088` | | |
| `ex0089` | | |
| `ex0091` | | |
| `ex0092` | | |
| `ex0093` | | |
| `ex0094` | | |
| `ex0095` | | |
| `ex0096` | | |
| `ex0097` | | |
| `ex0098` | | |
| `ex0099` | | |
| `ex0100` | | |
| `ex0101` | | |
| `ex0102` | | |
| `ex0103` | | |
| `ex0104` | | |
| `ex0105` | | |
| `ex0106` | | |
| `ex0107` | | |
| `ex0108` | | |
| `ex0109` | | |
| `ex0110` | | |
| `ex0111` | | |
| `ex0112` | | |
| `ex0113` | | |
| `ex0114` | | |
| `ex0115` | | |
| `ex0116` | | |
| `ex0117` | | |
| `ex0118` | | |
| `ex0119` | | |
| `ex0119c1` | | |
| `ex0119c2` | | |
| `ex0120` | | |
| `ex0121` | | |
| `ex0122` | | |
| `ex0123` | | |
| `ex0124` | | |
| `ex0125` | | |
| `ex0126` | | |
| `ex0127` | | |
| `ex0128` | | |
| `ex0129` | | |
| `ex0130` | | |
| `ex0131` | | |
| `ex0132` | | |
| `ex0133` | | |
| `ex0134` | | |
| `ex0135` | | |
| `ex0136` | | |
| `ex0137` | | |
| `ex0138` | | |

## Original Test Description ##

The following is documentation provided by Ray Bennett on 2021-08-06 describing the examples.
Ray Bennett says: "This was never intended to share as a dump and many file formats, etc may be outdated."

All examples need to be reviewed, cleaned up for automation, and, if useful, incorporated into this repository.

* [`Readme.txt`](Readme.txt)
