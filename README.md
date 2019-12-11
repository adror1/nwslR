
<!-- README.md is generated from README.Rmd. Please edit that file -->
<!-- badges: start -->
[![Lifecycle: experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental) [![CRAN status](https://www.r-pkg.org/badges/version/nwslR)](https://CRAN.R-project.org/package=nwslR) [![Travis build status](https://travis-ci.org/adror1/nwslR.svg?branch=master)](https://travis-ci.org/adror1/nwslR) <!-- badges: end -->

nwslR
=====

An R package providing users with NWSL player, team, franchise, and stadium data, as well as functionality to glean further data and information.

Install
-------

You can install the current version of nwslR from GitHub using:

``` r
devtools::install_github("adror1/nwslR")
#> Skipping install of 'nwslR' from a github remote, the SHA1 (b86c2655) has not changed since last install.
#>   Use `force = TRUE` to force installation
```

Load
----

This is a basic example which shows you how to solve a common problem:

``` r
library(nwslR)
```

Available Tables
----------------

`fp_overall_season_stats`: season-by-season data for each NWSL field player

`goalkeeper_season_stats`: season-by-season data for each NWSL goalkeeper

`team_stats_season`: season level statistics for each team from the league's inception through present-day

`franchise`: team names, ids, and locations throughout their history in the league

`stadium`: historical and current stadium information and statistics

Example: Player Statistics
--------------------------

``` r
head(nwslR::fieldplayer_overall_season_stats)
#>   season nation   pos team_id age born mp starts  min gls ast pk p_katt
#> 1   2013    USA    DF     WAS  25 1987  5      4   NA   0   0  0      0
#> 2   2013    USA FW,MF      NJ  26 1986 20     20   NA   3   3  1      1
#> 3   2013    ESP    FW     WNY  26 1986 15     14    3   1  NA  0      1
#> 4   2013    USA DF,MF      KC  26 1986 22     22 1900   0   5  0      0
#> 5   2013    USA    DF     POR  23 1990  4      2  212   0   0  0      0
#> 6   2013    USA    DF     BOS  23 1990 11     11  990   0   1  0      0
#>   crd_y crd_r person_id
#> 1     0     0       344
#> 2     0     0       117
#> 3     2     0         6
#> 4     1     0       300
#> 5     0     0       202
#> 6     0     0       202
```

Example: Team IDs
-----------------

``` r
head(nwslR::franchise, 15)
#>    team_id              team_name        city state season
#> 1      BOS        Boston Breakers      Boston    MA   2013
#> 2      BOS        Boston Breakers      Boston    MA   2014
#> 3      BOS        Boston Breakers      Boston    MA   2015
#> 4      BOS        Boston Breakers      Boston    MA   2016
#> 5      BOS        Boston Breakers      Boston    MA   2017
#> 6       KC         FC Kansas City Kansas City    MO   2013
#> 7       KC         FC Kansas City Kansas City    MO   2014
#> 8       KC         FC Kansas City Kansas City    MO   2015
#> 9       KC         FC Kansas City Kansas City    MO   2016
#> 10      KC         FC Kansas City Kansas City    MO   2017
#> 11     WNY Western New York Flash     Buffalo    NY   2013
#> 12     WNY Western New York Flash     Buffalo    NY   2014
#> 13     WNY Western New York Flash     Buffalo    NY   2015
#> 14     WNY Western New York Flash     Buffalo    NY   2016
#> 15     CHI      Chicago Red Stars     Chicago    IL   2013
```

Functionality
-------------

``` r
nwslR::get_adv_team_stats() #scrapes and formats hundreds of advanced team statistics from the NWSL website
nwslR::get_adv_player_stats() #scrapes and formats advanced individual player stats from the NWSL website
nwslR::player_search() #searches data tables based on player information such as name, nation, or position
```

Contributors
------------

-   Arielle Dror
-   Sophia Tannir
