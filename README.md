
<!-- README.md is generated from README.Rmd. Please edit that file -->
<!-- badges: start -->
[![Lifecycle: experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental) [![CRAN status](https://www.r-pkg.org/badges/version/nwslR)](https://CRAN.R-project.org/package=nwslR) [![Travis build status](https://travis-ci.org/adror1/nwslR.svg?branch=master)](https://travis-ci.org/adror1/nwslR) <!-- badges: end -->

nwslR
=====

`nwslR` is an R package that contains datasets and analysis functionality for the National Women’s Soccer League (NWSL). Founded in 2013, the NWSL is the United States’ top professional women’s soccer league, featuring players from all over the world. Previously, data regarding the league has been disparate and often difficult to find. The goal of this package is to make it easier for fans and analysts to access and engage with all these data in one place. We're just getting started here; we still have a few [issues](https://github.com/adror1/nwslR/issues) open that we could use some help with! Additionally, if you see anything you'd like added, changed, or updated, please open up a new issue of your own.

Install
-------

You can install the current version of nwslR from GitHub using:

``` r
devtools::install_github("adror1/nwslR")
```

Load
----

``` r
library(nwslR)
```

Available Tables
----------------

`award`: dataset of player awards received each season

`fieldplayer_overall_season_stats`: season-by-season data for each NWSL field player

`franchise`: team names, ids, and locations throughout their history in the league

`game`: dataset of `game_id`s and game results that each correspond to an individual game

`goalkeeper_season_stats`: season-by-season data for each NWSL goalkeeper

`stadium`: historical and current stadium information and statistics

`team_stats_season`: season level statistics for each team from the league's inception through present-day

Example: Player Statistics
--------------------------

``` r
head(nwslR::fieldplayer_overall_season_stats)
#> # A tibble: 6 x 14
#>   person_id season nation pos   team_id    mp starts   min   gls   ast    pk
#>       <int> <chr>  <chr>  <chr> <chr>   <dbl>  <dbl> <dbl> <dbl> <dbl> <dbl>
#> 1       342 2013   " USA" DF    WAS         5      4    NA     0     0     0
#> 2       117 2013   " USA" FW,MF NJ         20     20    NA     3     3     1
#> 3         6 2013   " ESP" FW    WNY        15     14     3     1    NA     0
#> 4       300 2013   " USA" DF,MF KC         22     22  1900     0     5     0
#> 5       202 2013   " USA" DF    POR         4      2   212     0     0     0
#> 6       202 2013   " USA" DF    BOS        11     11   990     0     1     0
#> # … with 3 more variables: p_katt <dbl>, crd_y <dbl>, crd_r <dbl>
```

Example: Team IDs
-----------------

``` r
head(nwslR::franchise, 15)
#> # A tibble: 15 x 5
#>    team_id team_name              city        state season
#>    <chr>   <chr>                  <chr>       <chr>  <dbl>
#>  1 BOS     Boston Breakers        Boston      MA      2013
#>  2 BOS     Boston Breakers        Boston      MA      2014
#>  3 BOS     Boston Breakers        Boston      MA      2015
#>  4 BOS     Boston Breakers        Boston      MA      2016
#>  5 BOS     Boston Breakers        Boston      MA      2017
#>  6 KC      FC Kansas City         Kansas City MO      2013
#>  7 KC      FC Kansas City         Kansas City MO      2014
#>  8 KC      FC Kansas City         Kansas City MO      2015
#>  9 KC      FC Kansas City         Kansas City MO      2016
#> 10 KC      FC Kansas City         Kansas City MO      2017
#> 11 WNY     Western New York Flash Buffalo     NY      2013
#> 12 WNY     Western New York Flash Buffalo     NY      2014
#> 13 WNY     Western New York Flash Buffalo     NY      2015
#> 14 WNY     Western New York Flash Buffalo     NY      2016
#> 15 CHI     Chicago Red Stars      Chicago     IL      2013
```

Functionality
-------------

``` r
#nwslR::get_adv_team_stats() #scrapes and formats hundreds of advanced team statistics from the NWSL website

harris <- nwslR::player_search("Harris", goalkeeper = TRUE)
#> Joining, by = c("person_id", "nation", "pos")
head(harris)
#> # A tibble: 6 x 21
#>   person_id season nation pos   team_id    mp starts   min    ga ga_90 so_ta
#>       <dbl> <chr>  <chr>  <chr> <chr>   <dbl>  <dbl> <dbl> <dbl> <dbl> <dbl>
#> 1     10007 2013   " USA" GK    WAS        18     18  1620    33 1.83    118
#> 2     10007 2014   " USA" GK    WAS        19     19  1710    31 1.63     97
#> 3     10007 2015   " USA" GK    WAS         9      9   810    12 1.33     60
#> 4     10007 2016   " USA" GK    ORL        15     15  1350    20 1.33     74
#> 5     10007 2017   " USA" GK    ORL        13     13  1106     7 0.570    NA
#> 6     10007 2018   " USA" GK    ORL        21     21  1890    31 1.48     NA
#> # … with 10 more variables: saves <dbl>, save_pct <dbl>, w <dbl>, d <dbl>,
#> #   l <dbl>, cs <dbl>, cs_pct <dbl>, crd_y <dbl>, crd_r <dbl>, player <chr>
```

Contributors
------------

-   Arielle Dror
-   Sophia Tannir
