
<!-- README.md is generated from README.Rmd. Please edit that file -->
nwslR
=====

<!-- badges: start -->
[![Lifecycle: experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental) [![CRAN status](https://www.r-pkg.org/badges/version/nwslR)](https://CRAN.R-project.org/package=nwslR) [![Travis build status](https://travis-ci.org/adror1/nwslR.svg?branch=master)](https://travis-ci.org/adror1/nwslR) <!-- badges: end -->

An R package providing users with NWSL player, team, franchise, and stadium data, as well as functionality to glean further data and information. 

## Install

You can install the current version of nwslR from GitHub using:

``` r
devtools::install_github("adror1/nwslR")
```

## Load

``` r
library(nwslR)
```

## Available Tables

fp_overall_season_stats: season-by-season data for each NWSL field player

goalkeeper_season_stats: season-by-season data for each NWSL goalkeeper

team_stats_season: season level statistics for each team from the league's inception through present-day

franchise: team names, ids, and locations throughout their history in the league

stadium: historical and current stadium information and statistics


## Example: Player Statistics

``` r
nwslR::fieldplayer_overall_season_stats
# A tibble: 1,350 x 16
   season nation pos   team_id   age  born    mp starts   min   gls   ast    pk
   <chr>  <chr>  <chr> <chr>   <dbl> <dbl> <dbl>  <dbl> <dbl> <dbl> <dbl> <dbl>
 1 2013   " USA" DF    WAS        25  1987     5      4    NA     0     0     0
 2 2013   " USA" FW,MF NJ         26  1986    20     20    NA     3     3     1
 3 2013   " ESP" FW    WNY        26  1986    15     14     3     1    NA     0
 4 2013   " USA" DF,MF KC         26  1986    22     22  1900     0     5     0
 5 2013   " USA" DF    POR        23  1990     4      2   212     0     0     0
 6 2013   " USA" DF    BOS        23  1990    11     11   990     0     1     0
 7 2013   " USA" DF    WNY        22  1990     7      2    NA     0    NA     0
 8 2013   " USA" DF    SEA        23  1989    22     22    NA     0     1     0
 9 2013   " USA" MF    NJ         25  1987     7      5    NA     0     0     0
10 2013   " USA" FW    SEA        28  1984    20     11    NA     1     2     0
# … with 1,340 more rows, and 4 more variables: p_katt <dbl>, crd_y <dbl>,
#   crd_r <dbl>, person_id <int>
```

## Functionality
``` r
nwslR::get_adv_team_stats() #scrapes and formats hundreds of advanced team statistics from the NWSL website
nwslR::get_adv_player_stats() #scrapes and formats advanced individual player stats from the NWSL website
nwslR::player_search() #searches data tables based on player information such as name, nation, or position
```

