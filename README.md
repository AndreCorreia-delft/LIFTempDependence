# Temperature Dependence of Fluorescence

[![MATLAB](https://img.shields.io/badge/Code*MATLAB*orange)](https://www.mathworks.com/products/matlab.html)

This repository provides MATLAB code for analyzing the **temperature dependence of laser*induced fluorescence (LIF)** signals in gas*phase species, with a particular focus on NO and OH. It simulates excitation spectra across a defined temperature range and evaluates the temperature sensitivity of selected absorption transitions.

## Description

The script performs the following steps:
* Loads flame conditions and species concentration profiles (e.g., NO, OH).
* Defines a temperature range and calculates the fluorescence spectrum for each temperature.
* Filters spectral lines based on laser and detection parameters.
* Calculates the temperature sensitivity (`dI/dT`) of the most intense transitions.
* Outputs the least temperature*dependent transitions for experimental targeting.

The final result is a colored excitation spectrum map with overlayed labels for the least temperature*sensitive peaks.

## History

* First public release: May 2025.

## Authors or Maintainers

* André Silva Correia
  PhD Candidate, Delft University of Technology  
  ([Email](mailto:a.s.correia@tudelft.nl),
  [@AndreCorreia-delft](https://github.com/AndreCorreia-delft),
  [ORCID](https://orcid.org/0009-0004-6075-4530)]

## Table of Contents

* [Description](#description)
* [History](#history)
* [Authors or Maintainers](#authors*or*maintainers)
* [Requirements](#requirements)
* [Structure](#structure)
* [License](#license)
* [References](#references)
* [Citation](#citation)
* [Would you like to contribute?](#would*you*like*to*contribute)

## Requirements

* MATLAB R2020b or later
* [LIFSIM v4.0 library](https://github.com/LIFSim/LIFSim) library (required and initialized via `init.m`)
* Input files:
  * `LIFSim/input-data/gas-compositions/air+NO.csv`
  * `input-data/gas-compositions/F_PLIF_OH_NO.mat`
  * `input-data/filters/NO.LaVision.xlsx`

## Structure

```
.
├── TempDependenceFLUO.mlx
├── TempDependenceABS.mlx
├── init.m
├── input-data
│   ├── gas-compositions
│   │   └── F_PLIF_OH_NO.mat
│   └── filters
│       └── NO.LaVision.xlsx
|       └── OH.LaVision.xlsx
└── README.md
```

## License
<!--
[![License: MIT](https://img.shields.io/badge/License*MIT*yellow.svg)](https://opensource.org/licenses/MIT)

This repository is released under the **MIT License**. See the LICENSE file for details.

© 2025 André Silva Correia. All rights reserved.
-->
## References

A. El Moussawi, S. Karaminejad, J. Menser, W. G. Bessler, T. Dreier, T. Endres, C. Schulz, LIFSim, a modular laser-induced fluorescence code for concentration and temperature analysis of diatomic molecules, Appl. Phys. B 131, p-TBD, (2025), in press.

LaVision Spectral Data: https://www.lavision.de

## Citation

If you want to cite this repository in your research paper, please use the following information:   
        Reference: [Connecting 4TU.ResearchData with Git](https://data.4tu.nl/info/about-your-data/getting-started)
<!--
If you use this code, please cite:
> A.S. Correia, "Temperature Dependence of LIF Excitation Lines for NO and OH", Delft University of Technology, 2025.
-->
## Would you like to contribute?

Contributions are welcome! Please open an issue or submit a pull request. Feel free to fork the repository and suggest improvements.
