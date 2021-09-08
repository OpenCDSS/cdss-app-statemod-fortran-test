# downloads

Downloads folder for model datasets and StateMod executables.

## StateMod Datasets

StateMod datasets are available on the
[CDSS website](https://cdss.colorado.gov/modeling-data/surface-water-statemod).
To determine the download URL, right click on link and use "Copy link address".

The URL will be similar to the following if the dataset is available on the Division of Water Resources (DWR) FTP site.

```
https://dnrftp.state.co.us/CDSS/ModelFiles/StateMod/cm2015_StateMod.zip
```

TSTool command files are available to automate downloading and unzipping datasets.
Download command files have checks to make sure the download is OK before unzipping into the
`test/datasets/*/0-dataset` folder, which is the primary copy of the dataset.

New command files can be created when new datasets are released.

## StateMod Executables

StateMod executables are available on the
[OpenCDSS website](https://opencdss.state.co.us/statemod/).
To determine the download URL, right click on link and use "Copy link address".

TSTool command files are available to automate downloading and unzipping StateMod software.
Download zip files are saved to the `executable-zips` folder and are unzipped into the `executables` folder.
Download command files have checks to make sure the download is OK before unzipping.
If necessary, executables can be saved into the `executables` folder,
for example when testing a new executable created in the development environment.

After unzipping, an executable can be copied into a `test/dataset/*/executable-name/StateMod` folder
to use to run the dataset.

New command files can be created when new executables are released.
