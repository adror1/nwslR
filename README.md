
<!-- README.md is generated from README.Rmd. Please edit that file -->
nwslR <img src='man/figures/hex-nwslR.png' align="right" height="139" />
========================================================================

<!-- badges: start -->
[![Lifecycle: experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental) [![CRAN status](https://www.r-pkg.org/badges/version/nwslR)](https://CRAN.R-project.org/package=nwslR) [![Travis build status](https://travis-ci.org/adror1/nwslR.svg?branch=master)](https://travis-ci.org/adror1/nwslR) <!-- badges: end -->

nwslR
=====

`nwslR` is an R package that contains datasets and analysis functionality for the National Women’s Soccer League (NWSL). Founded in 2013, the NWSL is the United States’ top professional women’s soccer league, featuring players from all over the world. Previously, data regarding the league has been disparate and often difficult to find. The goal of this package is to make it easier for fans and analysts to access and engage with all these data in one place. We're just getting started here; we still have a few [issues](https://github.com/adror1/nwslR/issues) open where we could use some help! Additionally, if you see anything you'd like added, changed, or updated, please open up a new issue of your own.

This package is currently in the process of changing and updating significantly, so it is suggested that you frequently update it so that you have access to the most recent version.

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

-   `award`: dataset of player awards received each season
-   `fieldplayer_overall_season_stats`: season-by-season data for each NWSL field player
-   `franchise`: team names, ids, and locations throughout their history in the league
-   `game`: dataset of `game_id`s and game results that each correspond to an individual game
-   `goalkeeper_season_stats`: season-by-season data for each NWSL goalkeeper
-   `stadium`: historical and current stadium information and statistics
-   `team_stats_season`: season level statistics for each team from the league's inception through present-day

Example: Player Statistics
--------------------------

``` r
head(nwslR::fieldplayer_overall_season_stats)
#> # A tibble: 6 x 14
#>   person_id season nation pos   team_id    mp starts   min   gls   ast    pk
#>       <int>  <dbl> <chr>  <chr> <chr>   <dbl>  <dbl> <dbl> <dbl> <dbl> <dbl>
#> 1       342   2013 USA    DF    WAS         5      4    NA     0     0     0
#> 2       117   2013 USA    FW,MF NJ         20     20    NA     3     3     1
#> 3         6   2013 ESP    FW    WNY        15     14     3     1    NA     0
#> 4       300   2013 USA    DF,MF KC         22     22  1900     0     5     0
#> 5       202   2013 USA    DF    POR         4      2   212     0     0     0
#> 6       202   2013 USA    DF    BOS        11     11   990     0     1     0
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
adv_team_stats #scraped and formatted dataset of hundreds of advanced team statistics from the NWSL website
adv_player_stats #scraped and formatted dataset of hundreds of advanced player statistics from the NWSL website
```

The above data tables will eventually be deprecated. Please use the functions before, instead.

To use this function, you need to find the `game_id` for a given game.

![These are available in the `game` table (updated periodically throughout the season) or by looking on the NWSL website.](man/figures/game_id_ex.png)

``` r
get_adv_team_stats("utah-royals-vs-washington-spirit-2019-04-20")
get_adv_player_stats("utah-royals-vs-washington-spirit-2019-04-20")
```

``` r
get_events("utah-royals-vs-washington-spirit-2019-04-20")
#>                                        game_id team minute period second   time
#> 1  utah-royals-vs-washington-spirit-2019-04-20  UTA      2      1     41     3'
#> 2  utah-royals-vs-washington-spirit-2019-04-20  UTA      9      1     21    10'
#> 3  utah-royals-vs-washington-spirit-2019-04-20  UTA     28      1     49    29'
#> 4  utah-royals-vs-washington-spirit-2019-04-20  WAS     40      1     24    41'
#> 5  utah-royals-vs-washington-spirit-2019-04-20  UTA     41      1     23    42'
#> 6  utah-royals-vs-washington-spirit-2019-04-20  UTA     44      1      0    44'
#> 7  utah-royals-vs-washington-spirit-2019-04-20  WAS     52      2     38    53'
#> 8  utah-royals-vs-washington-spirit-2019-04-20  UTA     63      2      2    64'
#> 9  utah-royals-vs-washington-spirit-2019-04-20  UTA     70      2     52    71'
#> 10 utah-royals-vs-washington-spirit-2019-04-20  UTA     73      2      2    74'
#> 11 utah-royals-vs-washington-spirit-2019-04-20  WAS     75      2     54    76'
#> 12 utah-royals-vs-washington-spirit-2019-04-20  WAS     83      2     44    84'
#> 13 utah-royals-vs-washington-spirit-2019-04-20  WAS     83      2     59    84'
#> 14 utah-royals-vs-washington-spirit-2019-04-20  UTA     86      2     44    87'
#> 15 utah-royals-vs-washington-spirit-2019-04-20  UTA     87      2     24    88'
#> 16 utah-royals-vs-washington-spirit-2019-04-20  WAS     88      2     30    89'
#> 17 utah-royals-vs-washington-spirit-2019-04-20  UTA     90      2     40 90'+1'
#> 18 utah-royals-vs-washington-spirit-2019-04-20  UTA     90      2     46 90'+1'
#>    play_status          result         shot_type shot_player_name  assist_type
#> 1    open play            miss right footed shot   Christen Press         <NA>
#> 2    open play            goal right footed shot   Lo'eau LaBonta         <NA>
#> 3    open play attempt blocked right footed shot   Christen Press         <NA>
#> 4    open play   attempt saved right footed shot     Mallory Pugh through ball
#> 5    open play            miss  left footed shot   Lo'eau LaBonta         <NA>
#> 6    open play attempt blocked right footed shot     Vero Boquete         <NA>
#> 7    open play            miss  left footed shot    Andi Sullivan         <NA>
#> 8    open play            miss            header    Katie Stengel        cross
#> 9    open play   attempt saved right footed shot   Christen Press         <NA>
#> 10   open play            miss  left footed shot   Christen Press         <NA>
#> 11   open play            miss  left footed shot     Rose Lavelle         <NA>
#> 12   open play   attempt saved  left footed shot     Mallory Pugh         <NA>
#> 13   open play attempt blocked  left footed shot    Megan Crosson         <NA>
#> 14   open play attempt blocked right footed shot   Christen Press        cross
#> 15   open play   attempt saved            header    Rachel Corsie        cross
#> 16   open play attempt blocked  left footed shot     Rose Lavelle         <NA>
#> 17   open play   attempt saved right footed shot    Katie Stengel         <NA>
#> 18   open play attempt blocked right footed shot    Kelley O'Hara         <NA>
#>       assist_player_name        shot_location shot_on_goal_location goal shot
#> 1       Michelle Maemone      outside the box                  <NA>    0    1
#> 2         Christen Press    centre of the box   bottom right corner    1    1
#> 3           Vero Boquete left side of the box                  <NA>    0    1
#> 4           Amy Harrison      outside the box    bottom left corner    0    1
#> 5  Gunnhildur Jonsdottir    centre of the box                  <NA>    0    1
#> 6          Desiree Scott      outside the box                  <NA>    0    1
#> 7            Tori Huster      outside the box                  <NA>    0    1
#> 8  Gunnhildur Jonsdottir    centre of the box                  <NA>    0    1
#> 9          Katie Stengel    centre of the box    centre of the goal    0    1
#> 10        Lo'eau LaBonta      outside the box                  <NA>    0    1
#> 11                  <NA>      outside the box                  <NA>    0    1
#> 12          Rose Lavelle    centre of the box    centre of the goal    0    1
#> 13         Andi Sullivan      outside the box                  <NA>    0    1
#> 14         Kelley O'Hara     very close range                  <NA>    0    1
#> 15        Christen Press    centre of the box    bottom left corner    0    1
#> 16          Mallory Pugh      outside the box                  <NA>    0    1
#> 17          Vero Boquete    centre of the box    centre of the goal    0    1
#> 18                  <NA>      outside the box                  <NA>    0    1
#>    shot_on_goal own_goal
#> 1             0        0
#> 2             1        0
#> 3             0        0
#> 4             1        0
#> 5             0        0
#> 6             0        0
#> 7             0        0
#> 8             0        0
#> 9             1        0
#> 10            0        0
#> 11            0        0
#> 12            1        0
#> 13            0        0
#> 14            0        0
#> 15            1        0
#> 16            0        0
#> 17            1        0
#> 18            0        0
#>                                                                                                                                      action
#> 1                           Christen Press (Utah Royals) right footed shot from outside the box is close, but misses the top right corner. 
#> 2                                    Lo'eau LaBonta (Utah Royals) right footed shot from the centre of the box to the bottom right corner. 
#> 3                                                 Christen Press (Utah Royals) right footed shot from the left side of the box is blocked. 
#> 4                              Mallory Pugh (Washington Spirit) right footed shot from outside the box is saved in the bottom left corner. 
#> 5                                                    Lo'eau LaBonta (Utah Royals) left footed shot from the centre of the box is too high. 
#> 6                                                            Vero Boquete (Utah Royals) right footed shot from outside the box is blocked. 
#> 7                                              Andi Sullivan (Washington Spirit) left footed shot from outside the box misses to the left. 
#> 8                                                        Katie Stengel (Utah Royals) header from the centre of the box misses to the left. 
#> 9                        Christen Press (Utah Royals) right footed shot from the centre of the box is saved in the top centre of the goal. 
#> 10                                        Christen Press (Utah Royals) left footed shot from outside the box is high and wide to the left. 
#> 11 Rose Lavelle (Washington Spirit) left footed shot from outside the box is close, but misses the top left corner from a direct free kick.
#> 12                        Mallory Pugh (Washington Spirit) left footed shot from the centre of the box is saved in the centre of the goal. 
#> 13                                                     Megan Crosson (Washington Spirit) left footed shot from outside the box is blocked. 
#> 14                                                        Christen Press (Utah Royals) right footed shot from very close range is blocked. 
#> 15                                       Rachel Corsie (Utah Royals) header from the centre of the box is saved in the bottom left corner. 
#> 16                                                      Rose Lavelle (Washington Spirit) left footed shot from outside the box is blocked. 
#> 17                            Katie Stengel (Utah Royals) right footed shot from the centre of the box is saved in the centre of the goal. 
#> 18                                                           Kelley O'Hara (Utah Royals) right footed shot from outside the box is blocked.
```

``` r
harris <- nwslR::player_search("Harris", goalkeeper = TRUE)
#> Joining, by = c("person_id", "nation", "pos")
head(harris)
#> # A tibble: 6 x 22
#>   person_id season nation pos   team_id    mp starts   min    ga ga_90 so_ta
#>       <dbl> <chr>  <chr>  <chr> <chr>   <dbl>  <dbl> <dbl> <dbl> <dbl> <dbl>
#> 1     10007 2013   USA    GK    WAS        18     18  1620    33 1.83    118
#> 2     10007 2014   USA    GK    WAS        19     19  1710    31 1.63     97
#> 3     10007 2015   USA    GK    WAS         9      9   810    12 1.33     60
#> 4     10007 2016   USA    GK    ORL        15     15  1350    20 1.33     74
#> 5     10007 2017   USA    GK    ORL        13     13  1106     7 0.570    NA
#> 6     10007 2018   USA    GK    ORL        21     21  1890    31 1.48     NA
#> # … with 11 more variables: saves <dbl>, save_pct <dbl>, w <dbl>, d <dbl>,
#> #   l <dbl>, cs <dbl>, cs_pct <dbl>, crd_y <dbl>, crd_r <dbl>, player <chr>,
#> #   name_other <chr>
```

For further examples and capabilities, please see the [vignette](https://github.com/adror1/nwslR/blob/master/vignettes/nwslR_overview.Rmd)

Contributors
------------

-   [Arielle Dror](https://github.com/adror1)
-   [Sophia Tannir](https://github.com/stannir98)
