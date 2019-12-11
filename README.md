
<!-- README.md is generated from README.Rmd. Please edit that file -->
nwslR
=====

<!-- badges: start -->
[![Lifecycle: experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental) [![CRAN status](https://www.r-pkg.org/badges/version/nwslR)](https://CRAN.R-project.org/package=nwslR) [![Travis build status](https://travis-ci.org/adror1/nwslR.svg?branch=master)](https://travis-ci.org/adror1/nwslR) <!-- badges: end -->

The goal of nwslR is to ...

Installation
------------

You can install the current version of nwslR from GitHub using:

``` r
devtools::install_github("adror1/nwslR")
```

##Load

``` r
library(nwslR)
```

##View Player Statistics

``` r
nwslR::fp_overall_season_stats
# A tibble: 1,491 x 17
   season    Rk Player Nation Pos   Squad   Age  Born    MP Starts   Min   Gls
   <chr>  <dbl> <chr>  <chr>  <chr> <chr> <dbl> <dbl> <dbl>  <dbl> <dbl> <dbl>
 1 data-…     1 Maris… us USA DF    Wash…    25  1987     5      4    NA     0
 2 data-…     2 Danes… us USA FW,MF Sky …    26  1986    20     20    NA     3
 3 data-…     3 Adria… es ESP FW    West…    26  1986    15     14     3     1
 4 data-…     4 Leigh… us USA DF,MF FC K…    26  1986    22     22  1900     0
 5 data-…     5 Jazmy… us USA DF    Port…    23  1990     4      2   212     0
 6 data-…     6 Jazmy… us USA DF    Bost…    23  1990    11     11   990     0
 7 data-…     7 Ashle… NA     GK    Sky …    22  1990     1      0     1    NA
 8 data-…     8 Amy B… us USA DF    West…    22  1990     7      2    NA     0
 9 data-…     9 Laure… us USA DF    Seat…    23  1989    22     22    NA     0
10 data-…    10 Nicol… us USA GK    FC K…    31  1981    20     20  1800    NA
# … with 1,481 more rows, and 5 more variables: Ast <dbl>, PK <dbl>, PKatt <dbl>,
#   CrdY <dbl>, CrdR <dbl>
```

You'll still need to render `README.Rmd` regularly, to keep `README.md` up-to-date.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don't forget to commit and push the resulting figure files, so they display on GitHub!
