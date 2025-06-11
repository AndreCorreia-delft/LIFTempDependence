# Temperature Dependence of Fluorescence

[![MATLAB](https://img.shields.io/badge/MATLAB-R2024b-blue?logo=mathworks&logoColor=white)](https://www.mathworks.com/products/matlab.html)
[![License: AGPL v3](https://img.shields.io/badge/License-AGPL%20v3-blue.svg)](https://www.gnu.org/licenses/agpl-3.0)

This repository provides MATLAB (live) scripts for analyzing the **temperature dependence of laser-induced fluorescence (LIF)** signals in gas-phase species, with a particular focus on NO and OH. It simulates excitation and absorption spectra across a defined temperature range and evaluates the temperature sensitivity of selected absorption transitions using simulated flame data.


## Description

The repository contains two MATLAB (live) scripts where the temperature dependence of the absorption spectrum (`tempDependenceABS.mlx`) and fluorescence excitation spectrum (`tempDependenceFLUO.mlx`) are calculated for a single species (e.g., NO, OH). More specifically, the scripts perform the following steps:  

* Loads flame conditions and species concentration profiles.
* Defines a temperature range and calculates the absorption or the fluorescence excitation spectrum for each temperature.
* Filters spectral lines based on laser and detection parameters.
* Calculates the temperature sensitivity ($dI/dT$) of the most intense transitions.
* Outputs the least temperature dependent transitions for experimental targeting.

The final result is a **colored excitation spectrum map** with overlayed labels for the **least temperature sensitive peaks**.


## History

* First public release: May 2025.


## Author(s)

👤 **André Silva Correia**, ![ORCID logo](https://info.orcid.org/wp-content/uploads/2019/11/orcid_16x16.png) [0009-0004-6075-4530](https://orcid.org/0009-0004-6075-4530), [Technische Universiteit Delft]( https://www.tudelft.nl/) – *Author and Maintainer*

[![GitHub](https://img.shields.io/badge/GitHub-Profile-black?style=flat&logo=github)](https://github.com/AndreCorreia-delft)

### Contributors

👤 **Francesca De Domenico**, ![ORCID logo](https://info.orcid.org/wp-content/uploads/2019/11/orcid_16x16.png) [0000-0002-5922-0118](https://orcid.org/0000-0002-5922-0118), [Technische Universiteit Delft]( https://www.tudelft.nl/) – *Reviewer*


👤 **Arvind Gangoli Rao**, ![ORCID logo](https://info.orcid.org/wp-content/uploads/2019/11/orcid_16x16.png) [0000-0002-9558-8171](https://orcid.org/0000-0002-9558-8171), [Technische Universiteit Delft]( https://www.tudelft.nl/) – *Reviewer*


👤 **Francesco Mazza**, ![ORCID logo](https://info.orcid.org/wp-content/uploads/2019/11/orcid_16x16.png) [0000-0003-4406-8034](https://orcid.org/0000-0003-4406-8034), [Technische Universiteit Delft]( https://www.tudelft.nl/) – *Reviewer*


👤 **Leonardo Castellanos**, [Technische Universiteit Delft]( https://www.tudelft.nl/) – *Reviewer*


## Table of Contents

* [Description](#description)
* [History](#history)
* [Author(s)](#authors)
* [Requirements](#requirements)
* [Structure](#structure)
* [Usage](#usage)
* [License](#license)
* [References](#references)
* [Citation](#citation)
* [Would you like to contribute?](#would-you-like-to-contribute)


## Requirements

* MATLAB R2020b or later
* [LIFSIM v4.0 library](https://github.com/LIFSim/LIFSim) (required and initialized via `init.m`)

The MATLAB (live) scripts (.mlx) have run on MATLAB R2025a with the following MATLAB add-ons:
- Signal Processing Toolbox  
- Deep Learning Toolbox  
- Statistics and Machine Learning Toolbox


## Structure

This repository contains the following structure:

```
.
├── LICENSE
├── README.md
├── init.m
├── input-data
│   ├── filters
│   │   ├── NO.LaVision.xlsx
│   │   └── OH.LaVision.xlsx
│   └── gas-compositions
│       └── F_PLIF_OH_NO.mat
├── output-data
│   ├── tempDependenceABS.png
│   └── tempDependenceFLUO.png
│   ├── dIdT_ABS.mat
│   └── dIdT_FLUO.mat
└── src
    ├── tempDependenceABS.mlx
    └── tempDependenceFLUO.mlx
```

The `./src/`directory contains the MATLAB (live) scripts where the temperature dependence of the absorption spectrum (`tempDependenceABS.mlx`) and fluorescence excitation spectrum (`tempDependenceFLUO.mlx`) are calculated for a single species (e.g., NO, OH, ...). 

The `./input-data/` directory contains the filter data and gas-composition data to be provided as input to the MATLAB (live) scripts found in `./src/`. `./input-data/filters/*.xlsx` include the detection filters to be used with the same format that LIFSIM requires (first collumn - wavelength, second collumn - transmissivity). `./input-data/gas-compositions/F_PLIF_OH_NO.mat` includes the following data for a 1D CH4/air free-flame simulation:
- `Tflame` - flame temperature
- `Y_NO` - NO molar concentration 
- `Y_OH` - OH molar concentration 
- `z` - simulation grid in m 
- `phi` - equivalence ratios used for the free-flame simulations (`phi`). 

The `./output-data/` directory contains the expected outputs when running the default settings in the MATLAB (live) scripts. These outputs are also displayed in the MATLAB live scripts themselves. `./output-data/dIdT_ABS.mat` and `./output-data/dIdT_FLUO.mat` contain the data to reconstruct the output:
- `Tset` includes the set of temperatures used 
- `dI` includes the temperature dependence of each excitation lines
- `excWnum` or `absWnum` include wavenumbers (cm-1) used
- `spec` includes the spectrum intensity within the wavenumbers (cm-1) at the different temperatures used
- `excWnum_peak` or `absWnum_peak` include wavenumbers (cm-1) of the evaluated excitation lines
- `spec_peak` includes the spectrum intensity (cm-1) of the evaluated excitation lines at the different temperatures used


## Usage

In order to run the scripts make sure to specify:
- path to where LIFSIM is (`LIFSIM_path`)  
- path to LIFSIM `air+NO.csv` file (`colls_path`) - when installing LIFSim, this file would be located in `LIFSim/input-data/gas-compositions/` directory    
- path to the flame data - e.g., `input-data/gas-compositions/F_PLIF_OH_NO.mat`  
- path to the filter data (`pathFilter`) - e.g., `input-data/filters/NO.LaVision.xlsx`   

When running the scripts with the default provided values for NO, the expected output are the files found in `./output-data/` directory.   


## License

The contents of this repository are licensed under a **GNU Affero General Public License 3.0** (see [LICENSE](LICENSE) file).

Copyright notice:

Technische Universiteit Delft hereby disclaims all copyright interest in the program “LIFTempDependence”. It is a Matlab code for analyzing the temperature dependence of laser-induced fluorescence (LIF) signals in gas-phase species written by the Author(s).  
Henri Werij, Dean of Faculty of Aerospace Engineering, Technische Universiteit Delft.

&copy; 2025, A. Silva Correia.  


## References

A. El Moussawi, S. Karaminejad, J. Menser, W. G. Bessler, T. Dreier, T. Endres, C. Schulz, LIFSim, a modular laser-induced fluorescence code for concentration and temperature analysis of diatomic molecules, Appl. Phys. B 131, p-TBD, (2025), in press.

LaVision Spectral Data: https://www.lavision.de

## Fundings

This code is part of the project file 20312 of the research programme NWO Talent Programme Veni AES 2022 which is (partly) financed by the Dutch Research Council (NWO).

## Citation

If you use this repository in your work, please cite:   
A. Silva Correia (2025) LIFTempDependence. Version 1. 4TU.ResearchData. software. https://doi.org/10.4121/dd222007-8c0f-4cde-a642-5e4580324af6.v1 (DOI will become active upon article publication)


## Would you like to contribute?

Contributions are welcome! Please open an issue or submit a pull request. Feel free to fork the repository and suggest improvements.
