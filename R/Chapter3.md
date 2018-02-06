Chapter 3
================
Joyce Robbins
2/6/2018

-   [Expected value](#expected-value)
-   [Variance](#variance)
-   [Variance (alternative method)](#variance-alternative-method)
-   [Binominal Theorem](#binominal-theorem)

Expected value
--------------

``` r
x <- 1:5
x
```

    ## [1] 1 2 3 4 5

``` r
px <- c(.1, .15, .2, .25, .3)
px
```

    ## [1] 0.10 0.15 0.20 0.25 0.30

``` r
x*px
```

    ## [1] 0.1 0.3 0.6 1.0 1.5

``` r
sum(x*px)    # E(X)
```

    ## [1] 3.5

Variance
--------

``` r
x - 3.5
```

    ## [1] -2.5 -1.5 -0.5  0.5  1.5

``` r
(x - 3.5)^2
```

    ## [1] 6.25 2.25 0.25 0.25 2.25

``` r
((x - 3.5)^2)*px
```

    ## [1] 0.6250 0.3375 0.0500 0.0625 0.6750

``` r
sum(((x - 3.5)^2)*px)   # V(X)
```

    ## [1] 1.75

Variance (alternative method)
-----------------------------

``` r
x
```

    ## [1] 1 2 3 4 5

``` r
px
```

    ## [1] 0.10 0.15 0.20 0.25 0.30

``` r
x^2
```

    ## [1]  1  4  9 16 25

``` r
(x^2)*px
```

    ## [1] 0.1 0.6 1.8 4.0 7.5

``` r
sum((x^2)*px)  # E(X^2)
```

    ## [1] 14

``` r
14-3.5^2     # E(X^2) - [E(X)]^2
```

    ## [1] 1.75

Binominal Theorem
-----------------

``` r
choose(8, 3)    # "8 choose 3"
```

    ## [1] 56

``` r
56*.6^3*.4^5     # P(X = 3) given n = 8, p = .6
```

    ## [1] 0.123863

Direct method

``` r
dbinom(3, 8, .6)     # P(X = 3) given n = 8, p = .6
```

    ## [1] 0.123863
