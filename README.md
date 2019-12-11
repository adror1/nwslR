
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
#> Skipping install of 'nwslR' from a github remote, the SHA1 (58aa23b8) has not changed since last install.
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
nwslR::fieldplayer_overall_season_stats
#>      season nation   pos team_id  age born mp starts  min gls ast pk
#> 1      2013    USA    DF     WAS   25 1987  5      4   NA   0   0  0
#> 2      2013    USA FW,MF      NJ   26 1986 20     20   NA   3   3  1
#> 3      2013    ESP    FW     WNY   26 1986 15     14    3   1  NA  0
#> 4      2013    USA DF,MF      KC   26 1986 22     22 1900   0   5  0
#> 5      2013    USA    DF     POR   23 1990  4      2  212   0   0  0
#> 6      2013    USA    DF     BOS   23 1990 11     11  990   0   1  0
#> 7      2013    USA    DF     WNY   22 1990  7      2   NA   0  NA  0
#> 8      2013    USA    DF     SEA   23 1989 22     22   NA   0   1  0
#> 9      2013    USA    MF      NJ   25 1987  7      5   NA   0   0  0
#> 10     2013    USA    FW     SEA   28 1984 20     11   NA   1   2  0
#> 11     2013    CAN    DF      NJ   28 1984  3      0   NA   0   0  0
#> 12     2013    USA    MF     CHI   35 1977  2      1  123   0   0  0
#> 13     2013    USA DF,FW      NJ   22 1990  1      0   NA   0   0  0
#> 14     2013    USA DF,MF      KC   27 1985 22     22 1980   0   2  0
#> 15     2013    USA DF,MF     BOS   21 1991 20     16 1408   3   1  0
#> 16     2013    USA    FW     CHI   21 1991  6      5  372   2   0  0
#> 17     2013    JAM    FW      KC   21 1991  1      0    4   0   0  0
#> 18     2013    JAM    FW     SEA   21 1991  7      4   NA   0   0  0
#> 19     2013    USA    MF     CHI   29 1984 18     17 1500   5   4  0
#> 20     2013    CAN    DF     WAS   29 1983  8      8   NA   0   0  0
#> 21     2013    TRI    FW     SEA   24 1988  3      2   NA   0   0  0
#> 22     2013    USA    DF     SEA   26 1986  4      4   NA   0   0  0
#> 23     2013    MEX    FW     SEA   22 1990  7      3   NA   0   0  0
#> 24     2013    MEX    FW      KC   22 1990 11      8  682   5   0  0
#> 25     2013    USA DF,FW     SEA   24 1988 20     14   NA   0   0  0
#> 26     2013    AUS    FW      NJ   28 1984 16     15   NA   5   2  0
#> 27     2013    USA DF,MF     SEA   23 1989 17     11   NA   0   0  0
#> 28     2013    USA DF,FW     WNY   21 1991 12      4    2   1  NA  0
#> 29     2013    MEX    FW     CHI   34 1978 16      9  710   2   0  0
#> 30     2013    USA    DF     POR   28 1984 19     19 1666   1   1  0
#> 31     2013    USA DF,MF     BOS   21 1991 10      6  565   0   0  0
#> 32     2013    USA DF,MF     POR   24 1988 10     10  900   0   0  0
#> 33     2013    AUS    MF     SEA   19 1993  6      4   NA   0   0  0
#> 34     2013    USA    DF     POR   30 1982  3      0   40   0   0  0
#> 35     2013    USA DF,MF     BOS   21 1991 11      2  370   0   0  0
#> 36     2013    USA    MF      KC   23 1989 16     10  896   1   0  0
#> 37     2013    WAL    MF     SEA   26 1987 21     21   NA   4   0  0
#> 38     2013    AUS DF,FW      NJ   18 1994 15     15   NA   0   1  0
#> 39     2013    USA DF,FW     CHI   24 1988  4      4  291   0   0  0
#> 40     2013    USA FW,MF     POR   23 1989 21      7  997   4   0  0
#> 41     2013    USA    MF      NJ   22 1990 22     21   NA   1   6  0
#> 42     2013    USA    FW      KC   23 1989  1      0   11   0   0  0
#> 43     2013    GER    DF     CHI   34 1978 16     16 1440   2   1  2
#> 44     2013    MEX FW,MF     CHI   25 1988  2      2   93   0   0  0
#> 45     2013    CAN    DF     WAS   27 1985 14     14   NA   0   1  0
#> 46     2013    USA    MF      KC   25 1987  1      0    1   0   0  0
#> 47     2013    USA    DF      NJ   22 1990 22     22   NA   1   1  0
#> 48     2013    GER    FW     CHI   34 1978 16     14 1295   3   1  0
#> 49     2013    USA    MF     WNY   22 1990  2      0   NA   0  NA  0
#> 50     2013    USA FW,MF     BOS   28 1985  1      0   15   0   1  0
#> 51     2013    USA FW,MF     POR   28 1985  4      1   67   0   0  0
#> 52     2013    USA    MF     POR   24 1988  7      7  630   0   3  0
#> 53     2013    USA    DF     CHI   26 1986 14     14 1245   0   1  0
#> 54     2013    USA FW,MF      KC   23 1989 17     13 1030   0   0  0
#> 55     2013    USA FW,MF     WNY   23 1989  6      3   NA   1  NA  0
#> 56     2013    USA    DF     WAS   21 1991 11      6   NA   0   0  0
#> 57     2013    USA FW,MF      KC   25 1987 18     18 1620  12   9  1
#> 58     2013    USA    FW     BOS   21 1991  4      0   26   0   0  0
#> 59     2013    USA FW,MF     CHI   22 1991  9      4  471   3   1  0
#> 60     2013    USA    MF     WNY   28 1984 14     11   NA   1  NA  0
#> 61     2013    USA    MF     WAS   23 1989 21     21   NA   1   0  0
#> 62     2013    CMR    DF     WNY   24 1988 22     22   NA   0  NA  0
#> 63     2013    USA DF,MF      NJ   21 1991 22     22   NA   0   2  0
#> 64     2013    USA DF,FW      KC   22 1990 22      6  670   4   1  0
#> 65     2013    USA    DF      KC   25 1987  7      2  207   0   0  0
#> 66     2013    USA    MF     POR   27 1985 15      9  762   0   1  0
#> 67     2013    AUS FW,MF     WNY   19 1993 19     17 1440   5  NA  0
#> 68     2013    USA    MF     WAS   21 1991 11      6   NA   0   0  0
#> 69     2013    USA    DF     BOS   23 1989 21     21 1862   0   1  0
#> 70     2013    USA    DF     WNY   25 1987 21     21    3   4  NA  0
#> 71     2013    USA DF,MF     WAS   28 1984 18     16   NA   1   0  0
#> 72     2013    CAN    MF     SEA   24 1988 21     19   NA   3   0  3
#> 73     2013    USA    FW     SEA   24 1988  9      4   NA   0   1  0
#> 74     2013    CAN FW,MF     BOS   20 1992  6      1  163   1   0  0
#> 75     2013    CAN FW,MF     CHI   20 1992 10      9  800   1   1  0
#> 76     2013    USA    FW     BOS   22 1990 19     19 1694  11   2  0
#> 77     2013    USA    MF     WAS   32 1980 21     21   NA   1   2  0
#> 78     2013    USA    DF      NJ   22 1990  7      1   NA   0   0  0
#> 79     2013    USA    MF     WNY   30 1982 15     14    8   0  NA  0
#> 80     2013    USA DF,MF     BOS   30 1982 22     21 1897   2   0  0
#> 81     2013    USA    DF     CHI   25 1987 18     17 1478   1   1  0
#> 82     2013    USA    MF     POR   25 1987 22     22 1956   3   3  0
#> 83     2013    USA    MF      KC   23 1989  4      3  275   1   1  1
#> 84     2013    USA    MF      NJ   23 1989 21     12   NA   4   0  0
#> 85     2013    USA    MF      NJ   28 1984 20     19   NA   0   0  0
#> 86     2013    USA DF,FW     POR   24 1988 22     22 1871   0   1  0
#> 87     2013    USA    FW     CHI   26 1986 20     14 1206   3   2  0
#> 88     2013    CAN    MF     WAS   28 1984 19     19   NA   8   3  4
#> 89     2013    USA DF,MF      KC   22 1990 22     19 1738   2   3  0
#> 90     2013    USA FW,MF     CHI   23 1989 18      8  901   4   0  0
#> 91     2013    CAN    DF     WNY   21 1991  1      0   NA   0  NA  0
#> 92     2013    USA    FW     WAS   22 1990 21     12   NA   2   0  0
#> 93     2013    USA    FW     CHI   24 1988  9      3  323   0   1  0
#> 94     2013    USA    FW     SEA   24 1988  7      6   NA   3   1  0
#> 95     2013    USA    DF     BOS   26 1986 21     21 1890   0   0  0
#> 96     2013    USA DF,MF     SEA   21 1991  6      4   NA   0   0  0
#> 97     2013    USA    DF     BOS   22 1990  1      1   90   0   0  0
#> 98     2013    USA DF,MF      KC   21 1991 20     20 1784   1   0  0
#> 99     2013    USA    FW     WAS   21 1991  7      1   NA   0   0  0
#> 100    2013    USA    FW     POR   23 1989 18     18 1525   8   5  1
#> 101    2013    CAN    DF     BOS   28 1984  5      1   76   0   0  0
#> 102    2013    CAN    DF     CHI   28 1984  5      4  363   0   0  0
#> 103    2013    USA    MF     SEA   22 1990 22     22   NA   3   5  0
#> 104    2013    USA    MF      NJ   25 1987  3      2   NA   0   0  0
#> 105    2013    USA    DF      KC   22 1990  1      0    1   0   0  0
#> 106    2013    MEX FW,MF     SEA   22 1990 11      8   NA   1   1  0
#> 107    2013    MEX FW,MF      KC   22 1990  7      1  155   0   0  0
#> 108    2013    USA DF,FW      NJ   24 1988 12     10   NA   0   3  0
#> 109    2013    USA DF,MF     POR   29 1983  4      1  141   0   0  0
#> 110    2013    USA FW,MF     BOS   28 1985 20     20 1734   5   6  1
#> 111    2013    MEX    FW      NJ   26 1987 16      9   NA   8   2  0
#> 112    2013    USA    FW     WAS   22 1990 22     21   NA   1   2  0
#> 113    2013    USA    MF     CHI   29 1983 18     18 1550   1   0  0
#> 114    2013    USA FW,MF     SEA   30 1982  3      0   NA   0   0  0
#> 115    2013    USA    DF      NJ   37 1975 20     20   NA   0   0  0
#> 116    2013    GER    FW     WAS   34 1978 13     12   NA   1   0  0
#> 117    2013    USA    DF     WAS   22 1990  8      8   NA   0   0  0
#> 118    2013    CAN    DF     CHI   21 1991 19     16 1531   0   1  0
#> 119    2013    USA    DF     POR   23 1989  4      1  159   0   0  0
#> 120    2013    MEX    MF      NJ   20 1992 10      5   NA   0   0  0
#> 121    2013    USA FW,MF     SEA   27 1985 12     11   NA   5   1  0
#> 122    2013    USA DF,MF     SEA   23 1989 17     17   NA   0   2  0
#> 123    2013    USA    DF     WNY   25 1987 22     22   NA   2  NA  0
#> 124    2013    USA    MF     WAS   21 1991 20     19   NA   0   0  0
#> 125    2013    CAN FW,MF     WNY   23 1989 13      0    1   0  NA  0
#> 126    2013    MEX DF,MF     SEA   29 1983  7      4   NA   0   0  0
#> 127    2013    USA    DF     WNY   30 1982 18     18   NA   3  NA  0
#> 128    2013    USA    MF     WNY   24 1988 21     20   NA   0  NA  0
#> 129    2013    ENG    FW     BOS   24 1988 22     21 1913   5   7  0
#> 130    2013    USA    DF     CHI   25 1987 18     14 1316   3   1  0
#> 131    2013    USA    DF      KC   27 1985 19     19 1710   0   1  0
#> 132    2013    CAN    MF      NJ   24 1988 19     18   NA   7   1  1
#> 133    2013    USA    FW     BOS   24 1988 20     14 1080   2   1  0
#> 134    2013    CAN    MF      KC   25 1987 20     20 1800   0   0  0
#> 135    2013    CAN DF,FW      KC   29 1983 19     19 1633   0   0  0
#> 136    2013    USA    MF     POR   21 1991 19     17 1416   5   2  0
#> 137    2013    USA    FW     POR   22 1990  4      0   31   0   0  0
#> 138    2013    AUS    FW     BOS   21 1991 17     11 1068   3   3  0
#> 139    2013    CAN FW,MF     POR   29 1983 20     20 1783   8   2  2
#> 140    2013    USA DF,MF     CHI   29 1983 20     18 1577   1   4  0
#> 141    2013    USA    FW     WAS   22 1990 17      6   NA   0   1  0
#> 142    2013    USA    FW     SEA   23 1989  6      4   NA   1   0  0
#> 143    2013    USA    FW     WAS   23 1989  6      2   NA   0   0  0
#> 144    2013    USA    DF      NJ   22 1990 14      4   NA   0   0  0
#> 145    2013    USA    DF     WAS   23 1989 16      9   NA   0   0  0
#> 146    2013    USA FW,MF      KC   21 1991 21     16 1453   6   4  0
#> 147    2013    USA    DF     POR   27 1985 20     20 1800   0   2  0
#> 148    2013    AUS DF,MF     CHI   29 1984 17     13 1195   0   2  0
#> 149    2013    USA    FW     WNY   32 1980 19     19   11   8  NA  2
#> 150    2013    USA FW,MF     POR   24 1988 11     10  776   1   2  0
#> 151    2013    USA    FW     POR   29 1983 10      5  522   1   1  0
#> 152    2013    USA    MF     WAS   23 1989  8      8   NA   0   0  0
#> 153    2013    USA    MF     WNY   23 1989 10      0   NA   0  NA  0
#> 154    2013    USA DF,MF     POR   23 1989 16      6  602   1   1  0
#> 155    2013    USA    DF     BOS   30 1982 22     22 1978   1   2  0
#> 156    2013    CAN DF,FW     BOS   30 1982 14     11  913   2   1  0
#> 157    2013    USA FW,MF     WAS   21 1991  6      2   NA   0   0  0
#> 158    2013    USA    DF      KC   22 1990  4      2  182   0   0  0
#> 159    2013    USA    DF     POR   23 1989 22     22 1944   0   0  0
#> 160    2013    USA    MF     SEA   24 1988 21     19   NA   1   1  0
#> 161    2013    NOR    MF     BOS   28 1984  4      1   68   0   0  0
#> 162    2013    MEX FW,MF     WAS   29 1983 11      5   NA   1   1  0
#> 163    2013    USA    MF     WNY   30 1982  3      2   NA   0  NA  0
#> 164    2013    USA    MF     WNY   26 1986 20     20 1706   0  NA  0
#> 165    2013    CAN    DF     SEA   25 1987  7      6   NA   0   0  0
#> 166    2014    MEX    FW     POR   27 1987  2      0   15   0   0 NA
#> 167    2014    USA FW,MF     WAS   27 1986 13      9  802   1   1 NA
#> 168    2014    ESP    FW     WNY   27 1986 19     12 1195   3   4 NA
#> 169    2014    AUS    DF     WNY   19 1994  4      2  258   0   0 NA
#> 170    2014    USA DF,FW     WAS   27 1986 10      2  235   0   0 NA
#> 171    2014    USA DF,MF      KC   27 1986 23     23 2012   0   2 NA
#> 172    2014    USA    DF     BOS   24 1990 12      9  778   0   0 NA
#> 173    2014    USA    MF     WAS   27 1986 22     17 1562   1   1 NA
#> 174    2014    USA    DF     WNY   23 1990 19      9  886   0   0 NA
#> 175    2014    USA    DF     SEA   24 1989 23     22 1898   0   0 NA
#> 176    2014    ESP    FW     WNY   29 1984 21      9  837   4   1 NA
#> 177    2014    USA    MF     HOU   26 1987  1      1   23   0   0 NA
#> 178    2014    USA    FW      KC   29 1984 13      8  598   1   2 NA
#> 179    2014    ESP FW,MF     POR   26 1987 15     15 1335   4   6 NA
#> 180    2014    USA    MF     CHI   36 1977  5      4  245   0   0 NA
#> 181    2014    USA    DF     SEA   23 1990  2      0   17   0   0 NA
#> 182    2014    USA    FW     CHI   21 1992  8      3  238   1   1 NA
#> 183    2014    USA DF,MF     POR   23 1991 20     19 1598   1   2 NA
#> 184    2014    USA DF,MF      KC   28 1985 24     24 2087   1   3 NA
#> 185    2014    USA DF,MF     SEA   22 1991 15      6  588   0   1 NA
#> 186    2014    AUT    FW     HOU   26 1987 17     15  978   4   1 NA
#> 187    2014    USA    FW     CHI   22 1991 19     10 1086   2   0 NA
#> 188    2014    AUS    DF     POR   20 1994 14     13 1141   0   5 NA
#> 189    2014    USA    MF     CHI   30 1984 23     22 2003   5   0 NA
#> 190    2014    USA    DF     SEA   27 1986 21     20 1776   0   1 NA
#> 191    2014    USA    DF     WAS   28 1985 10      8  740   0   0 NA
#> 192    2014    MEX    FW     WAS   23 1990 10      4  408   0   0 NA
#> 193    2014    USA    MF     BOS   25 1989 16      6  679   0   0 NA
#> 194    2014    USA DF,FW     SEA   25 1988 15      8  768   0   1 NA
#> 195    2014    AUS    FW     WAS   29 1984 11      9  794   1   4 NA
#> 196    2014    AUS    FW     BOS   29 1984  6      5  448   0   1 NA
#> 197    2014    USA FW,MF     BOS   22 1991  1      0    9   0   0 NA
#> 198    2014    USA DF,MF     SEA   24 1989 18      9  859   0   0 NA
#> 199    2014    USA    MF     CHI   21 1992 23     19 1782   1   3 NA
#> 200    2014    USA    DF     HOU   21 1992 13     11 1080   1   1 NA
#> 201    2014    USA    MF      KC   25 1988  1      0   52   0   0 NA
#> 202    2014    USA DF,MF     WAS   21 1992 21     18 1488   0   3 NA
#> 203    2014    USA    DF     WNY   26 1987 22     19 1739   0   1 NA
#> 204    2014    USA DF,MF     HOU   25 1988 23     23 2070   0   2 NA
#> 205    2014    AUS    MF     CHI   20 1993 10      6  633   2   2 NA
#> 206    2014    USA FW,MF     HOU   21 1992  5      1  206   0   0 NA
#> 207    2014    USA    DF     HOU   26 1987 11     11  978   0   0 NA
#> 208    2014    NZL DF,FW     CHI   24 1989 11     11  990   0   0 NA
#> 209    2014    USA DF,MF     CHI   21 1992 21     21 1890   2   2 NA
#> 210    2014    USA DF,MF     BOS   22 1991 17      8  730   0   3 NA
#> 211    2014    CAN    FW     BOS   21 1992 11      6  503   2   0 NA
#> 212    2014    USA    MF     POR   24 1989 17     16 1303   0   0 NA
#> 213    2014    CAN FW,MF      NJ   23 1990 17      6  697   1   1 NA
#> 214    2014    WAL    MF     SEA   27 1987 22     22 1976   4   8 NA
#> 215    2014    USA DF,MF     SEA   29 1984 23     22 1917   2   1 NA
#> 216    2014    AUS DF,FW      NJ   19 1994 21     20 1825   0   2 NA
#> 217    2014    USA FW,MF     SEA   24 1989 12      3  340   0   0 NA
#> 218    2014    USA    MF      NJ   23 1990 23     23 2021   5   4 NA
#> 219    2014    GER FW,MF     WAS   34 1979 10      6  591   1   0 NA
#> 220    2014    CAN    DF     WAS   28 1985 16     13 1143   2   1 NA
#> 221    2014    USA    MF      KC   26 1987  1      0   21   0   0 NA
#> 222    2014    USA    DF      NJ   23 1990 21     18 1652   0   0 NA
#> 223    2014    AUS    MF      KC   21 1992  9      3  376   1   0 NA
#> 224    2014    USA    MF     BOS   23 1990  9      7  586   0   0 NA
#> 225    2014    USA    FW      KC   24 1989  9      7  529   4   1 NA
#> 226    2014    USA    FW      NJ   21 1992 23     13 1146   1   1 NA
#> 227    2014    USA    MF     POR   25 1988  5      5  401   0   0 NA
#> 228    2014    USA DF,MF     HOU   22 1991  8      7  657   0   0 NA
#> 229    2014    USA    DF     CHI   27 1986 15      9  893   0   2 NA
#> 230    2014    USA FW,MF      KC   24 1989  5      3  185   0   0 NA
#> 231    2014    USA FW,MF     HOU   24 1989  9      8  629   0   0 NA
#> 232    2014    USA FW,MF      KC   26 1987 21     21 1766   8   7 NA
#> 233    2014    USA FW,MF     CHI   23 1991 21     16 1354   4   3 NA
#> 234    2014    USA    MF     POR   29 1984 22      9  962   1   1 NA
#> 235    2014    USA    MF     WAS   24 1989 22     22 1980   1   1 NA
#> 236    2014    USA    MF     HOU   23 1990 20     13 1206   2   1 NA
#> 237    2014    USA DF,MF      NJ   22 1991 15     12 1123   0   0 NA
#> 238    2014    USA DF,MF     CHI   22 1991 12     11  956   0   1 NA
#> 239    2014    USA DF,FW     BOS   23 1990 18     13 1296   3   1 NA
#> 240    2014    USA    DF      KC   21 1992 18     18 1479   0   1 NA
#> 241    2014    JPN FW,MF     SEA   28 1985 20     17 1531   9   5 NA
#> 242    2014    USA    MF     POR   28 1985 14      8  676   0   3 NA
#> 243    2014    AUS FW,MF     WNY   20 1993 20     20 1660   9   4 NA
#> 244    2014    NZL    FW     WNY   26 1987  3      0   25   0   0 NA
#> 245    2014    USA    DF     BOS   24 1989 17     17 1530   1   1 NA
#> 246    2014    JPN    FW      NJ   24 1989 16     12  909   0   1 NA
#> 247    2014    USA DF,MF     HOU   25 1988  7      7  607   0   0 NA
#> 248    2014    USA    DF     WNY   26 1987 24     24 2160   2   1 NA
#> 249    2014    USA DF,MF     WAS   29 1984 22     22 1935   1   0 NA
#> 250    2014    CAN    MF     BOS   25 1988  2      2  155   0   0 NA
#> 251    2014    CAN    MF     HOU   25 1988 19     18 1626   0   2 NA
#> 252    2014    USA    MF      KC   21 1992  2      0   15   0   0 NA
#> 253    2014    CAN FW,MF     CHI   21 1992 20     15 1173   1   3 NA
#> 254    2014    USA    DF      KC   31 1982 11      4  512   0   0 NA
#> 255    2014    USA    FW     SEA   23 1990 22     21 1873   5   0 NA
#> 256    2014    USA    DF      NJ   23 1990 23     21 1884   0   0 NA
#> 257    2014    USA    MF     WAS   33 1980 22     19 1509   1   1 NA
#> 258    2014    USA    DF      NJ   23 1990 14     11  943   3   0 NA
#> 259    2014    SCO FW,MF     SEA   23 1990 23     22 1966  16   7 NA
#> 260    2014    USA    MF     WNY   31 1982 19     19 1710   8   5 NA
#> 261    2014    USA DF,MF     BOS   31 1982 17     14 1231   1   0 NA
#> 262    2014    USA    DF     CHI   26 1987 18     15 1380   2   1 NA
#> 263    2014    USA    MF     POR   26 1987 22     20 1809   9   3 NA
#> 264    2014    ESP    MF     WNY   22 1991 23     18 1624   3   6 NA
#> 265    2014    USA    MF      NJ   24 1989  7      5  481   0   1 NA
#> 266    2014    USA    FW      KC   23 1990  9      2  247   2   0 NA
#> 267    2014    USA DF,FW     POR   25 1988 24     24 2072   0   0 NA
#> 268    2014    USA    FW     HOU   27 1986 18     14 1152   3   1 NA
#> 269    2014    CAN    MF     WAS   29 1984 23     21 1970   8   6 NA
#> 270    2014    USA DF,MF      KC   23 1990 20     16 1436   0   2 NA
#> 271    2014    USA FW,MF     CHI   24 1989 20     12 1053   3   0 NA
#> 272    2014    USA    FW     HOU   23 1990 20     11 1148   4   1 NA
#> 273    2014    USA    MF     HOU   21 1992  1      0   19   0   0 NA
#> 274    2014    USA    FW     POR   25 1988 24     13 1310  11   1 NA
#> 275    2014    USA    MF     HOU   21 1992 13      5  596   0   1 NA
#> 276    2014    USA    DF     POR   21 1992 23     22 1972   0   0 NA
#> 277    2014    USA DF,MF     BOS   22 1991 17     15 1191   3   2 NA
#> 278    2014    USA    FW     POR   24 1989 14     13 1135   6   4 NA
#> 279    2014    USA DF,MF     POR   28 1985 18     13 1171   0   0 NA
#> 280    2014    USA    MF      NJ   21 1992  3      1   96   0   0 NA
#> 281    2014    USA    DF     CHI   22 1991 12     10  907   0   0 NA
#> 282    2014    CAN    DF     SEA   29 1984  1      0   12   0   0 NA
#> 283    2014    DEN    FW      NJ   26 1988  6      5  495   7   3 NA
#> 284    2014    USA    MF     WAS   23 1990 23     21 1838   6   2 NA
#> 285    2014    USA    MF      NJ   26 1987 22     17 1612   1   0 NA
#> 286    2014    USA    DF     POR   21 1992 11     10  824   0   0 NA
#> 287    2014    MEX FW,MF     HOU   23 1990 10      3  431   3   0 NA
#> 288    2014    USA DF,FW      NJ   25 1988 22     22 1917   7   5 NA
#> 289    2014    USA FW,MF     BOS   29 1985 22     21 1874   9   5 NA
#> 290    2014    MEX    FW      NJ   27 1987 18     13  996   3   0 NA
#> 291    2014    USA    FW     HOU   23 1990 24     19 1804   0   2 NA
#> 292    2014    USA FW,MF     HOU   22 1992 23     21 1817   4   1 NA
#> 293    2014    NGA    DF     HOU   21 1992 19     18 1555   1   0 NA
#> 294    2014    USA    DF     WNY   21 1992  7      5  357   0   1 NA
#> 295    2014    USA    MF     WAS   14 2000  1      0    9   0   0 NA
#> 296    2014    USA FW,MF     BOS   21 1992 21     18 1519   0   1 NA
#> 297    2014    USA    DF      NJ   38 1975 19     18 1665   1   2 NA
#> 298    2014    POL DF,MF      KC   26 1987 23     23 1970   1   0 NA
#> 299    2014    USA    FW     CHI   25 1988 12     12 1080   6   0 NA
#> 300    2014    USA    DF     WAS   23 1990  9      8  701   0   0 NA
#> 301    2014    CAN    DF     CHI   22 1991 19     19 1693   0   0 NA
#> 302    2014    USA FW,MF     SEA   28 1985  9      6  567   4   1 NA
#> 303    2014    USA    FW     CHI   22 1991  1      0    6   0   0 NA
#> 304    2014    USA DF,MF     SEA   24 1989 22     19 1813   0   1 NA
#> 305    2014    USA    FW     BOS   22 1992 17     13 1151   7   1 NA
#> 306    2014    USA    DF     WNY   26 1987 19     19 1628   0   0 NA
#> 307    2014    BER    MF     HOU   21 1992  2      1   92   0   0 NA
#> 308    2014    USA    MF      KC   22 1991 22     20 1754   1   4 NA
#> 309    2014    USA FW,MF      KC   26 1987 22     21 1808  13   3 NA
#> 310    2014    MEX    DF     HOU   21 1992 21     19 1765   0   0 NA
#> 311    2014    USA    MF     WNY   25 1988 23     22 1858   0   0 NA
#> 312    2014    ENG    FW     BOS   25 1988 19     17 1524   5   3 NA
#> 313    2014    USA    DF     CHI   26 1987 13      9  779   0   0 NA
#> 314    2014    USA    DF      KC   28 1985 22     22 1935   1   0 NA
#> 315    2014    CAN    MF      NJ   25 1988 22     22 1964   1   0 NA
#> 316    2014    USA    FW     BOS   25 1988 17     12  989   4   0 NA
#> 317    2014    USA    MF     POR   22 1991 17      4  530   0   2 NA
#> 318    2014    MEX    DF     BOS   21 1992 11      9  798   0   1 NA
#> 319    2014    MEX    DF     WAS   21 1992  9      5  520   0   0 NA
#> 320    2014    USA FW,MF      KC   21 1992 18      5  568   2   1 NA
#> 321    2014    CAN FW,MF     POR   30 1983 23     22 1987   7   1 NA
#> 322    2014    USA    DF     WAS   26 1987 11     11  972   0   0 NA
#> 323    2014    USA DF,MF     CHI   30 1983 11      9  762   0   0 NA
#> 324    2014    USA    MF     WAS   21 1992  1      0   15   0   0 NA
#> 325    2014    BRA FW,MF     HOU   22 1991 16      6  507   0   1 NA
#> 326    2014    USA    FW     WNY   23 1990 22      9  933   3   1 NA
#> 327    2014    USA    MF      NJ   23 1990  4      0   78   0   0 NA
#> 328    2014    CAN    MF     BOS   23 1990 10      7  512   0   0 NA
#> 329    2014    USA    FW     POR   22 1991  1      0    1   0   0 NA
#> 330    2014    CAN    FW     CHI   32 1981 13      7  682   3   1 NA
#> 331    2014    USA    DF     POR   26 1987  6      5  405   0   0 NA
#> 332    2014    ENG    FW     WAS   27 1986 21     19 1727  11   2 NA
#> 333    2014    USA    FW     POR   23 1990  2      0    8   0   0 NA
#> 334    2014    USA    DF      NJ   23 1990  2      1   96   0   0 NA
#> 335    2014    USA    DF     HOU   24 1989  7      5  375   0   0 NA
#> 336    2014    USA FW,MF      KC   22 1991 21     18 1540   4   4 NA
#> 337    2014    USA    DF     POR   28 1985 12      9  835   0   1 NA
#> 338    2014    USA DF,FW     WNY   22 1991  1      0    1   0   0 NA
#> 339    2014    USA    FW     WNY   33 1980 10     10  835   6   4 NA
#> 340    2014    USA FW,MF     BOS   25 1988 15     10  939   1   0 NA
#> 341    2014    USA FW,MF     HOU   25 1988  3      3  247   0   0 NA
#> 342    2014    USA    FW     CHI   26 1987  1      0   14   0   0 NA
#> 343    2014    USA DF,MF     WNY   24 1989  8      0  122   0   0 NA
#> 344    2014    USA    DF     BOS   31 1982 24     24 2101   0   1 NA
#> 345    2014    USA    DF      KC   23 1990  5      2  260   0   0 NA
#> 346    2014    USA    DF     WNY   24 1989 21     20 1699   0   0 NA
#> 347    2014    USA    MF     SEA   25 1988 23     22 1963   3   0 NA
#> 348    2014    USA DF,MF     BOS   23 1990  7      7  585   1   1 NA
#> 349    2014    USA FW,MF     SEA   25 1988 24     21 1736   5   4 NA
#> 350    2014    USA    MF     WNY   27 1986 24     23 2036   3   2 NA
#> 351    2015    COL FW,MF     WNY   23 1992  6      4  328   1   0 NA
#> 352    2015    BRA    MF     HOU   19 1995  7      7  630   0   0 NA
#> 353    2015    USA DF,FW     WNY   28 1986  3      0   63   1   0 NA
#> 354    2015    USA DF,MF      KC   28 1986 20     20 1800   1   3 NA
#> 355    2015    EQG FW,MF     POR   27 1987 12      8  759   1   1 NA
#> 356    2015    USA    DF     HOU   25 1990  2      2  171   0   0 NA
#> 357    2015    USA    MF      KC   28 1986 18     13 1250   2   0 NA
#> 358    2015   <NA>    MF     HOU   29 1985 15     11 1004   1   0 NA
#> 359    2015    NGA    MF     WNY   19 1995  8      4  388   1   0 NA
#> 360    2015    USA    FW     HOU   21 1993  7      0  126   1   0 NA
#> 361    2015    ARG FW,MF     WAS   24 1990  4      4  308   0   0 NA
#> 362    2015    USA    DF     BOS   24 1990 20     18 1612   0   0 NA
#> 363    2015    USA    DF     SEA   25 1989 20     20 1800   1   1 NA
#> 364    2015   <NA>    MF     POR   NA   NA  1      1   45   0   0 NA
#> 365    2015    BRA    MF     BOS   29 1985 10      3  369   0   0 NA
#> 366    2015    USA    MF     HOU   27 1987  5      5  352   0   0 NA
#> 367    2015    USA    FW      KC   30 1984 18     10  882   3   0 NA
#> 368    2015    USA    MF     CHI   37 1977  4      2  231   0   0 NA
#> 369    2015    USA    MF     HOU   21 1993 10     10  810   0   3 NA
#> 370    2015    USA DF,MF     SEA   24 1991 12      4  429   1   0 NA
#> 371    2015    AUS    DF     HOU   26 1988 15     14 1274   1   1 NA
#> 372    2015    USA DF,MF      KC   29 1985 20     20 1781   1   2 NA
#> 373    2015    USA DF,MF     SEA   23 1991 13      4  441   0   0 NA
#> 374    2015    BRA    DF     HOU   20 1994 12      6  511   0   0 NA
#> 375    2015    AUS    DF     POR   21 1994  3      2  179   0   0 NA
#> 376    2015    USA    MF     CHI   31 1984 11     11  944   1   3 NA
#> 377    2015    CAN    DF     HOU   26 1989  5      4  376   0   0 NA
#> 378    2015    NGA    DF     WAS   22 1992  2      1   55   0   0 NA
#> 379    2015    USA    DF     WAS   21 1993 16     15 1364   0   0 NA
#> 380    2015    USA    MF      KC   22 1993  1      0    6   0   0 NA
#> 381    2015    USA    MF     CHI   21 1993 20     20 1776   1   0 NA
#> 382    2015    USA    DF     POR   21 1993  9      5  377   0   0 NA
#> 383    2015    SCO    DF     SEA   25 1989 16     14 1273   2   0 NA
#> 384    2015    USA    DF     SEA   28 1986 20     20 1800   0   4 NA
#> 385    2015    USA    DF     HOU   29 1985 15     12 1148   0   1 NA
#> 386    2015    USA    DF     SEA   22 1992  1      0    9   0   0 NA
#> 387    2015    POR    MF     WAS   25 1989 17      7  646   3   0 NA
#> 388    2015    USA    MF     WNY   21 1993 20     20 1784   0   1 NA
#> 389    2015    USA DF,FW     SEA   26 1988  8      2  229   0   0 NA
#> 390    2015    BRA    MF     BOS   26 1988 13      8  790   0   1 NA
#> 391    2015    USA FW,MF      NJ   23 1991  9      4  395   0   0 NA
#> 392    2015    ESP    FW     WAS   32 1982 11      8  698   0   2 NA
#> 393    2015    USA    MF     CHI   22 1992 20     19 1733   2   5 NA
#> 394    2015    USA    MF      NJ   22 1992  3      0   18   0   0 NA
#> 395    2015    USA DF,MF     WAS   22 1992 20     19 1711  15   3 NA
#> 396    2015    USA    DF     WAS   21 1993  6      1  196   0   0 NA
#> 397    2015    USA    MF     WNY   23 1991 15      4  664   3   2 NA
#> 398    2015    USA    DF     WNY   27 1987 11     10  850   0   1 NA
#> 399    2015    USA DF,MF     WNY   26 1988 20     20 1800   2   3 NA
#> 400    2015    USA    DF     WNY   27 1987 12     12 1080   0   0 NA
#> 401    2015    NZL DF,FW     CHI   25 1989 14     12 1085   0   0 NA
#> 402    2015    USA DF,MF     CHI   22 1992 11     11  990   0   2 NA
#> 403    2015    USA DF,MF     BOS   23 1991 18     13 1150   2   0 NA
#> 404    2015    CAN    FW     BOS   22 1992 12      3  417   1   1 NA
#> 405    2015    USA    MF     POR   25 1989 19     19 1652   2   2 NA
#> 406    2015    USA    FW     WNY   21 1993 10      7  582   1   0 NA
#> 407    2015    CAN FW,MF      NJ   24 1990  5      1   98   0   0 NA
#> 408    2015    WAL    MF     SEA   28 1987 19     19 1699   8   3 NA
#> 409    2015    USA DF,MF     SEA   30 1984 19     19 1704   2   1 NA
#> 410    2015    AUS DF,FW      NJ   20 1994 10     10  895   0   0 NA
#> 411    2015    USA FW,MF     SEA   25 1989 16      2  359   0   1 NA
#> 412    2015    USA    MF      NJ   24 1990 20     20 1754   5   2 NA
#> 413    2015    USA    DF     WNY   22 1992  4      2  169   1   0 NA
#> 414    2015    USA    DF      NJ   24 1990  3      0   47   0   0 NA
#> 415    2015    USA    MF      NJ   25 1990 13     10  768   0   0 NA
#> 416    2015    USA    FW      KC   21 1993 13      9  788   4   2 NA
#> 417    2015    USA    DF      NJ   22 1992 14     14 1214   0   1 NA
#> 418    2015    USA    FW      KC   25 1989 17     11  994   4   2 NA
#> 419    2015    USA    FW     WNY   22 1992 11      3  313   0   0 NA
#> 420    2015    USA    FW     POR   21 1993  4      1   81   0   0 NA
#> 421    2015    USA    FW      NJ   22 1992 13     10  899   0   1 NA
#> 422    2015    USA    MF     POR   26 1988 12     12 1062   1   1 NA
#> 423    2015    USA    DF     CHI   28 1986 18     17 1528   1   1 NA
#> 424    2015    USA FW,MF     HOU   25 1989 20     14 1123   0   2 NA
#> 425    2015    AUS    FW     WNY   26 1988  9      9  798   1   1 NA
#> 426    2015    USA    DF     WNY   21 1993 20     20 1800   1   1 NA
#> 427    2015    USA FW,MF      KC   27 1987  9      9  757   2   2 NA
#> 428    2015   <NA>    MF     BOS   NA   NA  1      0   19   0   0 NA
#> 429    2015    USA FW,MF     CHI   24 1991 18     14 1110   4   4 NA
#> 430    2015    MEX    FW     CHI   22 1992 19     15 1343   6   3 NA
#> 431    2015    USA    MF     WAS   25 1989 17     13 1177   0   0 NA
#> 432    2015    USA    MF     HOU   24 1990  9      3  334   0   0 NA
#> 433    2015    USA    FW     POR   23 1991  7      2  201   0   0 NA
#> 434    2015    USA    DF     CHI   26 1988  1      0    7   0   0 NA
#> 435    2015   <NA>    MF     BOS   21 1993  1      0   14   0   0 NA
#> 436    2015    CMR    DF     WAS   26 1988 19     18 1685   0   0 NA
#> 437    2015    USA DF,MF     POR   23 1991 17     12 1218   0   1 NA
#> 438    2015    USA DF,MF     CHI   23 1991 14     13 1215   0   0 NA
#> 439    2015    USA    DF     BOS   22 1992 20     20 1800   0   0 NA
#> 440    2015    USA    FW      KC   23 1991  8      1  161   0   0 NA
#> 441    2015    AUS FW,MF      NJ   21 1993  9      9  766   6   2 NA
#> 442    2015    USA    MF      NJ   22 1992 17     13 1233   0   1 NA
#> 443    2015    USA    DF     BOS   25 1989 18     18 1580   2   0 NA
#> 444    2015    USA    DF     POR   21 1993  8      4  418   0   1 NA
#> 445    2015    USA DF,MF     HOU   26 1988 12     12 1046   0   2 NA
#> 446    2015    USA    DF     WNY   27 1987 18     18 1620   0   0 NA
#> 447    2015    USA DF,MF     WAS   30 1984  8      8  655   0   0 NA
#> 448    2015    DEN    FW     WNY   25 1989  3      1   57   0   0 NA
#> 449    2015    CAN    MF     POR   26 1988 12      6  587   0   0 NA
#> 450    2015    USA    MF      NJ   21 1993  6      0   80   0   0 NA
#> 451    2015    USA    MF      KC   22 1992 16     13 1180   1   3 NA
#> 452    2015    USA    DF     HOU   25 1989  6      3  315   0   0 NA
#> 453    2015    USA    DF     BOS   21 1993 14     11 1025   1   0 NA
#> 454    2015    CAN FW,MF     CHI   22 1992  5      4  277   1   0 NA
#> 455    2015    USA    DF      KC   32 1982 20     20 1800   2   0 NA
#> 456    2015    USA    FW     WNY   24 1990  3      3  269   1   0 NA
#> 457    2015    USA    DF      NJ   24 1990 19     18 1605   0   1 NA
#> 458    2015    USA    DF      KC   22 1992  5      0   14   0   0 NA
#> 459    2015    USA    DF      NJ   24 1990 18     18 1571   0   0 NA
#> 460    2015    SCO FW,MF     SEA   24 1990 20     20 1784  10   7 NA
#> 461    2015    USA    MF     HOU   32 1982 12     12 1080   4   0 NA
#> 462    2015    USA DF,MF     WAS   32 1982 17     15 1216   1   0 NA
#> 463    2015    USA    DF     CHI   27 1987 12      7  614   0   1 NA
#> 464    2015    USA    MF     POR   27 1987 20     20 1793  10   4 NA
#> 465    2015    USA    MF     CHI   21 1993  3      0   40   0   0 NA
#> 466    2015    USA    MF      NJ   25 1989 15     11  962   0   1 NA
#> 467    2015    USA    FW     BOS   24 1990 16      8  677   3   0 NA
#> 468    2015    USA    FW     HOU   28 1986 19     18 1606   2   0 NA
#> 469    2015    CAN    MF     WAS   30 1984  9      7  633   3   2 NA
#> 470    2015    USA DF,MF     SEA   24 1990 18     17 1327   2   2 NA
#> 471    2015    USA FW,MF     CHI   25 1989 15     13 1076   2   3 NA
#> 472    2015    USA    FW     BOS   21 1993 19     17 1418   3   3 NA
#> 473    2015    USA    DF      NJ   22 1992 16     15 1339   1   1 NA
#> 474    2015    USA    FW     HOU   24 1990 17      7  741   1   0 NA
#> 475    2015   <NA>    DF     CHI   23 1991  1      0    3   0   0 NA
#> 476    2015    USA    FW     HOU   26 1988 20     19 1675   7   1 NA
#> 477    2015    USA    DF     POR   22 1992 17     17 1529   0   0 NA
#> 478    2015    USA DF,MF     BOS   23 1991 20     20 1785   6   2 NA
#> 479    2015    USA    MF     WNY   22 1992 20     20 1685   4   4 NA
#> 480    2015    USA    FW     WAS   23 1991  2      0    5   0   0 NA
#> 481    2015    USA    FW     POR   25 1989  4      3  285   1   2 NA
#> 482    2015    USA DF,MF      KC   29 1985 20     20 1730   0   1 NA
#> 483    2015    USA    MF      NJ   22 1992  9      4  453   0   1 NA
#> 484    2015    DEN    FW      NJ   27 1988 18     18 1551   6   1 NA
#> 485    2015    USA    MF     WAS   24 1990 20     19 1701   5   4 NA
#> 486    2015    CMR    FW     WNY   22 1993  7      1  128   0   0 NA
#> 487    2015    USA    MF     HOU   27 1987  3      2  182   0   0 NA
#> 488    2015    USA    MF     WNY   27 1987 13      7  610   0   1 NA
#> 489    2015    USA    DF     POR   22 1992  4      3  273   0   0 NA
#> 490    2015    USA DF,FW      NJ   26 1988 11     11  989   3   5 NA
#> 491    2015    USA FW,MF      KC   30 1985 11     11  928   2   3 NA
#> 492    2015    USA    FW     HOU   24 1990  3      2  154   0   0 NA
#> 493    2015    USA FW,MF     HOU   23 1992 19     19 1692   4   5 NA
#> 494    2015    NGA    FW     WAS   21 1993  4      0   67   0   0 NA
#> 495    2015    NGA FW,MF     WAS   21 1993 13     11  996   3   2 NA
#> 496    2015    USA    DF     WAS   22 1992 20     20 1800   1   0 NA
#> 497    2015    USA FW,MF     BOS   22 1992 20     20 1800   0   0 NA
#> 498    2015    USA    DF      NJ   39 1975 11     11  962   1   0 NA
#> 499    2015    POR    MF     BOS   22 1992 12      6  447   0   1 NA
#> 500    2015    AUS    DF     POR   25 1989  9      9  779   0   0 NA
#> 501    2015    USA    DF      NJ   21 1993  1      0   20   0   0 NA
#> 502    2015    USA    FW     CHI   26 1988 11     10  931  10   2 NA
#> 503    2015    USA    DF     HOU   24 1990 15     15 1306   0   0 NA
#> 504    2015    USA    DF     WNY   24 1990  1      1   90   0   0 NA
#> 505    2015    USA    MF     HOU   21 1993  4      2  205   0   0 NA
#> 506    2015    CAN    DF     CHI   23 1991 17     12 1046   0   0 NA
#> 507    2015    USA FW,MF     SEA   29 1985 10     10  824   5   5 NA
#> 508    2015    AUS FW,MF     WAS   20 1994  8      1  182   0   0 NA
#> 509    2015    USA DF,MF     SEA   25 1989 18      9  912   0   1 NA
#> 510    2015    USA    DF     WAS   27 1987 18     18 1611   0   0 NA
#> 511    2015    CAN    MF     POR   22 1992  1      0    2   0   0 NA
#> 512    2015    IRL    FW     HOU   25 1989  2      0   24   0   0 NA
#> 513    2015    USA FW,MF      KC   27 1987 11     11  956   6   4 NA
#> 514    2015    USA    MF     WAS   26 1988 15     12  981   0   1 NA
#> 515    2015    ENG    FW     POR   26 1988  5      2  275   0   1 NA
#> 516    2015    USA    DF      KC   29 1985 11     11  990   0   0 NA
#> 517    2015    USA    FW     BOS   26 1988 19     17 1421   0   2 NA
#> 518    2015    CAN DF,FW     HOU   31 1983  1      1   45   0   0 NA
#> 519    2015    USA    MF     POR   23 1991 18     13 1127   4   4 NA
#> 520    2015    USA FW,MF      KC   22 1992 15      3  437   0   3 NA
#> 521    2015    AUS    FW     BOS   23 1991  7      7  630   2   0 NA
#> 522    2015    CAN FW,MF     POR   31 1983  9      8  735   2   2 NA
#> 523    2015    USA    DF     WAS   27 1987  5      3  274   0   0 NA
#> 524    2015    USA    MF     WAS   22 1992  1      0    1   0   0 NA
#> 525    2015    USA    FW     WNY   24 1990 20     19 1596   3   1 NA
#> 526    2015    USA    MF      NJ   24 1990  9      3  352   0   0 NA
#> 527    2015    CAN    MF     WNY   24 1990  3      2  150   0   0 NA
#> 528    2015    CAN    FW     CHI   33 1981  8      2  246   2   0 NA
#> 529    2015    ENG    FW     POR   28 1986  7      5  385   3   0 NA
#> 530    2015   <NA>    MF     CHI   21 1993  2      0   16   0   0 NA
#> 531    2015    USA    FW     POR   24 1990  6      0  130   0   0 NA
#> 532    2015    USA FW,MF      KC   23 1991 19     18 1546   3   1 NA
#> 533    2015    USA    DF     POR   29 1985 13     10  879   0   0 NA
#> 534    2015    DEN    MF     SEA   23 1991  9      4  419   0   0 NA
#> 535    2015    USA    MF     BOS   22 1993  8      1  186   0   0 NA
#> 536    2015    NED    DF      NJ   22 1992  1      0    8   0   0 NA
#> 537    2015    USA    FW     CHI   21 1993 10      1  256   1   1 NA
#> 538    2015    USA    FW     WAS   31 1983  4      0   38   0   0 NA
#> 539    2015    USA    DF     BOS   32 1982  1      1   90   0   0 NA
#> 540    2015    BRA    FW     BOS   23 1992  1      1   61   0   0 NA
#> 541    2015    CAN DF,FW     POR   32 1982  1      0   45   0   0 NA
#> 542    2015    USA    DF     HOU   22 1992  2      1  151   0   0 NA
#> 543    2015    USA    FW     WNY   21 1993 17     13 1176   4   4 NA
#> 544    2015    USA    DF     POR   25 1989 20     20 1705   0   1 NA
#> 545    2015    USA    MF     SEA   26 1988 19     19 1654   1   0 NA
#> 546    2015    USA DF,MF     BOS   24 1990 10      8  701   0   0 NA
#> 547    2015    USA    DF     CHI   22 1992 19     17 1533   0   2 NA
#> 548    2015    USA FW,MF     SEA   26 1988 17     17 1337   9   1 NA
#> 549    2015    USA    MF     POR   28 1986 18     18 1459   2   0 NA
#> 550    2016    AUS    DF     ORL   26 1989 11      9  783   0   0  0
#> 551    2016    COL FW,MF     WNY   24 1992  2      0   52   0   0  0
#> 552    2016    BRA    MF     HOU   20 1995 15     15 1297   1   1  0
#> 553    2016    USA    DF      KC   22 1993 11      8  712   0   0  0
#> 554    2016    USA    MF      KC   29 1986 20     20 1788   3   0  1
#> 555    2016    NGA    MF     WNY   20 1995  1      1   45   0   0  0
#> 556    2016    ARG FW,MF     WAS   25 1990 13      9  887   5   1  0
#> 557    2016    USA    DF     SEA   26 1989 20     20 1776   1   2  0
#> 558    2016    CAN    FW     HOU   21 1994 14     11  917   3   2  0
#> 559    2016    GER    FW     BOS   23 1992 11      8  658   0   1  0
#> 560    2016    CAN    FW     ORL   29 1986 14     14 1082   0   0  0
#> 561    2016    USA    DF     POR   22 1993  5      2  182   0   0  0
#> 562    2016    USA    MF     POR   21 1994  6      5  466   0   0  0
#> 563    2016    NZL DF,MF      KC   21 1994 13     11  959   0   1  0
#> 564    2016    USA    MF     HOU   22 1993 13     13 1005   0   0  0
#> 565    2016    USA DF,MF     HOU   25 1991 19     11 1085   1   0  0
#> 566    2016    AUS    DF     HOU   27 1988 15     15 1336   0   0  0
#> 567    2016    ISL    MF     POR   24 1991 17     12 1072   5   0  0
#> 568    2016    USA DF,MF      KC   30 1985  5      5  426   0   0  0
#> 569    2016    USA    MF     ORL   22 1993  7      2  252   0   0  0
#> 570    2016    AUS    DF     ORL   22 1994 11     11  990   1   1  0
#> 571    2016    BEL FW,MF     WNY   27 1988  3      1   96   0   0  0
#> 572    2016    CAN    DF     HOU   27 1989  9      8  711   0   0  0
#> 573    2016    USA    DF     WAS   22 1993 11      7  612   0   0  0
#> 574    2016    USA    MF     CHI   22 1993 20     20 1784   0   2  0
#> 575    2016    USA    DF     CHI   22 1993 16      6  667   1   1  0
#> 576    2016    USA    MF      NJ   25 1991 13      6  588   1   0  0
#> 577    2016    SCO    DF     SEA   26 1989 12     11 1005   1   0  0
#> 578    2016   <NA>    DF     HOU   21 1994  4      1  115   0   0  0
#> 579    2016    USA    DF     SEA   23 1992  4      0   46   0   0  0
#> 580    2016    POR    MF     CHI   26 1989 13      8  664   0   0  0
#> 581    2016    USA    MF     WNY   22 1993 20     20 1800   2   1  2
#> 582    2016    USA DF,FW     SEA   27 1988 12      2  274   0   0  0
#> 583    2016    ENG    FW     HOU   24 1991 16     12 1186   4   3  0
#> 584    2016    AUS    FW     ORL   31 1984  3      2  153   0   0  0
#> 585    2016    USA FW,MF      NJ   24 1991  6      3  244   0   0  0
#> 586    2016    USA    MF     CHI   23 1992 20     20 1785   0   6  0
#> 587    2016    USA    FW     WNY   21 1994 20     15 1141   3   4  0
#> 588    2016    ENG    FW     BOS   27 1988  7      7  605   3   0  0
#> 589    2016    USA DF,MF     WAS   23 1992 13     12 1140   2   5  0
#> 590    2016    USA    DF     WAS   22 1993 12     12 1080   0   2  0
#> 591    2016    USA    MF     WNY   24 1991 20     20 1753   0   2  0
#> 592    2016    USA    DF     ORL   28 1987 19     19 1701   6   2  0
#> 593    2016    USA DF,MF     ORL   27 1988 16     10  806   0   0  0
#> 594    2016    USA    MF     BOS   22 1993 13     11  917   0   0  0
#> 595    2016    USA FW,MF     SEA   23 1992 12      0  157   0   0  0
#> 596    2016    USA    DF     BOS   28 1987 14     14 1260   1   1  0
#> 597    2016    NZL DF,FW     WNY   26 1989 17     16 1474   2   1  0
#> 598    2016    USA DF,MF     CHI   23 1992 12     12 1080   0   0  0
#> 599    2016    USA DF,MF     ORL   24 1991 16     12 1111   0   1  0
#> 600    2016    USA    FW     WAS   22 1993 16      8  559   0   0  0
#> 601    2016    USA    FW     ORL   22 1993 12      6  627   0   1  0
#> 602    2016    WAL    MF     SEA   29 1987 16     16 1390   1   4  0
#> 603    2016    USA    MF     POR 2016    0  3      2  134   0   0  0
#> 604    2016    USA DF,MF     SEA   31 1984 20     20 1755   1   0  0
#> 605    2016    USA    FW     HOU   26 1989  3      0   54   0   0  0
#> 606    2016    BRA DF,MF     ORL   25 1990  3      0   44   0   1  0
#> 607    2016    USA    DF      KC   23 1992  3      3  270   0   0  0
#> 608    2016    KOR    FW     WNY   27 1988  2      1   86   0   0  0
#> 609    2016    ENG    FW      NJ   21 1994 14     10 1022   3   4  0
#> 610    2016    USA    DF      NJ   25 1990  1      0    8   0   0  0
#> 611    2016    USA    DF     CHI   23 1992  4      0  110   0   0  0
#> 612    2016    USA    MF      NJ   26 1990 11      5  444   0   0  0
#> 613    2016    USA    FW      KC   22 1993 19     19 1660   8   0  0
#> 614    2016    USA    DF      NJ   23 1992 15     14 1267   0   1  0
#> 615    2016    USA    FW     ORL   26 1989 17      8  588   2   2  0
#> 616    2016    USA    MF     WNY   21 1994 13      8  659   1   1  0
#> 617    2016    USA    FW     WNY   23 1992 12      0  126   0   0  0
#> 618    2016    USA    FW      NJ   23 1992 16      8  749   3   0  0
#> 619    2016   <NA>    MF     HOU   21 1994  6      2  127   0   0  0
#> 620    2016    USA    MF     POR   27 1988 14     13 1159   1  10  0
#> 621    2016    USA FW,MF     HOU   26 1989  7      4  321   0   1  0
#> 622    2016    FRA    MF     POR   26 1989  9      8  638   0   1  0
#> 623    2016    USA    DF     WNY   22 1993 15     15 1327   1   3  1
#> 624    2016    USA    FW     POR   21 1994 15     15 1304   5   0  0
#> 625    2016    USA FW,MF     CHI   25 1991 15      9  673   2   0  0
#> 626    2016    MEX    FW     CHI   23 1992 20     20 1742   7   2  0
#> 627    2016    USA    MF     WAS   26 1989 19     19 1667   1   1  0
#> 628    2016    DEN    DF     WAS   24 1991  3      2  141   0   0  0
#> 629    2016    CMR    DF     WAS   27 1988 11     11  990   0   0  0
#> 630    2016    USA DF,MF     CHI   24 1991 19     19 1676   0   0  0
#> 631    2016    USA    FW      NJ   32 1983 20     17 1401   4   1  0
#> 632    2016    USA    DF     BOS   23 1992 20     20 1800   0   0  0
#> 633    2016    USA    FW     CHI   24 1991  1      0   45   0   0  0
#> 634    2016    FRA    MF     BOS   20 1995  3      1  100   0   0  0
#> 635    2016    USA    FW      KC   24 1991 15      3  296   0   2  0
#> 636    2016    JPN FW,MF     SEA   30 1985 10      8  750   3   2  0
#> 637    2016    AUS    MF     WNY   21 1995 15     15 1298   0   0  0
#> 638    2016    AUS FW,MF      NJ   22 1993  9      6  616   5   0  0
#> 639    2016    USA    MF      NJ   23 1992 18     18 1606   3   1  3
#> 640    2016    USA    DF     BOS   26 1989 18     17 1524   2   1  0
#> 641    2016    USA    DF     WAS   22 1993 17     12 1111   1   1  0
#> 642    2016    USA DF,MF     POR   27 1988 14     14 1259   0   0  0
#> 643    2016    USA    DF      KC   28 1987 20     20 1800   0   0  0
#> 644    2016    USA DF,MF     WAS   31 1984 15     14 1267   1   0  0
#> 645    2016    USA    FW     BOS   22 1993  6      0  142   1   0  0
#> 646    2016    CAN    MF     ORL   27 1988 18     16 1441   0   0  0
#> 647    2016    USA    MF      KC   22 1993 11      7  693   0   0  0
#> 648    2016    USA    MF      KC   23 1992 19     19 1679   0   0  0
#> 649    2016    CAN FW,MF     WNY   23 1992 10      3  345   0   0  0
#> 650    2016    USA    DF     ORL   25 1990 10      9  836   0   1  0
#> 651    2016    SCO FW,MF     SEA   25 1990 20     20 1795   6   2  3
#> 652    2016    USA    MF     HOU   33 1982  7      7  553   5   3  1
#> 653    2016    USA    DF     POR   23 1992  3      0   54   0   0  0
#> 654    2016    USA DF,MF     WAS   33 1982 20     17 1538   4   1  0
#> 655    2016    USA    MF     POR   28 1987 15     15 1350   6   2  0
#> 656    2016    USA    MF     CHI   22 1993  1      0   10   0   0  0
#> 657    2016    USA    MF      NJ   26 1989 18     18 1506   1   2  0
#> 658    2016    USA    FW     BOS   25 1990  1      0   23   0   0  0
#> 659    2016    CAN    MF     WAS   31 1984 12      9  799   4   0  1
#> 660    2016    USA DF,MF     SEA   25 1990 19     17 1431   1   0  0
#> 661    2016    JAM    FW     WAS   22 1993 17      8  780   3   0  0
#> 662    2016    USA FW,MF     CHI   26 1989 18     10 1037   0   2  0
#> 663    2016    USA    FW     CHI   22 1993 18     15 1276   2   0  0
#> 664    2016    USA    FW      KC   25 1990 16     10  916   2   4  0
#> 665    2016    USA    FW     WNY   27 1988 19     19 1665  10   7  0
#> 666    2016    NED FW,MF     SEA   29 1986 16     15 1051   7   1  0
#> 667    2016    USA    DF      KC   24 1991  3      2  185   0   0  0
#> 668    2016    USA    DF     POR   23 1992 20     20 1800   0   0  0
#> 669    2016    USA DF,MF     BOS   24 1991 14     13 1122   1   1  0
#> 670    2016    USA    MF     WNY   23 1992 14     14 1260   5   2  1
#> 671    2016    BRA    DF     ORL   37 1978 16     15 1377   0   0  0
#> 672    2016    USA    FW     ORL   26 1989 15     15 1350   4   1  0
#> 673    2016    USA DF,MF     HOU   30 1985 17     17 1521   0   2  0
#> 674    2016    USA    MF     POR   23 1992  7      3  274   1   1  0
#> 675    2016    DEN    FW     POR   28 1988 20     20 1649   9   3  4
#> 676    2016    USA    MF     WAS   25 1990 20     18 1618   3   3  1
#> 677    2016    USA    DF     CHI   21 1994 16      9  861   0   0  0
#> 678    2016    USA    FW      KC   24 1991  8      2  236   0   0  0
#> 679    2016    USA    MF      NJ   28 1987  3      1  103   0   0  0
#> 680    2016    USA    FW     SEA   22 1993  2      0   26   0   0  0
#> 681    2016    USA    DF     WNY   23 1992  6      4  395   0   0  0
#> 682    2016    USA DF,FW      NJ   27 1988 12     11 1033   1   2  0
#> 683    2016    USA FW,MF      KC   31 1985 14     14 1206   1   2  1
#> 684    2016    IRL    FW     HOU   21 1994 18     14 1313   2   5  0
#> 685    2016    USA    FW     HOU   25 1990 12      3  381   0   2  0
#> 686    2016    USA FW,MF     HOU   24 1992 20     18 1626  11   3  0
#> 687    2016    NGA FW,MF     WAS   22 1993 13      7  630   2   1  0
#> 688    2016    USA    DF     WAS   23 1992 15     15 1341   0   0  0
#> 689    2016    USA FW,MF     BOS   23 1992 13     12 1055   1   0  0
#> 690    2016    USA    DF      NJ   40 1975 20     20 1800   0   0  0
#> 691    2016    USA    DF     SEA   22 1993 15      8  841   0   1  0
#> 692    2016    BRA    DF     HOU   24 1991 15     15 1324   1   0  0
#> 693    2016    USA    DF     POR   22 1993  5      1  140   0   0  0
#> 694    2016    USA    FW     CHI   27 1988 14     14 1260   8   0  1
#> 695    2016    USA    DF     ORL   25 1990 14     11 1028   0   0  0
#> 696    2016    USA    MF     HOU   22 1993 15     11 1056   0   0  0
#> 697    2016    USA    MF     CHI   21 1994  6      0   52   0   0  0
#> 698    2016    USA FW,MF     SEA   30 1985  5      2  205   1   1  0
#> 699    2016    AUS FW,MF     POR   21 1994 20      6  751   0   2  0
#> 700    2016    USA    FW     BOS   21 1994 15      5  546   0   0  0
#> 701    2016    USA    DF      KC   21 1994  7      5  441   0   0  0
#> 702    2016    USA DF,MF     SEA   26 1989 16     14 1284   0   0  0
#> 703    2016    USA    DF     POR   28 1987 20     18 1671   0   0  0
#> 704    2016    BER    MF      NJ   23 1992  2      0   54   0   0  0
#> 705    2016    USA    DF     HOU   21 1994 15     14 1267   0   0  0
#> 706    2016    CRC    FW      NJ   22 1993 18     17 1464   1   1  0
#> 707    2016    USA    MF     BOS   27 1988 19     19 1700   1   0  0
#> 708    2016    ENG    FW     WNY   27 1988 17     11 1120   5   1  0
#> 709    2016    USA    DF      KC   30 1985 14     14 1260   1   0  0
#> 710    2016    SWE    MF     BOS   26 1989 18     16 1428   1   2  1
#> 711    2016    USA    FW     BOS   27 1988 12      8  597   1   0  0
#> 712    2016    ISR    FW      NJ   26 1989  3      0   42   0   0  0
#> 713    2016    CAN    MF      KC   28 1987 14     14 1260   0   0  0
#> 714    2016    USA    MF     POR   24 1991 14      9  812   0   1  0
#> 715    2016    USA    DF     CHI   25 1990 20     20 1781   2   0  0
#> 716    2016    USA FW,MF      KC   23 1992 19     10  990   2   0  0
#> 717    2016    USA    DF      NJ   21 1994 19     18 1590   0   2  0
#> 718    2016    AUS    FW     BOS   24 1991 17     14 1292   1   1  0
#> 719    2016    CAN FW,MF     POR   32 1983 11     10  826   6   2  0
#> 720    2016    USA    MF     POR   23 1992  3      2  210   0   0  0
#> 721    2016    USA    DF      NJ   21 1994 20     20 1798   1   0  0
#> 722    2016    USA    FW     WNY   22 1993 18      5  725   2   0  0
#> 723    2016    JAM    MF     SEA   22 1993  6      3  274   1   0  0
#> 724    2016    USA    DF     POR   22 1993 15     15 1350   0   0  0
#> 725    2016    USA    MF     WNY   22 1993  6      5  369   0   1  0
#> 726    2016    USA    FW     ORL   25 1990 20     17 1564   4   0  0
#> 727    2016    USA    MF      NJ   25 1990 12      4  407   0   0  0
#> 728    2016    USA    FW     WAS   23 1992 19     10  929   4   1  0
#> 729    2016    USA    DF     BOS   23 1992  7      3  343   0   0  0
#> 730    2016    USA FW,MF      KC   24 1991 17     14 1164   1   2  0
#> 731    2016    USA    FW     HOU   23 1992 15      9  805   1   1  0
#> 732    2016    JPN    MF     SEA   27 1988  7      6  554   1   0  0
#> 733    2016    USA    MF     BOS   23 1993 10      5  452   0   0  0
#> 734    2016    USA    FW     CHI   22 1993 12      8  702   1   0  0
#> 735    2016    USA    MF     ORL   21 1994 12      9  786   0   0  0
#> 736    2016    USA    FW     POR   21 1994 13      7  699   0   0  0
#> 737    2016    USA    FW      KC   32 1983  4      0   17   0   0  0
#> 738    2016    USA    DF     BOS   22 1993 13      7  580   1   0  0
#> 739    2016    USA    FW     WNY   22 1993 19     19 1671  11   5  0
#> 740    2016    USA    DF     POR   26 1989  5      3  198   1   0  0
#> 741    2016    USA    MF     SEA   27 1988 20     20 1750   1   2  0
#> 742    2016    USA    DF     ORL   21 1994 16     12 1062   0   0  0
#> 743    2016    USA DF,MF     BOS   25 1990  7      2  260   0   0  0
#> 744    2016    USA    DF     CHI   23 1992 20     20 1718   0   4  0
#> 745    2016    USA FW,MF     SEA   27 1988 20     18 1543   3   3  0
#> 746    2016    CAN    DF     WAS   23 1992 11     10  911   0   0  0
#> 747    2016    USA    MF     WNY   29 1986 20     19 1681   0   1  0
#> 748    2017    CAN    FW     WAS   21 1995  8      2  290   0   1  0
#> 749    2017    AUS    DF     ORL   27 1989  2      1  136   0   0  0
#> 750    2017    BRA    MF     HOU   21 1995 21     17 1557   2   3  0
#> 751    2017    USA    MF     BOS   21 1995 18     10 1033   0   0  0
#> 752    2017    USA    DF      KC   23 1993  1      0   33   0   0  0
#> 753    2017    BRA DF,FW      NC   34 1982  4      1   68   0   0  0
#> 754    2017    USA    MF      KC   30 1986 23     23 2045   1   1  0
#> 755    2017    ARG FW,MF     WAS   26 1990  9      6  546   1   0  0
#> 756    2017    USA    DF     SEA   27 1989 22     21 1810   0   0  0
#> 757    2017    USA    DF     SEA   21 1995  5      1  151   0   0  0
#> 758    2017    CAN    FW     HOU   22 1994 24     21 1829   2   1  0
#> 759    2017    USA    DF      NJ   NA   NA  1      0   30   0   0  0
#> 760    2017    USA    MF     POR   22 1994 17     13 1179   0   0  0
#> 761    2017    NZL DF,MF      KC   22 1994 21     13 1059   2   1  0
#> 762    2017    USA    MF     HOU   23 1993 10      9  664   0   0  0
#> 763    2017    USA    MF     CHI   23 1993  2      1   85   0   0  0
#> 764    2017    USA DF,MF     HOU   26 1991 24     24 2160   1   3  1
#> 765    2017    BRA    DF     HOU   31 1985 14      8  841   0   0  0
#> 766    2017    ISL    MF     POR   25 1991 11      6  511   0   1  0
#> 767    2017    USA    MF     ORL   23 1993  1      0    8   0   0  0
#> 768    2017    BRA    DF     ORL   22 1994 24     22 1900   4   5  0
#> 769    2017    USA    MF     WAS   21 1995  2      0   26   0   0  0
#> 770    2017    AUS    DF     ORL   23 1994 23     23 2030   0   2  0
#> 771    2017    CAN    DF     BOS   28 1989 19     19 1642   0   0  0
#> 772    2017    USA    DF     WAS   23 1993 22     22 1980   1   1  0
#> 773    2017    USA    MF     CHI   23 1993 23     21 1905   1   1  0
#> 774    2017    USA    DF     CHI   23 1993 20     10 1096   0   1  0
#> 775    2017    USA    MF      NJ   23 1993 19     12 1161   1   5  0
#> 776    2017    SCO    DF     SEA   27 1989 14     12 1126   0   1  0
#> 777    2017    USA    DF     HOU   22 1994  1      0   NA   0   0  0
#> 778    2017    USA    DF     POR   22 1994  9      2  261   0   0  0
#> 779    2017    AUS    FW     SEA   21 1996  4      0   47   1   0  0
#> 780    2017    POR    MF     BOS   27 1989 11      4  382   1   0  1
#> 781    2017    USA    MF      NC   23 1993 24     24 2160   0   2  0
#> 782    2017    USA DF,FW     SEA   28 1988 14      3  351   1   2  0
#> 783    2017    ENG    FW     HOU   25 1991 23     23 2024   5   2  0
#> 784    2017    BRA    FW      NC   25 1991 24     16 1472   4   2  0
#> 785    2017    USA    MF     CHI   24 1992 20     20 1708   3   2  0
#> 786    2017    USA    FW      NC   22 1994 22     15 1213   0   3  0
#> 787    2017    USA    MF     WAS   21 1995 23     21 1911   1   1  0
#> 788    2017    USA    FW     BOS   22 1994  1      0   25   0   0  0
#> 789    2017    ENG    FW     BOS   28 1988 23     18 1658   7   2  0
#> 790    2017    USA    MF     ORL   22 1994  4      0   47   0   0  0
#> 791    2017    USA    DF     WAS   23 1993 16     11 1118   0   0  0
#> 792    2017    USA    MF      NC   25 1991  5      0   55   0   0  0
#> 793    2017    USA    DF     ORL   29 1987 22     20 1802   2   0  0
#> 794    2017    USA    MF     BOS   23 1993 13     10  848   0   0  0
#> 795    2017    USA FW,MF     SEA   24 1992 15     11  945   1   1  0
#> 796    2017    NZL DF,FW      NC   27 1989 22     22 1946   1   2  0
#> 797    2017    USA DF,MF     CHI   24 1992 22     21 1933   4   3  0
#> 798    2017    USA    FW     ORL   21 1995 11      1  191   1   0  0
#> 799    2017    USA DF,MF     ORL   25 1991 12      4  482   0   0  0
#> 800    2017    USA    DF     HOU   23 1993  7      3  275   0   0  0
#> 801    2017    USA    FW     WAS   23 1993 10      3  352   0   0  0
#> 802    2017    USA    FW     ORL   23 1993 16      7  596   0   1  0
#> 803    2017    WAL    MF     SEA   30 1987 20     20 1743   7   2  1
#> 804    2017    USA    MF      KC   NA   NA 10      0  152   0   0  0
#> 805    2017    USA    DF      NJ   21 1995 21     20 1802   0   1  0
#> 806    2017    USA    DF     BOS   24 1992 12      9  751   0   1  0
#> 807    2017    ENG    FW      NJ   22 1994 16      6  661   2   1  0
#> 808    2017    USA    DF      KC   22 1994 24     23 2084   1   3  0
#> 809    2017    USA    DF     CHI   24 1992  5      3  223   0   0  0
#> 810    2017    USA    FW     CHI   21 1995  7      1  136   0   0  0
#> 811    2017    USA    FW      KC   23 1993 22     21 1779   5   6  0
#> 812    2017    NOR FW,MF     BOS   24 1992  7      5  458   0   0  0
#> 813    2017    USA    FW     HOU   27 1989 18      7  674   2   0  0
#> 814    2017    USA    FW      NC   24 1992 16     12 1073   3   2  0
#> 815    2017    USA    FW      NC   21 1995 22     13 1200   7   2  0
#> 816    2017    USA    FW      NJ   24 1992 22     13 1064   5   4  0
#> 817    2017   <NA>    MF     HOU   22 1994 13      2  337   0   0  0
#> 818    2017    USA    MF     POR   28 1988  2      0   75   0   0  0
#> 819    2017    USA FW,MF     HOU   27 1989  1      0   19   0   0  0
#> 820    2017    FRA    MF     POR   27 1989 21     19 1616   3   0  1
#> 821    2017    USA    MF     POR   22 1994  1      0    6   0   0  0
#> 822    2017    USA    FW     ORL   21 1995 14      8  714   3   1  0
#> 823    2017    USA    DF      NC   23 1993 20     20 1775   0   2  0
#> 824    2017    NOR    DF      NC   29 1987  2      1   89   0   0  0
#> 825    2017    USA    FW     POR   22 1994 24     24 2126   4   2  0
#> 826    2017    USA FW,MF     CHI   26 1991 13      8  635   2   2  0
#> 827    2017    USA    DF     POR   22 1994  2      0   13   0   0  0
#> 828    2017    MEX    FW     CHI   24 1992 24     21 1966   6   4  0
#> 829    2017    USA    MF     WAS   27 1989 20     19 1714   0   0  0
#> 830    2017    DEN    DF     WAS   25 1991  9      6  569   1   1  0
#> 831    2017    CMR    DF     WAS   28 1988 20     20 1680   2   0  0
#> 832    2017    MEX    FW     SEA   22 1994 23      5  794   4   2  0
#> 833    2017    USA DF,MF     POR   25 1991  4      0    8   0   0  0
#> 834    2017    USA DF,MF     CHI   25 1991 22     22 1786   0   0  0
#> 835    2017    USA    FW      NJ   33 1983  1      0   19   0   0  0
#> 836    2017    USA    DF     WAS   24 1992 17     16 1400   0   0  0
#> 837    2017    USA    MF     CHI   21 1995  7      2  212   0   0  0
#> 838    2017    JPN    MF      NC   27 1989  8      7  588   0   0  0
#> 839    2017    JPN FW,MF     SEA   31 1985 24     22 1917   6   8  0
#> 840    2017    CAN    MF      KC   24 1992 22      5  664   5   2  0
#> 841    2017    AUS    MF     ORL   22 1995 24     23 2101   4   1  0
#> 842    2017    AUS FW,MF      NJ   23 1993 22     21 1918  17   4  0
#> 843    2017    USA    MF      NJ   24 1992 23     22 2034   5   2  4
#> 844    2017    USA    DF     BOS   27 1989 21     21 1890   1   0  0
#> 845    2017    USA    DF     WAS   23 1993 18     11  998   0   0  0
#> 846    2017    USA DF,MF     POR   28 1988 23     22 1935   0   6  0
#> 847    2017    USA    DF      KC   29 1987 23     22 1980   0   0  0
#> 848    2017    USA DF,MF     ORL   32 1984 24     24 2160   0   2  0
#> 849    2017    USA    MF      KC   23 1993 22     21 1727   2   2  0
#> 850    2017    USA    MF     BOS   21 1995 10      8  764   2   1  0
#> 851    2017    CAN FW,MF     BOS   24 1992 24     21 1780   6   6  0
#> 852    2017    USA    FW      KC   26 1990 23     23 2013   6   2  0
#> 853    2017    USA    DF     HOU   26 1990 22     22 1980   0   0  0
#> 854    2017    USA    MF     HOU   34 1982  8      8  647   2   0  1
#> 855    2017    USA DF,MF     WAS   34 1982  1      1   22   0   0  0
#> 856    2017    USA    MF     POR   29 1987 21     17 1600   2   1  0
#> 857    2017    USA    FW     POR   22 1995  5      3  291   1   2  0
#> 858    2017    USA    MF      NJ   27 1989 21     20 1688   0   5  0
#> 859    2017    BRA    FW     ORL   30 1986 23     21 1940  13   6  2
#> 860    2017    USA DF,MF     SEA   26 1990 21     18 1461   2   1  0
#> 861    2017    JAM    FW     WAS   23 1993 21     16 1258   5   1  0
#> 862    2017    USA FW,MF     CHI   27 1989 24     15 1415   2   0  0
#> 863    2017    USA    FW     CHI   23 1993 12      4  362   0   0  0
#> 864    2017    USA    FW      NC   28 1988 19     11 1064   4   2  0
#> 865    2017    USA    DF     SEA   22 1994 18     14 1306   1   0  0
#> 866    2017    USA    FW      NJ   22 1994 17      5  599   0   1  0
#> 867    2017    USA    DF     POR   24 1992 23     23 2063   0   0  0
#> 868    2017    USA DF,MF     CHI   25 1991  1      1   81   1   0  0
#> 869    2017    USA DF,MF     HOU   25 1991  5      5  444   0   2  0
#> 870    2017    USA DF,MF     WAS   25 1991 14     10  899   2   2  0
#> 871    2017    USA    MF      NC   24 1992 24     23 2097   6   3  1
#> 872    2017    USA    DF      NJ   21 1995 16     13 1161   0   0  0
#> 873    2017    USA    DF      KC   22 1994  5      5  450   0   1  0
#> 874    2017    BRA    DF     ORL   38 1978 19     16 1284   0   0  0
#> 875    2017    USA    FW     ORL   27 1989 13     12 1058   9   4  1
#> 876    2017    USA DF,MF      KC   31 1985 19     17 1552   0   0  0
#> 877    2017    USA    MF     POR   24 1992  1      0   11   0   0  0
#> 878    2017    DEN    FW     POR   29 1988 16     13 1158   6   3  4
#> 879    2017    JPN    FW     CHI   29 1987  6      3  310   1   2  0
#> 880    2017    USA    MF     SEA   26 1990 23     21 1648   1   5  0
#> 881    2017    USA    DF     CHI   22 1994 22     22 1958   0   0  0
#> 882    2017    USA    FW      KC   25 1991 17      8  658   2   1  0
#> 883    2017    USA DF,FW      NJ   28 1988 18     17 1561   4   3  2
#> 884    2017    IRL    FW     HOU   22 1994 11      5  447   0   1  0
#> 885    2017    IRL    FW      NC   22 1994  7      6  505   0   0  0
#> 886    2017    USA    FW      NC   26 1990  5      0   52   0   0  0
#> 887    2017    USA FW,MF     HOU   25 1992 10     10  864   2   2  0
#> 888    2017    USA    FW     BOS   22 1994 18      3  509   0   1  0
#> 889    2017    NGA FW,MF     WAS   23 1993 14      8  923   4   3  0
#> 890    2017    USA    DF     BOS   24 1992 23     23 2070   0   0  0
#> 891    2017    USA    DF      NJ   41 1975 16     16 1440   0   0  0
#> 892    2017    USA    DF     SEA   23 1993 21     21 1870   0   0  0
#> 893    2017    BRA    DF     HOU   25 1991 22     17 1563   4   2  0
#> 894    2017    USA    FW     CHI   28 1988 23     22 1997  11   5  4
#> 895    2017    USA    DF     ORL   26 1990 18     13 1218   1   0  0
#> 896    2017    CAN    FW     HOU   21 1995 23     18 1540   3   1  0
#> 897    2017    USA    MF     HOU   23 1993 16      8  748   0   0  0
#> 898    2017    USA    MF     CHI   22 1994  7      1  110   0   0  0
#> 899    2017    USA    MF     WAS   22 1994  3      3  255   0   0  0
#> 900    2017    USA    FW     WAS   18 1998 16     13 1203   6   1  1
#> 901    2017    USA    FW     BOS   21 1995 22     13 1384   1   2  0
#> 902    2017    USA FW,MF     SEA   31 1985 18     17 1522  12   1  4
#> 903    2017    AUS FW,MF     POR   22 1994 22     20 1785   6   3  0
#> 904    2017    USA    FW      KC   22 1994 21     12 1074   1   3  0
#> 905    2017    USA DF,MF     SEA   27 1989  4      1  101   0   0  0
#> 906    2017    USA    DF     POR   29 1987 10     10  883   0   0  0
#> 907    2017    USA DF,MF      NJ   24 1992  7      7  630   0   1  0
#> 908    2017    USA    DF     HOU   22 1994 18     16 1500   0   0  0
#> 909    2017    USA FW,MF      KC   29 1987  1      1   57   1   0  0
#> 910    2017    CRC    FW      NJ   23 1993 21     17 1456   4   0  0
#> 911    2017    USA    MF     BOS   28 1988 24     24 2117   0   0  0
#> 912    2017    USA    DF      KC   31 1985 22     22 1980   1   2  0
#> 913    2017    CAN    MF      KC   29 1987 21     20 1803   0   2  0
#> 914    2017    USA    MF     POR   25 1991  6      3  209   0   0  0
#> 915    2017    USA    FW     WAS   21 1995 14      9  688   1   2  0
#> 916    2017    USA    DF     CHI   26 1990 22     21 1914   1   1  0
#> 917    2017    USA    DF      NJ   22 1994  7      7  516   0   0  0
#> 918    2017    CAN FW,MF     POR   33 1983 24     24 2143   8   0  0
#> 919    2017    USA    DF      NJ   22 1994 21     20 1763   1   0  0
#> 920    2017    USA    FW      NC   23 1993 24     18 1750   0   2  0
#> 921    2017    JAM    MF     WAS   23 1993 24     20 1728   5   4  2
#> 922    2017    USA    DF     POR   23 1993 24     24 2160   3   1  0
#> 923    2017    USA    MF      NC   23 1993  4      2  197   0   0  0
#> 924    2017    USA    FW     ORL   26 1990 20     12 1101   3   5  0
#> 925    2017    USA    MF      NJ   26 1990 16     13 1045   0   1  0
#> 926    2017    USA    FW     BOS   24 1992 12      7  556   0   1  0
#> 927    2017    USA    FW     WAS   24 1992  5      3  222   0   0  0
#> 928    2017    NZL DF,MF     SEA   23 1993 22     18 1711   0   1  0
#> 929    2017    AUS    FW     POR   25 1991 15     12  995   1   1  0
#> 930    2017    USA    FW     WAS   23 1994  1      0   25   0   0  0
#> 931    2017    USA    MF      NJ   21 1995 20     11 1038   3   1  0
#> 932    2017    USA FW,MF      KC   25 1991 12      4  394   2   1  0
#> 933    2017    USA    FW     ORL   24 1992 19     16 1346   4   3  0
#> 934    2017    JPN    MF     SEA   28 1988 20     18 1665   1   2  0
#> 935    2017    USA    MF     ORL   22 1994 19     17 1486   1   1  0
#> 936    2017    USA    FW     POR   22 1994 17      5  563   1   1  0
#> 937    2017    USA    FW     BOS   33 1983 17     11  809   0   1  0
#> 938    2017    USA    DF     BOS   23 1993 13     13 1129   0   1  0
#> 939    2017    NZL    FW     BOS   23 1993 22     21 1794   4   1  0
#> 940    2017    USA    FW      NC   23 1993 21     21 1826   9   5  1
#> 941    2017    USA    DF      NC   22 1994 12      5  419   0   0  0
#> 942    2017    USA    DF     CHI   24 1992 22     21 1766   0   0  0
#> 943    2017    RSA    DF     HOU   29 1987 17     17 1474   0   0  0
#> 944    2017    USA FW,MF     SEA   28 1988 22     17 1345   4   1  0
#> 945    2017    CAN    DF     WAS   24 1992 21     20 1793   0   1  0
#> 946    2017    USA    MF      NC   30 1986 23     23 2017   3   0  0
#> 947    2018    CMR    FW      NJ   20 1997  4      0   49   0   0  0
#> 948    2018    GHA    FW     SEA   24 1993 12      8  688   0   1  0
#> 949    2018    CAN    FW     HOU   22 1995 12      6  609   0   1  0
#> 950    2018    BRA    MF     POR   22 1995 18      9  847   0   0  0
#> 951    2018    USA    MF     SEA   22 1995 15      7  768   0   0  0
#> 952    2018    USA    MF     SEA   31 1986  1      1   90   0   0  0
#> 953    2018    USA    DF     POR   22 1995  6      0  100   0   0  0
#> 954    2018    ARG FW,MF     WAS   27 1990 12     11  891   1   1  0
#> 955    2018    USA    DF     SEA   28 1989 19     18 1679   0   0  0
#> 956    2018    USA    DF     SEA   22 1995  1      0   16   0   0  0
#> 957    2018    CAN    FW      NJ   23 1994 15     11 1049   0   0  0
#> 958    2018    USA    MF      NJ   NA   NA  2      0   25   0   0  0
#> 959    2018    USA    MF     POR   23 1994 21     18 1587   0   0  0
#> 960    2018    NZL DF,MF     UTA   23 1994 19     16 1434   0   1  0
#> 961    2018    USA    MF     CHI   24 1993  8      6  497   0   0  0
#> 962    2018    USA DF,MF     HOU   27 1991 24     24 2160   1   0  0
#> 963    2018    USA    MF     ORL   21 1996  1      0   NA   0   0  0
#> 964    2018    BRA    DF     ORL   23 1994  9      3  318   0   0  0
#> 965    2018    AUS    DF     POR   17 2000 17     14 1299   1   0  0
#> 966    2018    AUS    DF     SEA   24 1994 16     16 1436   0   3  0
#> 967    2018    CAN    DF     HOU   29 1989 15     15 1331   0   1  0
#> 968    2018    CAN    DF      NC   29 1989  1      0   19   0   0  0
#> 969    2018    USA    DF     WAS   24 1993 22     21 1898   0   1  0
#> 970    2018    USA    DF     WAS   22 1995  1      1   90   0   0  0
#> 971    2018    USA    MF     CHI   24 1993 24     21 1906   1   4  0
#> 972    2018    USA    DF     CHI   24 1993 11     10  932   1   0  0
#> 973    2018    USA    DF     HOU   24 1993 12     12 1072   0   2  0
#> 974    2018    SCO    DF     UTA   28 1989 24     23 2088   0   1  0
#> 975    2018    SUI    FW     POR   27 1990 20     17 1407   5   3  0
#> 976    2018   <NA>    DF     WAS   23 1994  1      1   90   0   0  0
#> 977    2018    USA    FW      NC   22 1995  1      0   27   1   0  0
#> 978    2018    USA    MF      NC   24 1993 19     19 1710   0   0  0
#> 979    2018    USA DF,FW     SEA   29 1988  3      2  163   0   0  0
#> 980    2018    ENG    FW     HOU   26 1991 24     24 2155  10   2  2
#> 981    2018    BRA    FW      NC   26 1991 21     20 1731   8   2  0
#> 982    2018    USA    MF     CHI   25 1992 11      7  679   2   2  0
#> 983    2018    USA    FW      NJ   NA   NA 13     12 1048   4   1  0
#> 984    2018    USA    MF     WAS   22 1995 23     14 1448   0   0  0
#> 985    2018    USA    MF      NJ   23 1994  1      0    7   0   0  0
#> 986    2018    USA DF,MF      NC   25 1992 22     21 1801   8   5  0
#> 987    2018    USA    DF     WAS   24 1993 24     21 1948   0   0  0
#> 988    2018    USA    MF      NC   26 1991  2      1   94   0   0  0
#> 989    2018    USA    DF     ORL   30 1987 15     13 1091   1   0  0
#> 990    2018    AUS    MF     ORL   24 1993 17     12 1098   0   1  0
#> 991    2018    USA    MF     UTA   24 1993  7      6  577   0   0  0
#> 992    2018    USA    MF     CHI   24 1993  4      3  269   0   1  0
#> 993    2018    USA    MF     ORL   22 1996  2      0   32   0   0  0
#> 994    2018    NZL DF,FW      NC   28 1989 24     24 2160   2   2  0
#> 995    2018    USA DF,MF     CHI   25 1992 14     13 1126   0   0  0
#> 996    2018    USA    FW     WAS   21 1996 12      5  516   0   0  0
#> 997    2018    USA    FW     ORL   22 1995  5      0   48   0   0  0
#> 998    2018    USA    DF     HOU   24 1993  2      0   27   0   0  0
#> 999    2018    USA    FW     WAS   24 1993  5      1  152   0   0  0
#> 1000   2018    WAL    MF     SEA   31 1987 18     18 1543   2   1  0
#> 1001   2018    AUS DF,FW     POR   23 1994  6      2  276   0   0  0
#> 1002   2018    USA    DF      NJ   22 1995 21     21 1826   0   0  0
#> 1003   2018    USA    DF      NJ   25 1992 17     15 1285   0   0  0
#> 1004   2018    USA    DF      NJ   23 1994 18     16 1431   0   0  0
#> 1005   2018    USA    DF     CHI   25 1992 17     12 1246   0   0  0
#> 1006   2018    AUS    MF     UTA   25 1992 16     13 1068   0   1  0
#> 1007   2018    USA    FW     CHI   22 1995  8      4  318   0   0  0
#> 1008   2018    USA    FW      NJ   24 1993 21     17 1535   2   3  0
#> 1009   2018    USA    FW      NC   25 1992 23      8  783   3   4  0
#> 1010   2018    USA    MF     HOU   21 1996 19     15 1463   1   0  0
#> 1011   2018    USA    FW     WAS   22 1995 22     22 1927   4   1  0
#> 1012   2018    USA    MF     POR   29 1988 17     14 1269   7   7  0
#> 1013   2018    USA    FW     ORL   22 1995 21      7  814   4   0  0
#> 1014   2018    USA    DF      NC   24 1993 20     20 1779   0   4  0
#> 1015   2018    USA    FW     POR   23 1994 22     22 1980  13   2  0
#> 1016   2018    USA FW,MF      NJ   27 1991 10      2  217   0   0  0
#> 1017   2018    USA    DF     POR   23 1994 11      9  818   0   0  0
#> 1018   2018    MEX    FW     HOU   25 1992 12     12 1068   5   4  1
#> 1019   2018    MEX    FW     CHI   25 1992 11     11  964   3   2  1
#> 1020   2018    USA    MF     WAS   28 1989 17     15 1283   0   0  0
#> 1021   2018    USA    FW      NC   23 1995 12      0  176   0   0  0
#> 1022   2018    CMR    DF     WAS   29 1988 21     21 1890   0   0  0
#> 1023   2018    USA    FW     SEA   22 1995  3      0    3   0   0  0
#> 1024   2018    MEX    FW      NJ   23 1994 19     13 1166   4   2  0
#> 1025   2018    USA DF,MF     CHI   26 1991 10     10  900   0   0  0
#> 1026   2018    USA DF,MF     UTA   26 1991  6      5  433   0   0  0
#> 1027   2018    USA    MF     CHI   22 1995  7      3  214   1   0  0
#> 1028   2018    JPN    MF      NC   28 1989  2      1   98   0   0  0
#> 1029   2018    JPN FW,MF     SEA   32 1985 14     11  875   0   3  0
#> 1030   2018    USA    FW     HOU   22 1995 11      9  727   1   0  0
#> 1031   2018    AUS    MF     ORL   23 1995 20     20 1800   2   1  0
#> 1032   2018    AUS FW,MF     CHI   24 1993 19     19 1704  16   4  0
#> 1033   2018    RSA    FW     HOU   21 1996 16      2  375   2   3  0
#> 1034   2018    USA    MF      NJ   25 1992 24     24 2132   2   2  0
#> 1035   2018    USA    DF     SEA   24 1993 10      4  414   0   0  0
#> 1036   2018    USA DF,MF     POR   29 1988 20     20 1751   0   2  0
#> 1037   2018    USA DF,MF     ORL   33 1984 19     19 1675   0   2  0
#> 1038   2018    USA    DF      NC   20 1997  6      6  540   0   0  0
#> 1039   2018    USA    MF     UTA   24 1993 16      8  823   0   0  0
#> 1040   2018    USA    MF     HOU   22 1995 21      9  972   4   2  0
#> 1041   2018    USA    MF     WAS   22 1995 11      5  423   0   0  0
#> 1042   2018    CAN FW,MF      NJ   25 1992  2      0   33   0   0  0
#> 1043   2018    CAN FW,MF     SEA   25 1992  6      1  152   0   0  0
#> 1044   2018    USA    FW     ORL   27 1990 20     15 1431   6   2  0
#> 1045   2018    USA    MF      NJ   35 1982 18     17 1563   4   1  1
#> 1046   2018    USA DF,MF     WAS   35 1982 13      4  429   1   0  0
#> 1047   2018    USA    MF     SEA   30 1987 19     19 1710   3   1  0
#> 1048   2018    USA    FW     POR   23 1995 15      3  370   1   1  0
#> 1049   2018    USA    MF     UTA   28 1989 10      4  450   0   2  0
#> 1050   2018    BRA    FW     ORL   31 1986 17     15 1310   4   4  1
#> 1051   2018    CAN    MF     UTA   33 1984 21     18 1396   2   0  0
#> 1052   2018    USA DF,MF      NC   27 1990 22     22 1961   3   2  0
#> 1053   2018    USA FW,MF     CHI   28 1989 23     20 1716   5   3  0
#> 1054   2018    USA    FW     CHI   24 1993  2      0    9   0   0  0
#> 1055   2018    USA    FW     WAS   27 1990  1      1   70   0   0  0
#> 1056   2018    USA    FW      NJ   21 1996 20     17 1510   3   3  0
#> 1057   2018    USA    FW      NC   29 1988 23     21 1686   7   9  0
#> 1058   2018    USA    DF     SEA   23 1994 20     12 1156   0   0  0
#> 1059   2018    USA    FW      NJ   23 1994 11      3  350   0   0  0
#> 1060   2018    USA    DF     POR   25 1992 15     15 1305   0   0  0
#> 1061   2018    USA DF,MF     HOU   26 1991 11     11  919   2   0  0
#> 1062   2018    USA    MF      NC   25 1992 17     11 1088   3   2  0
#> 1063   2018    USA    DF     UTA   23 1994 10      6  639   0   0  0
#> 1064   2018    BRA    DF     ORL   39 1978 17     15 1400   0   0  0
#> 1065   2018    USA    FW     ORL   28 1989 19     17 1511   5   2  1
#> 1066   2018    USA DF,MF     UTA   32 1985 22     22 1869   0   0  0
#> 1067   2018    RSA    MF     HOU   19 1998 21     20 1788   1   1  0
#> 1068   2018    USA    MF     HOU   23 1994  1      0   13   0   0  0
#> 1069   2018    JPN    FW     CHI   30 1987 22     17 1608   4   7  1
#> 1070   2018    USA    MF     ORL   27 1990 20     13 1116   1   4  0
#> 1071   2018    USA    DF     CHI   23 1994 23     23 2059   1   0  0
#> 1072   2018    USA    FW     WAS   26 1991  1      0   20   0   0  0
#> 1073   2018    DEN    DF     SEA   31 1986 20     18 1654   1   1  0
#> 1074   2018    USA DF,FW     UTA   29 1988  8      7  518   1   0  0
#> 1075   2018    USA FW,MF      NC   33 1985  8      2  260   0   0  0
#> 1076   2018    IRL    FW      NC   23 1994 22     20 1752   0   2  0
#> 1077   2018    USA FW,MF     HOU   26 1992 19     18 1439   5   4  0
#> 1078   2018    USA    FW     POR   23 1994  8      3  310   0   0  0
#> 1079   2018    NGA FW,MF     WAS   24 1993 18     15 1193   3   0  0
#> 1080   2018    USA    DF     SEA   25 1992 20     20 1800   1   2  0
#> 1081   2018    USA    DF     ORL   24 1993 19     16 1381   0   0  0
#> 1082   2018    CAN    DF      NJ   22 1995  3      0   44   0   0  0
#> 1083   2018    BRA    DF     ORL   26 1991 10      8  694   0   0  0
#> 1084   2018    AUS    DF     HOU   28 1989  9      9  782   0   0  0
#> 1085   2018    USA    FW     UTA   29 1988 11     11  975   2   2  0
#> 1086   2018    USA    DF     ORL   27 1990 11     10  813   1   0  0
#> 1087   2018    CAN    FW     HOU   22 1995 20     11 1023   1   2  0
#> 1088   2018    USA    MF     WAS   23 1994  4      2  197   0   0  0
#> 1089   2018    USA    FW     WAS   19 1998 15     13 1082   2   1  0
#> 1090   2018    USA    FW     POR   22 1995 19     15 1299   0   0  0
#> 1091   2018    CAN DF,MF     WAS   22 1995 17     16 1384   0   0  0
#> 1092   2018    USA FW,MF     SEA   32 1985 16     15 1317   7   6  2
#> 1093   2018    AUS FW,MF     POR   23 1994 12      9  774   2   2  0
#> 1094   2018    USA    FW     UTA   23 1994 10      4  366   2   0  0
#> 1095   2018    USA    DF     POR   30 1987 17     16 1419   1   0  0
#> 1096   2018    USA DF,MF      NJ   25 1992 16     14 1356   0   0  0
#> 1097   2018    USA    DF      NC   23 1994  2      2  172   0   0  0
#> 1098   2018    USA FW,MF     UTA   30 1987 19     16 1300   5   1  0
#> 1099   2018    CRC    FW      NJ   24 1993 15     10  909   0   1  0
#> 1100   2018    USA    MF     POR   29 1988  5      1  161   0   0  0
#> 1101   2018    USA    DF     UTA   32 1985 20     19 1720   0   0  0
#> 1102   2018    CAN    MF     UTA   30 1987 21     20 1811   0   0  0
#> 1103   2018    USA    MF     HOU   26 1991  8      7  596   0   0  0
#> 1104   2018    USA    FW     WAS   22 1995  2      0   41   1   0  0
#> 1105   2018    USA    DF     CHI   27 1990  9      8  654   1   0  0
#> 1106   2018    AUS    FW     HOU   26 1991 15     11  949   2   2  0
#> 1107   2018    CAN FW,MF     POR   34 1983 24     24 2160   9   6  3
#> 1108   2018    USA    DF      NJ   23 1994 20     20 1654   0   0  0
#> 1109   2018    USA    FW     WAS   24 1993 23     23 2064   0   1  0
#> 1110   2018    JAM    MF     WAS   24 1993 13      5  495   0   1  0
#> 1111   2018    USA    DF     POR   24 1993 20     20 1755   1   1  0
#> 1112   2018    USA    MF      NC   24 1993 15      2  245   0   0  0
#> 1113   2018    USA    FW     SEA   27 1990 22      8  948   1   0  0
#> 1114   2018    USA    MF     CHI   27 1990 20     16 1451   0   0  0
#> 1115   2018    USA    FW     UTA   25 1992 23     10 1142   6   0  0
#> 1116   2018    NZL DF,MF      NJ   24 1993  9      8  774   0   0  0
#> 1117   2018    USA    MF     WAS   22 1995 23     22 1985   0   1  0
#> 1118   2018    ENG    FW     SEA   31 1986 24     24 2089   9   1  1
#> 1119   2018    BRA    MF      NJ   29 1988  8      5  396   0   0  0
#> 1120   2018    NOR    FW     UTA   29 1988  9      3  353   0   0  0
#> 1121   2018    USA    MF      NJ   22 1995 22     15 1240   2   1  0
#> 1122   2018    USA FW,MF     UTA   26 1991 14      5  478   1   1  0
#> 1123   2018    USA    FW     ORL   25 1992 21     17 1339   4   1  0
#> 1124   2018    JPN    MF     SEA   29 1988 15     15 1239   1   0  0
#> 1125   2018    USA    FW     CHI   23 1994 19     10  904   1   0  0
#> 1126   2018    USA    MF     ORL   23 1994 23     17 1658   2   0  0
#> 1127   2018    USA    FW     POR   23 1994 14      9  713   0   0  0
#> 1128   2018    USA    FW     WAS   34 1983  3      1   84   0   0  0
#> 1129   2018    USA    DF     SEA   24 1993 12      9  693   0   1  0
#> 1130   2018    NZL    FW     CHI   24 1993 10      4  377   1   1  0
#> 1131   2018    USA    FW      NC   24 1993 21     20 1708  14   5  1
#> 1132   2018    USA DF,MF      NC   21 1996  1      0   10   0   0  0
#> 1133   2018    USA    DF     CHI   25 1992 24     23 2040   0   4  0
#> 1134   2018    RSA    DF     HOU   30 1987 20     20 1720   0   0  0
#> 1135   2018    USA FW,MF     SEA   29 1988 19     14 1167   2   0  0
#> 1136   2018    USA    MF     CHI   25 1992  3      0   27   0   0  0
#> 1137   2018    ISL    MF     UTA   29 1988 24     24 2160   1   2  0
#> 1138   2018    CAN    DF     ORL   25 1992 23     23 2070   0   2  0
#> 1139   2018    USA    MF      NC   31 1986 20     20 1800   3   1  0
#> 1140   2019    CAN    FW     HOU   23 1995  7      5  373   0   0  0
#> 1141   2019    BRA    MF     POR   23 1995  7      4  371   1   0  0
#> 1142   2019    USA    MF     SEA   23 1995  9      7  603   0   0  0
#> 1143   2019    USA    MF     WAS   22 1997 19     12 1223   1   0  0
#> 1144   2019    USA    FW     SEA   21 1997 24     19 1699   6   2  0
#> 1145   2019    USA    DF     POR   23 1995 15     13 1089   0   0  0
#> 1146   2019    USA    DF     SEA   29 1989 23     23 2070   0   0  0
#> 1147   2019    USA    DF     WAS   25 1993  3      2  196   0   0  0
#> 1148   2019    ESP FW,MF     UTA   31 1987 21     19 1630   0   6  0
#> 1149   2019    USA    MF     POR   24 1994 10      7  651   0   1  0
#> 1150   2019    NZL DF,MF     UTA   24 1994 19     17 1504   0   0  0
#> 1151   2019    USA    MF     ORL   23 1995 19     16 1379   1   2  0
#> 1152   2019    USA    MF     HOU   NA   NA  1      0   NA   0   0  0
#> 1153   2019    USA    MF     CHI   25 1993 13     11  951   1   1  0
#> 1154   2019    USA DF,MF     HOU   28 1991 24     24 2160   1   0  0
#> 1155   2019    ISL    MF     POR   27 1991 21     17 1563   1   0  0
#> 1156   2019    MEX    FW     HOU   28 1990  8      0  129   0   1  0
#> 1157   2019    USA    MF     ORL   22 1996  8      6  496   0   0  0
#> 1158   2019    BRA    DF     ORL   24 1994 16      4  579   1   0  1
#> 1159   2019    AUS    DF     POR   18 2000 16     14 1222   0   1  0
#> 1160   2019    AUS    DF     SEA   25 1994 15     15 1305   0   2  0
#> 1161   2019    CAN    DF     HOU   30 1989 14     14 1217   0   0  0
#> 1162   2019    USA    FW     POR   23 1995 11      6  496   0   2  0
#> 1163   2019    USA    MF     CHI   25 1993 19     18 1612   1   0  0
#> 1164   2019    USA    DF     HOU   25 1993  1      1   90   0   0  0
#> 1165   2019    SCO    DF     UTA   29 1989 19     19 1710   1   0  0
#> 1166   2019    USA    DF     UTA   24 1994  2      0    7   0   0  0
#> 1167   2019    USA    DF     SEA   32 1986  7      3  290   0   0  0
#> 1168   2019    SUI    FW     POR   28 1990 12      9  761   1   1  0
#> 1169   2019   <NA>    DF     WAS   24 1994  9      3  382   1   0  0
#> 1170   2019    USA    MF      NC   25 1993 14     14 1260   0   0  0
#> 1171   2019    USA DF,FW     SEA   30 1988  2      0   33   0   0  0
#> 1172   2019    ENG    FW     HOU   27 1991 17     17 1529   5   1  1
#> 1173   2019    USA    DF     CHI   20 1998 13     13 1084   1   0  0
#> 1174   2019    BRA    FW      NC   27 1991 19     17 1529   8   7  0
#> 1175   2019    USA    MF     CHI   26 1992 21     18 1550   3   2  0
#> 1176   2019    USA    MF     WAS   22 1996 22     20 1747   4   0  0
#> 1177   2019    USA    FW     UTA   24 1994 11      1  166   1   0  0
#> 1178   2019    USA    FW      NJ   NA   NA 23     23 1959   2   0  0
#> 1179   2019    USA    MF     WAS   23 1995 22     18 1562   0   0  0
#> 1180   2019    USA DF,MF      NC   26 1992 13     11  999   7   4  0
#> 1181   2019    USA    DF      NJ   25 1993 23     23 2028   0   0  0
#> 1182   2019    USA    MF      NC   27 1991  3      0   65   1   0  0
#> 1183   2019    USA    MF      NJ   27 1991 17     15 1281   1   1  0
#> 1184   2019    USA    DF     ORL   31 1987 13      9  866   0   0  0
#> 1185   2019    AUS    MF     ORL   25 1993  8      7  628   0   1  0
#> 1186   2019    USA    MF     CHI   25 1993 16      2  317   2   0  0
#> 1187   2019    USA    MF     ORL   23 1996 18      4  546   0   0  0
#> 1188   2019    USA    DF     UTA   22 1996  1      0   NA   0   0  0
#> 1189   2019    SCO    FW     ORL   24 1994 11      9  773   0   1  0
#> 1190   2019    NZL DF,FW      NC   29 1989 20     20 1775   1   0  0
#> 1191   2019    USA DF,MF     CHI   26 1992 14     14 1260   0   1  0
#> 1192   2019    USA    FW     ORL   23 1995  9      3  322   1   1  0
#> 1193   2019    USA    FW     POR   21 1997  4      0   35   1   0  0
#> 1194   2019    USA    FW     WAS   25 1993 13      6  541   0   2  0
#> 1195   2019    USA    DF     ORL   21 1997  3      0   14   0   0  0
#> 1196   2019    USA    MF     WAS   21 1997 12      4  470   1   2  0
#> 1197   2019    USA    FW     HOU   25 1993 16      5  432   0   0  0
#> 1198   2019    WAL    MF     SEA   32 1987  5      5  414   3   1  0
#> 1199   2019    USA    DF      NJ   23 1996  4      4  360   0   0  0
#> 1200   2019    AUS DF,FW     POR   24 1994 17      9  837   3   2  0
#> 1201   2019    BRA    FW      NJ   24 1994  3      0   36   0   0  0
#> 1202   2019    USA    MF     CHI   24 1995  5      0   58   0   1  0
#> 1203   2019    USA    DF     CHI   26 1992 23     23 2054   0   0  0
#> 1204   2019    USA    MF     ORL   21 1997 17     16 1438   1   0  0
#> 1205   2019    USA    FW     SEA   25 1993 15     14 1036   2   0  0
#> 1206   2019    USA    FW      NC   26 1992 22     17 1314   9   5  0
#> 1207   2019    USA    MF     HOU   22 1996 24     21 1947   0   0  0
#> 1208   2019    AUS    DF     WAS   22 1996 10      8  508   0   2  0
#> 1209   2019    USA    FW     WAS   23 1995 24     24 2096   7   2  0
#> 1210   2019    USA    MF     POR   30 1988 13     12 1093   3   3  0
#> 1211   2019    USA    FW     ORL   23 1995 24     22 1851   4   2  0
#> 1212   2019    USA    DF      NC   25 1993 24     24 2160   1   6  0
#> 1213   2019    USA    FW     POR   24 1994 13     13 1147   1   2  0
#> 1214   2019    USA FW,MF      NJ   28 1991 21     11  960   2   1  0
#> 1215   2019    USA    DF     POR   24 1994  3      3  251   0   0  0
#> 1216   2019    USA    DF     WAS   22 1996  4      0   50   0   0  0
#> 1217   2019    MEX    FW     HOU   26 1992 24     23 2082   5   3  0
#> 1218   2019    USA    MF     WAS   29 1989 22     22 1935   0   3  0
#> 1219   2019    USA    MF      NJ   22 1996 16     12 1116   0   1  0
#> 1220   2019    USA    FW     SEA   24 1995 17     11  900   4   1  0
#> 1221   2019    ESP    DF     SEA   23 1995 12     10  900   1   0  0
#> 1222   2019    CMR    DF      NJ   30 1988 15     15 1305   0   0  0
#> 1223   2019    USA    FW     SEA   23 1995  1      0   21   0   0  0
#> 1224   2019    MEX    FW     CHI   24 1994 19     11 1044   1   3  0
#> 1225   2019    USA DF,MF     UTA   27 1991  8      8  675   0   0  0
#> 1226   2019    JPN FW,MF      NJ   33 1985 19     10  996   0   1  0
#> 1227   2019    AUS DF,MF     SEA   28 1990  3      0  103   0   0  0
#> 1228   2019    AUS DF,MF     WAS   28 1990  6      4  347   0   0  0
#> 1229   2019    CAN    MF     SEA   26 1992  6      2  199   0   0  0
#> 1230   2019    AUS    MF     ORL   24 1995 15     15 1349   1   0  0
#> 1231   2019    AUS FW,MF     CHI   25 1993 21     21 1863  18   5  0
#> 1232   2019    USA    MF      NJ   26 1992 24     24 2160   1   3  1
#> 1233   2019    USA    DF     ORL   29 1989  2      2  132   0   0  0
#> 1234   2019    USA    FW     HOU   NA   NA 16      2  363   0   0  0
#> 1235   2019    USA DF,MF     POR   30 1988 23     23 2017   0   4  0
#> 1236   2019    USA DF,MF     ORL   34 1984 12     12 1080   0   0  0
#> 1237   2019    USA    DF      NC   21 1997  9      9  810   0   0  0
#> 1238   2019    USA    MF     UTA   25 1993 22     22 1859   2   2  0
#> 1239   2019    USA    MF     UTA   26 1992 11      9  633   0   0  0
#> 1240   2019    USA    MF     HOU   23 1995  4      1  117   0   0  0
#> 1241   2019    USA    MF     WAS   23 1995  6      5  450   1   1  0
#> 1242   2019    USA    FW     ORL   28 1990  3      0   28   0   0  0
#> 1243   2019    USA DF,MF      NJ   33 1985 13     12 1079   0   0  0
#> 1244   2019    USA    MF      NJ   36 1982 14     14 1260   8   1  1
#> 1245   2019    AUS    MF     WAS   24 1994 15      9  796   1   0  0
#> 1246   2019    USA    MF     SEA   31 1987 14     14 1223   0   2  0
#> 1247   2019    USA    FW     POR   24 1995 12      1  277   2   1  0
#> 1248   2019    USA    DF     UTA   NA   NA  7      6  442   0   1  0
#> 1249   2019    BRA    FW     ORL   32 1986 14     14 1254   6   0  1
#> 1250   2019    USA DF,MF      NC   28 1990 20     20 1772   0   5  0
#> 1251   2019    JAM    FW     WAS   25 1993 17      9  905   3   1  0
#> 1252   2019    USA FW,MF     CHI   29 1989  3      3  217   0   0  0
#> 1253   2019    USA    FW     WAS   28 1990  1      0   38   1   0  0
#> 1254   2019    USA    FW      NJ   22 1996  6      4  386   0   1  0
#> 1255   2019    USA    FW     CHI   22 1996 16      8  658   1   0  0
#> 1256   2019    JAM    FW     HOU   22 1996  1      1   54   0   0  0
#> 1257   2019    USA    FW      NC   30 1988 14      9  860   5   3  0
#> 1258   2019    USA    DF     WAS   21 1997  6      5  392   0   0  0
#> 1259   2019    USA    DF     SEA   24 1994 15     10 1001   0   1  0
#> 1260   2019    USA    FW      NC   24 1994  3      0   41   1   0  0
#> 1261   2019    USA    FW      NJ   24 1994  3      0   14   0   0  0
#> 1262   2019    USA    DF     POR   26 1992 19     19 1665   0   0  0
#> 1263   2019    USA DF,MF     HOU   27 1991 22     20 1818   4   1  0
#> 1264   2019    USA    MF      NC   26 1992 12     11  995   2   1  2
#> 1265   2019    USA    MF      NC   NA   NA  2      0   45   0   0  0
#> 1266   2019    USA    DF     UTA   24 1994  4      2  210   0   0  0
#> 1267   2019    USA    FW      NJ   22 1996 23     20 1759   2   1  0
#> 1268   2019    USA    FW     ORL   29 1989  6      5  395   0   0  0
#> 1269   2019    USA DF,MF     UTA   33 1985  8      7  611   0   0  0
#> 1270   2019    USA    DF     HOU   25 1993  9      9  752   0   0  0
#> 1271   2019    JPN    FW     CHI   31 1987 24     24 2114   8   8  1
#> 1272   2019    USA    MF     HOU   28 1990 22     19 1663   1   2  0
#> 1273   2019    USA    DF     CHI   24 1994 21     18 1539   0   0  0
#> 1274   2019    USA    FW     UTA   27 1991  2      0   25   0   0  0
#> 1275   2019    USA    FW     WAS   25 1993 22     22 1913   0   0  0
#> 1276   2019    DEN    DF     SEA   32 1986 21     19 1721   0   2  0
#> 1277   2019    USA DF,FW     UTA   30 1988  4      2  242   0   1  0
#> 1278   2019    USA FW,MF      NC   34 1985 13      4  437   1   1  0
#> 1279   2019    IRL    FW      NC   24 1994 23     22 1966   0   1  0
#> 1280   2019    USA    MF     POR   22 1996  3      1   92   0   0  0
#> 1281   2019    USA FW,MF     HOU   27 1992 23     22 1801   2   1  0
#> 1282   2019    USA    FW     SEA   24 1994 20      8  994   2   1  0
#> 1283   2019    USA    DF     SEA   26 1992 20     20 1729   0   0  0
#> 1284   2019    USA    DF     ORL   25 1993 20     19 1688   0   1  0
#> 1285   2019    CAN    DF      NJ   23 1995 11      1  168   0   1  0
#> 1286   2019    USA    DF     POR   21 1997  3      1  102   0   0  0
#> 1287   2019    AUS    DF     HOU   29 1989  9      9  810   0   0  0
#> 1288   2019    USA    FW     UTA   30 1988 14     14 1255   8   2  0
#> 1289   2019    USA    DF     ORL   28 1990 10      9  828   1   0  0
#> 1290   2019    CAN    FW     HOU   23 1995  4      4  343   1   0  0
#> 1291   2019    USA    DF     HOU   22 1997 15     15 1323   0   1  0
#> 1292   2019    USA    MF     HOU   25 1993  3      0   16   0   0  0
#> 1293   2019    USA    MF     SEA   24 1994  6      4  413   0   0  0
#> 1294   2019    USA    FW      NC   21 1997 14      6  553   2   1  0
#> 1295   2019    USA    FW     WAS   20 1998  9      9  765   2   2  0
#> 1296   2019    USA    FW     POR   23 1995 22     16 1332   8   1  0
#> 1297   2019    CAN DF,MF     SEA   23 1995  6      4  357   0   0  0
#> 1298   2019    USA FW,MF     SEA   33 1985  5      3  333   0   0  0
#> 1299   2019    AUS FW,MF     POR   24 1994 14     11 1041   4   0  0
#> 1300   2019    USA    DF     ORL   23 1995  7      7  602   0   0  0
#> 1301   2019    USA    DF     POR   31 1987 23     17 1651   0   0  0
#> 1302   2019    USA DF,MF      NJ   26 1992  8      5  510   1   0  0
#> 1303   2019    USA    DF      NC   24 1994 13     11  908   0   1  0
#> 1304   2019    USA FW,MF     UTA   31 1987 24     24 2092   9   0  1
#> 1305   2019    CRC    FW      NJ   25 1993 22     22 1921   3   3  0
#> 1306   2019    MEX    DF     HOU   26 1992 10      8  762   0   1  0
#> 1307   2019    USA    MF     POR   30 1988  3      2  153   0   0  0
#> 1308   2019    MEX    MF     CHI   22 1996  7      0  134   0   0  0
#> 1309   2019    USA    DF     UTA   33 1985 14     14 1260   1   0  0
#> 1310   2019    CAN    MF     HOU   30 1988 18     16 1407   0   1  0
#> 1311   2019    CAN    MF     UTA   31 1987 17     17 1530   0   0  0
#> 1312   2019    USA    DF     POR   24 1994 15     13 1123   0   0  0
#> 1313   2019    USA    DF     CHI   21 1997  2      0   13   0   0  0
#> 1314   2019    USA    FW     WAS   23 1995  8      4  322   0   2  0
#> 1315   2019    USA    DF     CHI   28 1990 23     23 2055   2   3  0
#> 1316   2019    AUS    FW     HOU   27 1991 10      4  411   2   2  0
#> 1317   2019    CAN FW,MF     POR   35 1983 17     17 1530   9   1  3
#> 1318   2019    USA    DF      NJ   24 1994 24     24 2115   0   0  0
#> 1319   2019    USA    DF     POR   25 1993 13     12 1087   2   0  0
#> 1320   2019    USA    MF      NC   25 1993  8      0   72   0   0  0
#> 1321   2019    USA    FW     SEA   28 1990  1      1   26   0   0  0
#> 1322   2019    SWE    MF      NC   29 1989 11      2  287   2   1  0
#> 1323   2019    USA    DF     WAS   21 1997 24     24 2160   1   1  0
#> 1324   2019    USA    MF     CHI   28 1990 19     11  995   0   0  0
#> 1325   2019    USA    FW     SEA   NA   NA  5      0  146   0   0  0
#> 1326   2019    USA    FW     UTA   26 1992 24     16 1477   2   1  0
#> 1327   2019    USA    FW     UTA   NA   NA  3      0   16   0   0  0
#> 1328   2019    USA    MF     WAS   23 1995 23     23 2070   2   0  0
#> 1329   2019    USA    FW     CHI   21 1997  2      0   15   0   0  0
#> 1330   2019    ENG    FW     SEA   32 1986 16     15 1239   5   3  0
#> 1331   2019    USA    FW     WAS   25 1994 13      7  665   3   1  0
#> 1332   2019    USA FW,MF     UTA   27 1991 16      4  529   0   1  0
#> 1333   2019    USA    FW     ORL   26 1992 17     15 1312   4   2  1
#> 1334   2019    JPN    MF     SEA   30 1988  5      4  305   0   1  0
#> 1335   2019    USA    FW     CHI   24 1994 11      5  486   2   3  0
#> 1336   2019    USA    MF     ORL   21 1997 19     14 1222   1   0  0
#> 1337   2019    USA    DF     UTA   NA   NA  9      7  688   0   0  0
#> 1338   2019    USA    MF     ORL   24 1994 19     16 1341   0   0  0
#> 1339   2019    USA    FW     POR   24 1994  1      0   NA   0   0  0
#> 1340   2019    USA    FW     UTA   24 1994 18     13 1244   0   1  0
#> 1341   2019    USA    DF     SEA   25 1993  4      1  138   0   0  0
#> 1342   2019    NZL    FW     SEA   25 1993  9      8  655   2   1  0
#> 1343   2019    USA    FW      NC   25 1993 22     21 1850  12   5  0
#> 1344   2019    USA DF,MF      NC   22 1996  4      3  232   0   0  0
#> 1345   2019    USA    DF     CHI   26 1992 17     17 1505   1   1  0
#> 1346   2019    USA    MF      NJ   NA   NA  5      1  186   0   1  0
#> 1347   2019    USA FW,MF     SEA   30 1988 21     20 1747   1   0  0
#> 1348   2019    ISL    MF     UTA   30 1988 24     19 1795   1   4  0
#> 1349   2019    CAN    DF     ORL   26 1992 16     16 1440   1   0  0
#> 1350   2019    USA    MF      NC   32 1986 22     19 1670   0   1  0
#>      p_katt crd_y crd_r person_id
#> 1         0     0     0       344
#> 2         1     0     0       117
#> 3         1     2     0         6
#> 4         0     1     0       300
#> 5         0     0     0       202
#> 6         0     0     0       202
#> 7         0     0     0        28
#> 8         0     0     0       290
#> 9         0     1     0        56
#> 10        0     0     0       313
#> 11        0     0     0       365
#> 12        0     0     0       454
#> 13        0     0     0       414
#> 14        0     0     0       203
#> 15        0     1     0       341
#> 16        0     0     0       506
#> 17        0     0     0       487
#> 18        0     0     0       487
#> 19        0     3     0       315
#> 20        0     0     0        71
#> 21        0     0     0       266
#> 22        0     0     0       465
#> 23        0     1     0       429
#> 24        0     0     0       429
#> 25        0     1     2       270
#> 26        1     1     0       311
#> 27        0     0     0       236
#> 28        0     1     0       499
#> 29        0     0     0       343
#> 30        0     2     0       342
#> 31        0     1     0       214
#> 32        0     3     0        47
#> 33        0     1     0       153
#> 34        0     0     0       490
#> 35        0     0     0       327
#> 36        0     0     0       459
#> 37        0     4     0       211
#> 38        0     1     0        63
#> 39        0     0     0       291
#> 40        0     1     0       121
#> 41        0     0     0       247
#> 42        0     0     0       193
#> 43        2     0     0       462
#> 44        0     0     0       129
#> 45        0     2     0       432
#> 46        0     0     0       380
#> 47        0     1     0       106
#> 48        2     2     0       189
#> 49        0     0     0        42
#> 50        0     0     0       143
#> 51        0     2     0       143
#> 52        0     4     0       491
#> 53        0     0     0       474
#> 54        0     0     0       368
#> 55        0     0     0       289
#> 56        0     0     0       130
#> 57        1     0     0       292
#> 58        0     0     0       237
#> 59        0     1     0       204
#> 60        0     1     0       447
#> 61        0     1     0       493
#> 62        0     0     0       162
#> 63        0     0     0       264
#> 64        0     0     0       109
#> 65        0     0     0       241
#> 66        0     0     0        36
#> 67        0     1     0       439
#> 68        0     0     0       185
#> 69        0     0     0       230
#> 70        0     2     0        57
#> 71        0     2     0        15
#> 72        3     4     0       251
#> 73        0     1     0       282
#> 74        0     0     0         7
#> 75        0     1     0         7
#> 76        0     1     0       472
#> 77        0     0     0       316
#> 78        0     0     0       309
#> 79        0     4     0        76
#> 80        0     2     0       216
#> 81        0     2     0       378
#> 82        0     2     0        18
#> 83        1     0     0        83
#> 84        0     0     0       476
#> 85        0     0     0       338
#> 86        0     1     0       402
#> 87        0     0     0       144
#> 88        4     0     0       128
#> 89        0     3     0       371
#> 90        0     3     0        22
#> 91        0     0     0        61
#> 92        0     0     0       488
#> 93        0     0     0       212
#> 94        0     0     0       212
#> 95        0     2     0       269
#> 96        0     0     0       279
#> 97        0     0     0       367
#> 98        0     2     0       280
#> 99        0     0     0        81
#> 100       1     4     0        11
#> 101       0     0     0        78
#> 102       0     1     0        78
#> 103       1     2     0       101
#> 104       0     0     0        45
#> 105       0     0     0       392
#> 106       0     0     0       480
#> 107       0     0     0       480
#> 108       0     2     0       257
#> 109       0     0     0       148
#> 110       1     1     0       183
#> 111       0     0     0       323
#> 112       0     0     0       467
#> 113       0     2     0       302
#> 114       0     0     0       320
#> 115       0     0     0        98
#> 116       0     2     0       108
#> 117       0     1     0       492
#> 118       0     1     0       418
#> 119       0     0     0        84
#> 120       0     0     0       395
#> 121       0     1     0       360
#> 122       0     2     0       145
#> 123       0     2     0       238
#> 124       0     1     0       225
#> 125       0     1     0       217
#> 126       0     1     2       209
#> 127       0     0     0        12
#> 128       0     1     0        35
#> 129       1     0     0       303
#> 130       0     1     0       191
#> 131       0     0     0        48
#> 132       1     0     1       463
#> 133       0     0     0       243
#> 134       0     0     0       127
#> 135       0     3     1       296
#> 136       0     1     0       366
#> 137       0     0     0       213
#> 138       0     0     0       283
#> 139       2     2     0       102
#> 140       0     1     0       227
#> 141       0     0     0       199
#> 142       0     0     0       307
#> 143       0     0     0       307
#> 144       0     0     0       326
#> 145       0     0     0       271
#> 146       0     0     0       157
#> 147       0     2     0       420
#> 148       0     1     0       319
#> 149       4     2     0         4
#> 150       0     3     0       405
#> 151       0     0     0       489
#> 152       0     1     0       188
#> 153       0     0     0       188
#> 154       0     0     0       113
#> 155       0     1     0        87
#> 156       0     1     0       430
#> 157       0     0     0       107
#> 158       0     1     0       397
#> 159       0     1     0       233
#> 160       0     1     0       255
#> 161       0     0     0       312
#> 162       0     0     0       318
#> 163       0     0     0       275
#> 164       0     1     0       353
#> 165       0     1     0       154
#> 166      NA     0     0       190
#> 167      NA     1     0       117
#> 168      NA     0     0         6
#> 169      NA     2     0       479
#> 170      NA     1     1       220
#> 171      NA     0     0       300
#> 172      NA     2     0       202
#> 173      NA     1     0       504
#> 174      NA     0     0        28
#> 175      NA     2     0       290
#> 176      NA     2     0       461
#> 177      NA     0     0        56
#> 178      NA     0     0       313
#> 179      NA     0     0       497
#> 180      NA     1     0       454
#> 181      NA     0     0       357
#> 182      NA     0     0       179
#> 183      NA     4     0        27
#> 184      NA     2     0       203
#> 185      NA     2     0       341
#> 186      NA     1     0       406
#> 187      NA     1     0       506
#> 188      NA     0     0       464
#> 189      NA     1     0       315
#> 190      NA     0     0       465
#> 191      NA     0     0       400
#> 192      NA     0     0       429
#> 193      NA     1     0        52
#> 194      NA     0     0       270
#> 195      NA     1     0       311
#> 196      NA     0     1       311
#> 197      NA     0     0       272
#> 198      NA     1     0       236
#> 199      NA     0     0       496
#> 200      NA     0     0       346
#> 201      NA     0     0       382
#> 202      NA     1     0       114
#> 203      NA     1     0       276
#> 204      NA     3     0        47
#> 205      NA     1     0       153
#> 206      NA     0     0       306
#> 207      NA     0     0       502
#> 208      NA     2     0         3
#> 209      NA     4     0       228
#> 210      NA     1     1       327
#> 211      NA     0     0       407
#> 212      NA     0     0       459
#> 213      NA     1     0       219
#> 214      NA     4     0       211
#> 215      NA     0     0       263
#> 216      NA     4     0        63
#> 217      NA     0     0       121
#> 218      NA     2     0       247
#> 219      NA     0     0       267
#> 220      NA     4     0       432
#> 221      NA     0     0       380
#> 222      NA     1     0       106
#> 223      NA     0     0       245
#> 224      NA     1     0        42
#> 225      NA     1     0       446
#> 226      NA     0     0       352
#> 227      NA     1     0       491
#> 228      NA     1     0       184
#> 229      NA     2     0       474
#> 230      NA     0     0       368
#> 231      NA     0     0       368
#> 232      NA     0     0       292
#> 233      NA     2     0       204
#> 234      NA     2     0       447
#> 235      NA     0     0       493
#> 236      NA     0     0       222
#> 237      NA     0     0       264
#> 238      NA     1     0       443
#> 239      NA     6     0       109
#> 240      NA     1     0       232
#> 241      NA     0     0       390
#> 242      NA     0     0        36
#> 243      NA     1     0       439
#> 244      NA     0     0       155
#> 245      NA     1     0       230
#> 246      NA     0     0       391
#> 247      NA     0     0       363
#> 248      NA     2     0        57
#> 249      NA     1     0        15
#> 250      NA     0     0       251
#> 251      NA     2     0       251
#> 252      NA     0     0       336
#> 253      NA     2     0         7
#> 254      NA     2     0        30
#> 255      NA     2     0       472
#> 256      NA     3     0        70
#> 257      NA     0     0       316
#> 258      NA     0     0       309
#> 259      NA     0     0       273
#> 260      NA     5     0        76
#> 261      NA     2     0       216
#> 262      NA     1     0       378
#> 263      NA     1     0        18
#> 264      NA     2     0       500
#> 265      NA     0     0       476
#> 266      NA     0     0       386
#> 267      NA     3     0       402
#> 268      NA     4     0       144
#> 269      NA     2     0       128
#> 270      NA     1     0       371
#> 271      NA     5     0        22
#> 272      NA     0     0       488
#> 273      NA     0     0       494
#> 274      NA     0     0       212
#> 275      NA     0     0       260
#> 276      NA     3     0       150
#> 277      NA     0     0       280
#> 278      NA     0     0        11
#> 279      NA     0     0       426
#> 280      NA     1     0       356
#> 281      NA     2     0       254
#> 282      NA     0     0        78
#> 283      NA     3     0       389
#> 284      NA     2     0       101
#> 285      NA     3     0        45
#> 286      NA     0     0       110
#> 287      NA     0     0       480
#> 288      NA     0     0       257
#> 289      NA     3     0       183
#> 290      NA     0     0       323
#> 291      NA     0     0       467
#> 292      NA     1     0       253
#> 293      NA     4     1       409
#> 294      NA     0     0       175
#> 295      NA     0     0       262
#> 296      NA     0     0       381
#> 297      NA     0     0        98
#> 298      NA     1     0       403
#> 299      NA     0     0        96
#> 300      NA     0     0       492
#> 301      NA     2     0       418
#> 302      NA     3     0       360
#> 303      NA     0     0       401
#> 304      NA     3     0       145
#> 305      NA     1     0       201
#> 306      NA     2     1       238
#> 307      NA     0     0       132
#> 308      NA     2     0       206
#> 309      NA     0     0        31
#> 310      NA     1     0        38
#> 311      NA     4     1        35
#> 312      NA     2     1       303
#> 313      NA     3     0       191
#> 314      NA     1     0        48
#> 315      NA     1     0       463
#> 316      NA     0     0       243
#> 317      NA     1     0       366
#> 318      NA     1     0        53
#> 319      NA     1     0        53
#> 320      NA     0     0       164
#> 321      NA     2     0       102
#> 322      NA     0     0        13
#> 323      NA     1     0       227
#> 324      NA     0     0       208
#> 325      NA     1     0       423
#> 326      NA     1     0       199
#> 327      NA     1     0       404
#> 328      NA     0     0        92
#> 329      NA     0     0       134
#> 330      NA     2     1       369
#> 331      NA     1     1       234
#> 332      NA     1     0       218
#> 333      NA     0     0       177
#> 334      NA     0     0       326
#> 335      NA     0     0       271
#> 336      NA     0     0       157
#> 337      NA     1     0       420
#> 338      NA     0     0       112
#> 339      NA     1     0         4
#> 340      NA     1     0       405
#> 341      NA     0     0       405
#> 342      NA     0     0       375
#> 343      NA     0     0       113
#> 344      NA     1     0        87
#> 345      NA     0     0       397
#> 346      NA     2     0       233
#> 347      NA     5     0       255
#> 348      NA     0     0       421
#> 349      NA     1     0        50
#> 350      NA     2     0       353
#> 351      NA     0     0       285
#> 352      NA     0     0        34
#> 353      NA     1     0       220
#> 354      NA     0     0       300
#> 355      NA     1     0       170
#> 356      NA     0     0       202
#> 357      NA     0     0       504
#> 358      NA     0     0       413
#> 359      NA     0     0       176
#> 360      NA     0     0        17
#> 361      NA     0     0       161
#> 362      NA     0     0        28
#> 363      NA     1     0       290
#> 364      NA     0     0       235
#> 365      NA     0     0        51
#> 366      NA     1     0        56
#> 367      NA     1     0       313
#> 368      NA     0     0       454
#> 369      NA     0     0       385
#> 370      NA     0     0        27
#> 371      NA     3     0       146
#> 372      NA     1     0       203
#> 373      NA     0     0       341
#> 374      NA     2     0        68
#> 375      NA     0     0       464
#> 376      NA     1     0       315
#> 377      NA     0     0        20
#> 378      NA     0     0       224
#> 379      NA     0     0       501
#> 380      NA     0     0       252
#> 381      NA     3     0       120
#> 382      NA     0     0       475
#> 383      NA     1     0       415
#> 384      NA     1     0       465
#> 385      NA     1     0       400
#> 386      NA     0     0       376
#> 387      NA     0     0        23
#> 388      NA     1     0         1
#> 389      NA     0     0       270
#> 390      NA     0     0       422
#> 391      NA     1     0       272
#> 392      NA     1     0       288
#> 393      NA     2     0       496
#> 394      NA     0     0       484
#> 395      NA     0     0       114
#> 396      NA     0     0        72
#> 397      NA     0     0       142
#> 398      NA     1     0       276
#> 399      NA     2     0        47
#> 400      NA     0     0       502
#> 401      NA     2     0         3
#> 402      NA     1     0       228
#> 403      NA     2     0       327
#> 404      NA     1     0       407
#> 405      NA     2     0       459
#> 406      NA     0     0       194
#> 407      NA     0     0       219
#> 408      NA     0     1       211
#> 409      NA     0     0       263
#> 410      NA     1     0        63
#> 411      NA     1     0       121
#> 412      NA     1     0       247
#> 413      NA     0     0        24
#> 414      NA     0     0       106
#> 415      NA     0     0       455
#> 416      NA     4     0       456
#> 417      NA     1     0       281
#> 418      NA     2     0       446
#> 419      NA     0     0       277
#> 420      NA     0     0       261
#> 421      NA     0     0       352
#> 422      NA     0     0       491
#> 423      NA     1     0       474
#> 424      NA     0     0       368
#> 425      NA     0     0       377
#> 426      NA     0     0       192
#> 427      NA     0     0       292
#> 428      NA     0     0       431
#> 429      NA     0     0       204
#> 430      NA     0     0       460
#> 431      NA     3     0       493
#> 432      NA     0     0       222
#> 433      NA     1     0       448
#> 434      NA     0     0       301
#> 435      NA     0     0        91
#> 436      NA     3     0       162
#> 437      NA     2     0       264
#> 438      NA     3     0       443
#> 439      NA     1     0       232
#> 440      NA     0     0        80
#> 441      NA     0     0       439
#> 442      NA     3     0       449
#> 443      NA     3     1       230
#> 444      NA     0     0        21
#> 445      NA     0     0       363
#> 446      NA     2     0        57
#> 447      NA     0     0        15
#> 448      NA     0     0        69
#> 449      NA     1     0       251
#> 450      NA     0     0       314
#> 451      NA     0     0       336
#> 452      NA     0     0       205
#> 453      NA     0     0       294
#> 454      NA     1     0         7
#> 455      NA     1     0        30
#> 456      NA     0     0       472
#> 457      NA     0     1        70
#> 458      NA     0     0       364
#> 459      NA     0     0       309
#> 460      NA     2     0       273
#> 461      NA     0     0        76
#> 462      NA     0     0       216
#> 463      NA     2     0       378
#> 464      NA     3     0        18
#> 465      NA     0     0       350
#> 466      NA     1     0       476
#> 467      NA     1     0       386
#> 468      NA     6     0       144
#> 469      NA     2     0       128
#> 470      NA     1     0       371
#> 471      NA     0     0        22
#> 472      NA     1     0       466
#> 473      NA     2     0       181
#> 474      NA     0     0       488
#> 475      NA     0     0       256
#> 476      NA     0     0       212
#> 477      NA     1     0       150
#> 478      NA     0     0       280
#> 479      NA     2     0       441
#> 480      NA     0     0        81
#> 481      NA     1     0        11
#> 482      NA     1     0       426
#> 483      NA     0     0       356
#> 484      NA     2     0       389
#> 485      NA     2     0       101
#> 486      NA     0     0         8
#> 487      NA     0     0        45
#> 488      NA     0     0        45
#> 489      NA     0     0       110
#> 490      NA     1     0       257
#> 491      NA     0     0       183
#> 492      NA     0     0       467
#> 493      NA     0     0       253
#> 494      NA     1     0       396
#> 495      NA     0     0       165
#> 496      NA     3     0       359
#> 497      NA     2     0       381
#> 498      NA     0     0        98
#> 499      NA     2     0       471
#> 500      NA     0     0       105
#> 501      NA     0     0       453
#> 502      NA     0     0        96
#> 503      NA     1     0       492
#> 504      NA     0     0       492
#> 505      NA     0     0        67
#> 506      NA     1     0       418
#> 507      NA     0     0       360
#> 508      NA     1     0       182
#> 509      NA     0     0       145
#> 510      NA     1     0       238
#> 511      NA     0     0       450
#> 512      NA     1     0       468
#> 513      NA     0     0        31
#> 514      NA     2     0        35
#> 515      NA     0     0       303
#> 516      NA     1     0        48
#> 517      NA     2     0       243
#> 518      NA     0     0       296
#> 519      NA     0     0       366
#> 520      NA     1     0       164
#> 521      NA     1     0       283
#> 522      NA     0     0       102
#> 523      NA     0     0        13
#> 524      NA     0     0       208
#> 525      NA     1     0       199
#> 526      NA     1     0       404
#> 527      NA     0     0        92
#> 528      NA     0     0       369
#> 529      NA     0     0       218
#> 530      NA     0     0       419
#> 531      NA     1     0       177
#> 532      NA     0     0       157
#> 533      NA     1     0       420
#> 534      NA     1     0       246
#> 535      NA     0     0       469
#> 536      NA     0     0       349
#> 537      NA     0     0        73
#> 538      NA     0     0       489
#> 539      NA     0     0        87
#> 540      NA     0     0       268
#> 541      NA     1     0       430
#> 542      NA     0     0        75
#> 543      NA     1     0       321
#> 544      NA     4     0       233
#> 545      NA     1     0       255
#> 546      NA     0     0       421
#> 547      NA     0     0        40
#> 548      NA     0     0        50
#> 549      NA     2     1       353
#> 550       0     2     0       287
#> 551       0     0     0       285
#> 552       0     1     0        34
#> 553       0     1     0        10
#> 554       1     1     0       504
#> 555       0     0     0       176
#> 556       0     0     0       161
#> 557       0     1     0       290
#> 558       0     0     0       197
#> 559       0     3     0       163
#> 560       0     2     0       223
#> 561       0     0     0       354
#> 562       0     0     0        89
#> 563       0     0     0       239
#> 564       0     0     0       385
#> 565       0     1     0        27
#> 566       0     4     0       146
#> 567       0     1     0       116
#> 568       0     0     0       203
#> 569       0     0     0        99
#> 570       0     0     0       464
#> 571       0     1     0       196
#> 572       0     1     0        20
#> 573       0     0     0       501
#> 574       0     0     0       120
#> 575       0     0     0       475
#> 576       0     1     0       259
#> 577       0     3     0       415
#> 578       0     1     0       358
#> 579       0     0     0       376
#> 580       0     0     0        23
#> 581       2     2     0         1
#> 582       0     1     0       270
#> 583       0     2     0       416
#> 584       0     0     0       311
#> 585       0     0     0       272
#> 586       0     0     0       496
#> 587       0     1     0       331
#> 588       0     1     0       393
#> 589       0     0     0       114
#> 590       0     1     0        72
#> 591       0     3     0       142
#> 592       0     1     0       276
#> 593       0     1     0        47
#> 594       0     0     1        59
#> 595       0     1     0       306
#> 596       0     2     0       502
#> 597       0     0     1         3
#> 598       0     1     0       228
#> 599       0     2     0       327
#> 600       0     0     0        65
#> 601       0     0     0       194
#> 602       0     4     0       211
#> 603       0     0     0       351
#> 604       0     1     0       263
#> 605       0     0     0       481
#> 606       0     0     0       297
#> 607       0     0     0        24
#> 608       0     0     0       210
#> 609       0     1     0       298
#> 610       0     0     0       106
#> 611       0     0     0       445
#> 612       0     0     0       455
#> 613       1     1     1       456
#> 614       0     2     0       281
#> 615       0     0     0       446
#> 616       0     2     0       373
#> 617       0     1     0       277
#> 618       0     0     0       352
#> 619       0     2     0        64
#> 620       0     1     1       491
#> 621       0     0     0       368
#> 622       0     0     0        25
#> 623       1     2     0       192
#> 624       0     4     0       308
#> 625       0     1     0       204
#> 626       0     2     0       460
#> 627       0     0     0       493
#> 628       0     0     0       310
#> 629       0     0     0       162
#> 630       0     2     0       443
#> 631       0     3     0       394
#> 632       0     0     0       232
#> 633       0     0     0       195
#> 634       0     0     0       171
#> 635       0     0     0        80
#> 636       0     0     0       390
#> 637       0     3     0         9
#> 638       0     0     0       439
#> 639       4     0     0       449
#> 640       0     5     0       230
#> 641       0     1     0        21
#> 642       0     1     0       363
#> 643       0     0     0        57
#> 644       0     2     0        15
#> 645       0     0     0       136
#> 646       0     1     0       251
#> 647       0     1     0       314
#> 648       0     0     0       336
#> 649       0     1     0         7
#> 650       0     0     0        70
#> 651       3     0     0       273
#> 652       1     0     0        76
#> 653       0     0     0       440
#> 654       0     1     0       216
#> 655       0     0     0        18
#> 656       0     0     0       350
#> 657       0     0     0       476
#> 658       0     0     0       386
#> 659       1     1     0       128
#> 660       0     2     0       371
#> 661       0     1     0        93
#> 662       0     4     0        22
#> 663       0     0     0       466
#> 664       0     0     0       488
#> 665       0     0     0       212
#> 666       0     0     0       337
#> 667       0     1     0       383
#> 668       0     0     0       150
#> 669       1     0     0       280
#> 670       2     1     0       441
#> 671       0     0     0       322
#> 672       0     1     0        11
#> 673       0     0     0       426
#> 674       0     2     0       356
#> 675       4     4     0       389
#> 676       2     1     0       101
#> 677       0     0     0       242
#> 678       0     0     0        14
#> 679       0     0     0        45
#> 680       0     0     0       411
#> 681       0     0     0       110
#> 682       0     1     0       257
#> 683       2     2     0       183
#> 684       0     1     0       126
#> 685       0     0     0       467
#> 686       0     0     0       253
#> 687       0     1     0       165
#> 688       0     2     0       359
#> 689       0     0     0       381
#> 690       0     1     0        98
#> 691       0     0     1        82
#> 692       0     1     0       412
#> 693       0     0     0       453
#> 694       1     0     0        96
#> 695       0     3     0       492
#> 696       0     1     0        67
#> 697       0     0     0       111
#> 698       0     0     0       360
#> 699       0     3     0       182
#> 700       0     3     0        58
#> 701       0     1     0        54
#> 702       0     2     0       145
#> 703       0     1     0       238
#> 704       0     0     0       132
#> 705       0     2     0        74
#> 706       0     1     0       425
#> 707       0     1     0        35
#> 708       0     0     0       303
#> 709       0     1     0        48
#> 710       1     4     0       317
#> 711       0     1     0       243
#> 712       0     0     0       122
#> 713       0     2     0       127
#> 714       0     1     0       366
#> 715       0     0     0        85
#> 716       0     1     0       164
#> 717       0     1     0       159
#> 718       0     1     0       283
#> 719       0     0     0       102
#> 720       0     0     0       208
#> 721       0     0     0       156
#> 722       0     1     0       477
#> 723       0     0     0       178
#> 724       0     2     0       152
#> 725       0     1     0       370
#> 726       0     3     0       199
#> 727       0     3     0       404
#> 728       0     0     0       244
#> 729       0     0     0       284
#> 730       0     0     0       157
#> 731       0     0     0        94
#> 732       0     0     0       436
#> 733       0     0     0       469
#> 734       0     0     0        73
#> 735       0     0     0       118
#> 736       0     1     0       334
#> 737       0     0     0       489
#> 738       0     0     0        97
#> 739       0     0     0       321
#> 740       0     0     0       233
#> 741       0     2     0       255
#> 742       0     0     0       442
#> 743       0     0     0       421
#> 744       0     2     0        40
#> 745       0     0     0        50
#> 746       0     2     0       457
#> 747       0     4     0       353
#> 748       0     0     0       305
#> 749       0     2     0       287
#> 750       0     1     0        34
#> 751       0     2     0       384
#> 752       0     0     0        10
#> 753       0     0     0       433
#> 754       0     0     0       504
#> 755       0     0     0       161
#> 756       0     5     1       290
#> 757       0     0     0       324
#> 758       0     2     0       197
#> 759       0     0     0        86
#> 760       0     1     0        89
#> 761       0     0     0       239
#> 762       0     0     0       385
#> 763       0     0     0       385
#> 764       1     3     0        27
#> 765       0     6     0        60
#> 766       0     3     0       116
#> 767       0     0     0        99
#> 768       0     4     0        68
#> 769       0     0     0        66
#> 770       0     1     0       464
#> 771       0     5     1        20
#> 772       0     1     0       501
#> 773       0     3     0       120
#> 774       0     0     0       475
#> 775       0     0     0       123
#> 776       0     1     0       415
#> 777       0     0     0       362
#> 778       0     2     0       362
#> 779       0     0     0       286
#> 780       1     0     0        23
#> 781       0     3     0         1
#> 782       0     0     0       270
#> 783       0     2     1       416
#> 784       0     0     0       125
#> 785       0     0     0       496
#> 786       0     0     0       331
#> 787       0     2     0       361
#> 788       0     0     0       180
#> 789       0     1     0       393
#> 790       0     0     0       399
#> 791       0     2     0        72
#> 792       0     0     0       142
#> 793       0     1     0       276
#> 794       0     2     0        59
#> 795       0     1     0       306
#> 796       0     3     1         3
#> 797       0     3     0       228
#> 798       0     0     0       119
#> 799       1     2     0       327
#> 800       0     0     0       104
#> 801       0     1     0        65
#> 802       0     0     0       194
#> 803       2     3     0       211
#> 804       0     0     0        79
#> 805       0     0     0       335
#> 806       0     1     0        24
#> 807       0     0     0       298
#> 808       0     2     0       100
#> 809       0     0     0       445
#> 810       0     0     0       470
#> 811       0     4     1       456
#> 812       0     1     0       149
#> 813       0     0     0       446
#> 814       0     0     0       277
#> 815       0     2     0        43
#> 816       0     1     0       352
#> 817       0     1     0        64
#> 818       0     0     0       491
#> 819       0     0     0       368
#> 820       1     3     0        25
#> 821       0     0     0        44
#> 822       0     0     0       417
#> 823       0     0     0       192
#> 824       0     0     0       408
#> 825       0     4     0       308
#> 826       0     0     0       204
#> 827       0     0     0       258
#> 828       0     0     0       460
#> 829       0     2     0       493
#> 830       0     0     0       310
#> 831       0     2     0       162
#> 832       0     0     0       240
#> 833       0     0     0       264
#> 834       0     2     0       443
#> 835       0     0     0       394
#> 836       0     1     0       232
#> 837       0     1     0       293
#> 838       0     1     0       505
#> 839       0     0     0       390
#> 840       0     2     0       330
#> 841       0     3     0         9
#> 842       1     2     0       439
#> 843       7     1     0       449
#> 844       0     4     0       230
#> 845       0     0     0        21
#> 846       0     1     0       363
#> 847       0     1     0        57
#> 848       0     2     0        15
#> 849       0     4     1       314
#> 850       0     0     0       434
#> 851       0     2     0         7
#> 852       0     2     0       472
#> 853       0     1     0        70
#> 854       1     2     1        76
#> 855       0     0     0       216
#> 856       0     1     0        18
#> 857       0     0     0       495
#> 858       0     0     0       476
#> 859       2     3     0       348
#> 860       0     4     0       371
#> 861       0     1     0        93
#> 862       0     2     0        22
#> 863       0     0     0       466
#> 864       0     0     0       212
#> 865       0     3     0       278
#> 866       0     0     0       355
#> 867       0     0     0       150
#> 868       0     0     0       280
#> 869       0     0     0       280
#> 870       0     1     0       280
#> 871       3     2     0       441
#> 872       0     1     0       249
#> 873       0     0     0       473
#> 874       0     0     0       322
#> 875       1     0     0        11
#> 876       0     1     0       426
#> 877       0     0     0       356
#> 878       5     1     0       389
#> 879       0     0     1       503
#> 880       0     1     0       101
#> 881       0     1     0       242
#> 882       0     4     1        14
#> 883       2     3     0       257
#> 884       0     0     0       126
#> 885       0     0     0       126
#> 886       0     0     0       467
#> 887       0     0     0       253
#> 888       0     0     0       186
#> 889       0     2     0       165
#> 890       0     3     0       359
#> 891       0     0     0        98
#> 892       0     2     0        82
#> 893       0     0     0       412
#> 894       6     2     0        96
#> 895       0     1     0       492
#> 896       0     0     0       398
#> 897       0     1     0        67
#> 898       0     0     0       387
#> 899       0     0     0       387
#> 900       1     0     0       333
#> 901       0     1     0       339
#> 902       4     5     0       360
#> 903       0     5     0       182
#> 904       0     1     0        58
#> 905       0     0     0       145
#> 906       0     1     0       238
#> 907       0     0     0       131
#> 908       0     3     0        74
#> 909       0     0     0        31
#> 910       0     2     0       425
#> 911       0     3     0        35
#> 912       0     2     0        48
#> 913       0     0     0       127
#> 914       0     0     0       366
#> 915       0     1     0        39
#> 916       0     2     0        85
#> 917       0     1     0       159
#> 918       1     3     0       102
#> 919       0     3     0       156
#> 920       0     2     0       477
#> 921       2     0     0       178
#> 922       0     2     0       152
#> 923       0     0     0       370
#> 924       0     1     0       199
#> 925       0     6     0       404
#> 926       0     1     0       244
#> 927       0     0     0       244
#> 928       0     1     0       428
#> 929       0     1     0        41
#> 930       0     0     0       115
#> 931       0     4     0       329
#> 932       0     0     0       157
#> 933       0     1     0        94
#> 934       0     0     0       436
#> 935       0     1     0       118
#> 936       0     1     0       334
#> 937       0     1     0       489
#> 938       0     1     0        97
#> 939       0     7     0       435
#> 940       1     0     0       321
#> 941       0     2     0       442
#> 942       0     2     0        40
#> 943       0     4     0       198
#> 944       0     0     0        50
#> 945       0     2     0       457
#> 946       0     4     0       353
#> 947       0     0     0       372
#> 948       0     2     0       139
#> 949       0     0     0       305
#> 950       0     1     0        34
#> 951       0     1     0       384
#> 952       0     0     0       504
#> 953       0     0     0       140
#> 954       0     0     0       161
#> 955       0     2     0       290
#> 956       0     0     0       324
#> 957       0     1     0       197
#> 958       0     0     0       138
#> 959       0     1     0        89
#> 960       0     0     0       239
#> 961       0     0     0       385
#> 962       0     3     0        27
#> 963       0     0     0        55
#> 964       0     3     0        68
#> 965       0     0     0       147
#> 966       0     2     0       464
#> 967       0     2     0        20
#> 968       0     0     0        20
#> 969       0     2     0       501
#> 970       0     0     0       507
#> 971       0     3     0       120
#> 972       0     2     0       475
#> 973       0     0     0       475
#> 974       0     3     0       415
#> 975       0     0     0        32
#> 976       0     0     0       358
#> 977       0     0     0       166
#> 978       0     1     0         1
#> 979       0     1     0       270
#> 980       2     4     0       416
#> 981       0     0     0       125
#> 982       0     0     0       496
#> 983       0     0     0       187
#> 984       0     3     0       361
#> 985       0     0     0       399
#> 986       0     0     0       114
#> 987       0     2     0        72
#> 988       0     0     0       142
#> 989       0     1     0       276
#> 990       0     2     0       153
#> 991       0     1     0        59
#> 992       0     0     0        59
#> 993       0     0     0         2
#> 994       0     1     0         3
#> 995       0     1     0       228
#> 996       0     0     0       332
#> 997       0     0     0       119
#> 998       0     0     0       104
#> 999       0     0     0        65
#> 1000      0     2     0       211
#> 1001      0     1     0        63
#> 1002      0     2     0       335
#> 1003      0     0     0        24
#> 1004      0     2     0       100
#> 1005      0     0     0       445
#> 1006      0     1     0       245
#> 1007      0     0     0       470
#> 1008      1     0     0       456
#> 1009      0     4     0       277
#> 1010      0     1     0       174
#> 1011      0     2     0        43
#> 1012      0     0     0       491
#> 1013      0     1     0       417
#> 1014      0     1     0       192
#> 1015      1     5     0       308
#> 1016      0     1     0       204
#> 1017      0     1     0       258
#> 1018      1     1     0       460
#> 1019      1     0     0       460
#> 1020      0     0     0       493
#> 1021      0     0     0       124
#> 1022      0     2     0       162
#> 1023      0     0     0       200
#> 1024      0     1     0       240
#> 1025      0     3     0       443
#> 1026      0     2     0       443
#> 1027      0     0     0       293
#> 1028      0     0     0       505
#> 1029      0     0     0       390
#> 1030      0     1     0       274
#> 1031      0     2     0         9
#> 1032      0     2     0       439
#> 1033      0     1     0       483
#> 1034      0     3     0       449
#> 1035      0     1     0        21
#> 1036      0     1     0       363
#> 1037      0     1     0        15
#> 1038      0     0     0       231
#> 1039      0     0     0       314
#> 1040      0     0     0       498
#> 1041      0     0     0       434
#> 1042      0     0     0         7
#> 1043      0     0     0         7
#> 1044      0     2     0       472
#> 1045      2     4     1        76
#> 1046      0     1     0       216
#> 1047      0     2     0        18
#> 1048      0     1     0       495
#> 1049      0     0     0       476
#> 1050      2     2     1       348
#> 1051      1     2     0       128
#> 1052      0     4     0       371
#> 1053      0     3     0        22
#> 1054      0     0     0       466
#> 1055      0     0     0       488
#> 1056      0     3     0       452
#> 1057      0     1     0       212
#> 1058      0     2     0       278
#> 1059      0     1     0       355
#> 1060      0     0     0       150
#> 1061      0     0     0       280
#> 1062      0     1     0       441
#> 1063      0     0     0       473
#> 1064      0     2     0       322
#> 1065      2     0     0        11
#> 1066      0     1     0       426
#> 1067      0     0     0       304
#> 1068      0     0     0        16
#> 1069      2     4     0       503
#> 1070      0     1     0       101
#> 1071      0     2     0       242
#> 1072      0     0     0        14
#> 1073      0     0     0       485
#> 1074      0     0     0       257
#> 1075      0     0     0       183
#> 1076      0     2     0       126
#> 1077      0     1     0       253
#> 1078      0     0     0       186
#> 1079      0     3     0       165
#> 1080      0     3     0       359
#> 1081      0     2     0        82
#> 1082      0     0     0        26
#> 1083      0     0     0       412
#> 1084      0     0     0       105
#> 1085      0     0     0        96
#> 1086      0     1     0       492
#> 1087      0     0     0       398
#> 1088      0     0     0       387
#> 1089      1     0     0       333
#> 1090      0     1     0       339
#> 1091      0     1     0       427
#> 1092      3     2     0       360
#> 1093      0     0     0       182
#> 1094      0     2     0        58
#> 1095      0     0     0       238
#> 1096      0     0     0       131
#> 1097      0     0     0        74
#> 1098      0     0     0        31
#> 1099      0     0     0       425
#> 1100      0     1     0        35
#> 1101      0     2     0        48
#> 1102      0     2     0       127
#> 1103      0     0     0       366
#> 1104      0     0     0        39
#> 1105      0     0     0        85
#> 1106      0     1     0       283
#> 1107      3     4     0       102
#> 1108      0     1     0       156
#> 1109      0     1     0       477
#> 1110      0     0     0       178
#> 1111      0     5     0       152
#> 1112      0     0     0       370
#> 1113      0     1     0       199
#> 1114      0     4     0       404
#> 1115      0     0     0       244
#> 1116      0     1     0       428
#> 1117      1     0     0        33
#> 1118      2     3     0       218
#> 1119      0     0     0       482
#> 1120      0     0     0       137
#> 1121      0     4     0       329
#> 1122      0     1     0       157
#> 1123      0     2     0        94
#> 1124      0     0     0       436
#> 1125      0     1     0       374
#> 1126      0     1     0       118
#> 1127      0     0     0       334
#> 1128      0     0     0       489
#> 1129      0     0     0        97
#> 1130      0     1     0       435
#> 1131      2     1     0       321
#> 1132      0     0     0       437
#> 1133      0     3     0        40
#> 1134      0     1     0       198
#> 1135      0     0     0        50
#> 1136      0     0     0       160
#> 1137      0     4     0       173
#> 1138      0     3     0       457
#> 1139      0     1     0       353
#> 1140      0     2     0       305
#> 1141      0     0     0        34
#> 1142      0     0     0       384
#> 1143      0     0     0       133
#> 1144      0     1     0        49
#> 1145      0     2     0       140
#> 1146      0     5     0       290
#> 1147      0     0     0       354
#> 1148      0     0     0       497
#> 1149      0     2     0        89
#> 1150      0     1     0       239
#> 1151      0     0     0       215
#> 1152      0     0     0       141
#> 1153      0     0     0       385
#> 1154      0     2     0        27
#> 1155      0     3     0       116
#> 1156      0     1     0        37
#> 1157      0     1     0        55
#> 1158      1     2     0        68
#> 1159      0     0     0       147
#> 1160      0     1     0       464
#> 1161      0     2     0        20
#> 1162      0     0     0       458
#> 1163      0     2     0       120
#> 1164      0     0     0       475
#> 1165      0     2     0       415
#> 1166      0     0     0       362
#> 1167      0     0     0       465
#> 1168      0     0     0        32
#> 1169      0     0     0       358
#> 1170      1     0     0         1
#> 1171      0     0     0       270
#> 1172      1     2     1       416
#> 1173      0     0     0       486
#> 1174      1     0     0       125
#> 1175      0     0     0       496
#> 1176      0     0     0       221
#> 1177      0     0     0       331
#> 1178      0     2     0       187
#> 1179      0     5     0       361
#> 1180      0     0     0       114
#> 1181      0     2     0        72
#> 1182      0     0     0       142
#> 1183      0     0     0       142
#> 1184      0     2     0       276
#> 1185      0     1     0       153
#> 1186      0     0     0        59
#> 1187      0     3     0         2
#> 1188      0     0     0       325
#> 1189      0     4     0       103
#> 1190      0     1     0         3
#> 1191      0     2     0       228
#> 1192      0     0     0       119
#> 1193      0     0     0       347
#> 1194      0     0     0        65
#> 1195      0     0     0        62
#> 1196      0     2     0        46
#> 1197      0     0     0       194
#> 1198      0     0     0       211
#> 1199      0     1     0       438
#> 1200      1     3     0        63
#> 1201      0     0     0       168
#> 1202      0     0     0       508
#> 1203      0     0     0       445
#> 1204      0     3     0       158
#> 1205      0     3     0       456
#> 1206      0     0     0       277
#> 1207      0     3     0       174
#> 1208      0     1     0        29
#> 1209      0     1     0        43
#> 1210      0     1     0       491
#> 1211      0     2     0       417
#> 1212      0     1     0       192
#> 1213      0     2     0       308
#> 1214      0     1     0       204
#> 1215      0     0     0       258
#> 1216      0     0     0        77
#> 1217      1     1     0       460
#> 1218      0     3     0       493
#> 1219      0     4     0       229
#> 1220      0     1     0       124
#> 1221      0     3     0        90
#> 1222      0     0     0       162
#> 1223      0     0     0       200
#> 1224      0     3     2       240
#> 1225      0     1     0       443
#> 1226      0     0     0       390
#> 1227      0     0     0       135
#> 1228      0     2     0       135
#> 1229      0     0     0       330
#> 1230      0     2     1         9
#> 1231      0     1     0       439
#> 1232      1     0     0       449
#> 1233      0     0     1       230
#> 1234      0     1     0        88
#> 1235      0     1     0       363
#> 1236      0     1     0        15
#> 1237      0     1     0       231
#> 1238      0     1     0       314
#> 1239      0     0     0       336
#> 1240      0     0     0       498
#> 1241      0     1     0       434
#> 1242      0     0     0       472
#> 1243      0     1     0       172
#> 1244      2     2     0        76
#> 1245      1     1     0        95
#> 1246      0     3     0        18
#> 1247      0     1     0       495
#> 1248      0     1     0       379
#> 1249      1     4     1       348
#> 1250      0     0     0       371
#> 1251      0     3     0        93
#> 1252      0     0     0        22
#> 1253      0     0     0       488
#> 1254      0     1     0       452
#> 1255      0     0     0       452
#> 1256      0     0     0       248
#> 1257      0     1     0       212
#> 1258      0     0     0       478
#> 1259      0     4     0       278
#> 1260      0     0     0       355
#> 1261      0     0     0       355
#> 1262      0     0     0       150
#> 1263      0     1     0       280
#> 1264      2     0     0       441
#> 1265      0     0     0       295
#> 1266      0     0     0       473
#> 1267      0     2     0       410
#> 1268      0     1     0        11
#> 1269      0     0     0       426
#> 1270      0     2     0       451
#> 1271      2     3     0       503
#> 1272      0     6     0       101
#> 1273      0     2     0       242
#> 1274      0     0     0        14
#> 1275      0     4     1       411
#> 1276      0     2     0       485
#> 1277      0     0     0       257
#> 1278      0     0     0       183
#> 1279      0     4     0       126
#> 1280      0     0     0       151
#> 1281      0     1     0       253
#> 1282      0     1     0       186
#> 1283      0     0     0       359
#> 1284      0     2     0        82
#> 1285      0     3     1        26
#> 1286      0     0     0       328
#> 1287      0     0     0       105
#> 1288      0     1     0        96
#> 1289      0     1     0       492
#> 1290      0     0     0       398
#> 1291      0     1     0        19
#> 1292      0     0     0        67
#> 1293      0     0     0       387
#> 1294      0     1     0       299
#> 1295      1     0     0       333
#> 1296      0     0     0       339
#> 1297      0     0     0       427
#> 1298      0     0     0       360
#> 1299      0     0     0       182
#> 1300      0     1     0       388
#> 1301      0     0     0       238
#> 1302      0     0     0       131
#> 1303      0     0     0        74
#> 1304      1     2     0        31
#> 1305      0     2     0       425
#> 1306      0     1     0        38
#> 1307      0     0     0        35
#> 1308      0     0     0       340
#> 1309      0     0     0        48
#> 1310      0     4     0       463
#> 1311      0     0     0       127
#> 1312      0     1     0       167
#> 1313      0     1     0       250
#> 1314      0     0     0        39
#> 1315      0     2     0        85
#> 1316      0     0     0       283
#> 1317      3     0     0       102
#> 1318      0     2     0       156
#> 1319      0     2     1       152
#> 1320      0     0     0       370
#> 1321      0     0     0       199
#> 1322      0     1     0       226
#> 1323      0     4     0       444
#> 1324      0     6     0       404
#> 1325      0     0     0         5
#> 1326      0     1     0       244
#> 1327      0     0     0       424
#> 1328      0     1     0        33
#> 1329      0     0     0       207
#> 1330      1     2     0       218
#> 1331      0     0     0       115
#> 1332      0     1     0       157
#> 1333      1     2     0        94
#> 1334      0     0     0       436
#> 1335      0     1     0       374
#> 1336      0     1     0       345
#> 1337      0     0     0       169
#> 1338      0     1     0       118
#> 1339      0     0     0       334
#> 1340      0     2     0       334
#> 1341      0     0     0        97
#> 1342      0     0     0       435
#> 1343      1     0     0       321
#> 1344      0     0     0       437
#> 1345      0     0     0        40
#> 1346      0     2     0       265
#> 1347      0     1     0        50
#> 1348      0     1     0       173
#> 1349      0     1     0       457
#> 1350      0     3     0       353
```

Example: Team IDs
-----------------

``` r
nwslR::franchise
#>    team_id              team_name          city state season
#> 1      BOS        Boston Breakers        Boston    MA   2013
#> 2      BOS        Boston Breakers        Boston    MA   2014
#> 3      BOS        Boston Breakers        Boston    MA   2015
#> 4      BOS        Boston Breakers        Boston    MA   2016
#> 5      BOS        Boston Breakers        Boston    MA   2017
#> 6       KC         FC Kansas City   Kansas City    MO   2013
#> 7       KC         FC Kansas City   Kansas City    MO   2014
#> 8       KC         FC Kansas City   Kansas City    MO   2015
#> 9       KC         FC Kansas City   Kansas City    MO   2016
#> 10      KC         FC Kansas City   Kansas City    MO   2017
#> 11     WNY Western New York Flash       Buffalo    NY   2013
#> 12     WNY Western New York Flash       Buffalo    NY   2014
#> 13     WNY Western New York Flash       Buffalo    NY   2015
#> 14     WNY Western New York Flash       Buffalo    NY   2016
#> 15     CHI      Chicago Red Stars       Chicago    IL   2013
#> 16     CHI      Chicago Red Stars       Chicago    IL   2014
#> 17     CHI      Chicago Red Stars       Chicago    IL   2015
#> 18     CHI      Chicago Red Stars       Chicago    IL   2016
#> 19     CHI      Chicago Red Stars       Chicago    IL   2017
#> 20     CHI      Chicago Red Stars       Chicago    IL   2018
#> 21     CHI      Chicago Red Stars       Chicago    IL   2019
#> 22     POR     Portland Thorns FC      Portland    OR   2013
#> 23     POR     Portland Thorns FC      Portland    OR   2014
#> 24     POR     Portland Thorns FC      Portland    OR   2015
#> 25     POR     Portland Thorns FC      Portland    OR   2016
#> 26     POR     Portland Thorns FC      Portland    OR   2017
#> 27     POR     Portland Thorns FC      Portland    OR   2018
#> 28     POR     Portland Thorns FC      Portland    OR   2019
#> 29     RFC       Seattle Reign FC       Seattle    WA   2013
#> 30     SEA       Seattle Reign FC       Seattle    WA   2014
#> 31     SEA       Seattle Reign FC       Seattle    WA   2015
#> 32     SEA       Seattle Reign FC       Seattle    WA   2016
#> 33     SEA       Seattle Reign FC       Seattle    WA   2017
#> 34     SEA       Seattle Reign FC       Seattle    WA   2018
#> 35     SEA               Reign FC        Tacoma    WA   2019
#> 36      NJ            Sky Blue FC New Brunswick    NJ   2013
#> 37      NJ            Sky Blue FC New Brunswick    NJ   2014
#> 38      NJ            Sky Blue FC New Brunswick    NJ   2015
#> 39      NJ            Sky Blue FC New Brunswick    NJ   2016
#> 40      NJ            Sky Blue FC New Brunswick    NJ   2017
#> 41      NJ            Sky Blue FC New Brunswick    NJ   2018
#> 42      NJ            Sky Blue FC New Brunswick    NJ   2019
#> 43     WAS      Washington Spirit    Washington    DC   2013
#> 44     WAS      Washington Spirit    Washington    DC   2014
#> 45     WAS      Washington Spirit    Washington    DC   2015
#> 46     WAS      Washington Spirit    Washington    DC   2016
#> 47     WAS      Washington Spirit    Washington    DC   2017
#> 48     WAS      Washington Spirit    Washington    DC   2018
#> 49     WAS      Washington Spirit    Washington    DC   2019
#> 50     HOU           Houston Dash       Houston    TX   2014
#> 51     HOU           Houston Dash       Houston    TX   2015
#> 52     HOU           Houston Dash       Houston    TX   2016
#> 53     HOU           Houston Dash       Houston    TX   2017
#> 54     HOU           Houston Dash       Houston    TX   2018
#> 55     HOU           Houston Dash       Houston    TX   2019
#> 56     ORL          Orlando Pride       Orlando    FL   2016
#> 57     ORL          Orlando Pride       Orlando    FL   2017
#> 58     ORL          Orlando Pride       Orlando    FL   2018
#> 59     ORL          Orlando Pride       Orlando    FL   2019
#> 60     UTA         Utah Royals FC         Sandy    UT   2018
#> 61     UTA         Utah Royals FC         Sandy    UT   2019
#> 62      NC North Carolina Courage          Cary    NC   2017
#> 63      NC North Carolina Courage          Cary    NC   2018
#> 64      NC North Carolina Courage          Cary    NC   2019
```

Functionality
-------------

``` r
nwslR::get_adv_team_stats() #scrapes and formats hundreds of advanced team statistics from the NWSL website
nwslR::get_adv_player_stats() #scrapes and formats advanced individual player stats from the NWSL website
nwslR::player_search() #searches data tables based on player information such as name, nation, or position
```

You'll still need to render `README.Rmd` regularly, to keep `README.md` up-to-date.

You can also embed plots, for example:

In that case, don't forget to commit and push the resulting figure files, so they display on GitHub!
