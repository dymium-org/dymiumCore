
<!-- README.md is generated from README.Rmd. Please edit that file -->

<!-- badges: start -->

[![](https://img.shields.io/badge/devel%20version-0.1.6.9000-blue.svg)](https://github.com/dymium-org/dymiumCore)
[![Lifecycle:
maturing](https://img.shields.io/badge/lifecycle-maturing-blue.svg)](https://www.tidyverse.org/lifecycle/#maturing)
[![License: GPL
v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
[![Build
Status](https://travis-ci.org/dymium-org/dymiumCore.svg?branch=master)](https://travis-ci.org/dymium-org/dymiumCore)
[![AppVeyor build
status](https://ci.appveyor.com/api/projects/status/github/dymium-org/dymiumCore?branch=master&svg=true)](https://ci.appveyor.com/project/dymium-org/dymiumCore)
[![Codecov test
coverage](https://codecov.io/gh/dymium-org/dymiumCore/branch/master/graph/badge.svg)](https://codecov.io/gh/dymium-org/dymiumCore?branch=master)
<!-- [![CRAN_Download_Badge](http://cranlogs.r-pkg.org/badges/dymiumCore)](https://CRAN.R-project.org/package=dymiumCore) -->
<!-- badges: end -->

# dymiumCore

<img src="man/figures/dymium-banner.png" align="centre" />

**dymiumCore** is an R package which provides a toolbox for developing a
microsimulation model. While the core focus of the package is for
modelling urban systems, dymium can be easily extended to apply in other
contexts as well.

**:newspaper: News**

  - :tada: [Upcoming release of dymiumCore,
    version 0.1.6.](https://blog.amarin.dev/posts/dymiumcore-version-0-1-6-release/)

# Why another microsimulation framework?

It is true that there is no shortage of open source microsimulation
frameworks, but many of the existing ones often use a platform that
doesn’t support data analysis as good as R, or use a programming
langauge that many modellers may be unfamiliar with. Hence, those
frameworks would not be the first choice for many modellers who are
interested in microsimulation modelling but lack the programming skills
or time to learn a programming langauge that is foreign and has no other
benefits to them. The main philosophy of `dymiumCore` is to use the
power of existing R packages to create functions and classes that are
the basic building blocks of any microsimulation model, in general, and
to allow an entire workflow from data preparation, model estimation,
microsimulation, calibration to visualisation within only the R
environment, where many other frameworks do not offer. This enhances
reproducibility and maintainability of your microsimulation model and
allow others to build on your work more easily. [Read
more…](https://core.dymium.org/articles/why-another-microsim.html)

# Why `dymiumCore`?

  - written in R
  - easy to setup
  - ready-to-use events see
    [dymium-org/dymiumModules](https://github.com/dymium-org/dymiumModules)
  - microsimulation events are modular, sharable and scalable
  - equipped with the basic building blocks for building a
    microsimulation model that is flexible and extensible.
  - can use parameters from various model objects (e.g. `stats::lm`,
    `stats::glm`, `caret::train`, `mlr::train`).

## Installation

You can install directly from GitHub using `remotes::install_github` or
`devtools::install_github`:

``` r
# install.packages("remotes")
remotes::install_github("dymium-org/dymiumCore")
```

Note that, `dymiumCore` is not yet on CRAN.

## Documentation and Tutorials

For documentation and tutorials, please check our website at
<https://core.dymium.org>.

## Available modules

Please visit
[dymium-org/dymiumModules](https://github.com/dymium-org/dymiumModules)
to see the available modules.

## Try `dymiumCore` with an example project

Please visit
[dymium-org/dymiumExampleProject](https://github.com/dymium-org/dymiumExampleProject)
to learn more about this.

## Collaboration

We are open to collaboration on this project. If you are interested,
please email us at amarin at dymium.org.

## Development plan (as of 14th March 2020)

  - [x] **Version 0.1.0**: (21 Jan 2020) Release all the basic building
    blocks for microsimulation modelling.
      - [x] **Version 0.1.6**: Support `mlr` in `transision()` and
        `TransitionClassification`.
      - [ ] Support regression model creation from parameters.
      - [ ] Support `mlr3` and `mlogit` model objects in the Transition
        classes.
  - [ ] **Version 0.2.0**: Implement model-based calibration.
  - [ ] **Version 0.3.0**: Visualisation functions for life-courses,
    spatial data, etc.
  - [ ] **Version 0.4.0**: Integration with dymiumGUI.

## Related open-source frameworks and models

**General-purpose microsimulation frameworks**

  - [LIAM2, Python](https://github.com/liam2/liam2)
  - [JASMINE, Java](http://www.jas-mine.net/)
  - [MicSim,
    R](https://cran.r-project.org/web/packages/MicSim/index.html)
  - [neworder, Python](https://github.com/virgesmith/neworder)
  - [simarioV2, R](https://github.com/kcha193/simarioV2)
  - [JAMSIM, Java](https://github.com/compassresearchcentre/jamsim)

**Multi-agent programmable modeling environment**

  - [NetLogo](https://ccl.northwestern.edu/netlogo/)

**Urban microsimulation land-use models**

  - [UrbanSim, Python](https://github.com/UDST/urbansim)
  - [ILUTE, C\#](https://github.com/TravelModellingGroup/ILUTE)
  - [SILO, Java](https://github.com/msmobility/silo)

## Recommended scholarly articles

To learn more about dynamic microsimulation modelling and some of its
use cases please see these articles.

  - O’Donoghue, C. (2001). Dynamic microsimulation: a methodological
    survey. Brazilian Electronic Journal of Economics, 4(2), 77.
  - Li, J., & O’Donoghue, C. (2013). A survey of dynamic microsimulation
    models: uses, model structure and methodology. International Journal
    of microsimulation, 6(2), 3-55.
  - Rutter, C. M., Zaslavsky, A. M., & Feuer, E. J. (2011). Dynamic
    microsimulation models for health outcomes: a review. Medical
    Decision Making, 31(1), 10-18.
  - GouuAs, K. G., & Kitamura, R. (1992). Travel demand forecasting with
    dynamic microsimulation.
