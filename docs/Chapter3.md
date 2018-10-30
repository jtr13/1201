# Discrete Distributions {#chap3}

Devore, Chapter 3

## Expected value (3.3)


```r
x <- 1:5
x
```

```
## [1] 1 2 3 4 5
```

```r
px <- c(.1, .15, .2, .25, .3)
px
```

```
## [1] 0.10 0.15 0.20 0.25 0.30
```

```r
x*px
```

```
## [1] 0.1 0.3 0.6 1.0 1.5
```

```r
sum(x*px)    # E(X)
```

```
## [1] 3.5
```

## Variance (3.3)


```r
x - 3.5
```

```
## [1] -2.5 -1.5 -0.5  0.5  1.5
```

```r
(x - 3.5)^2
```

```
## [1] 6.25 2.25 0.25 0.25 2.25
```

```r
((x - 3.5)^2)*px
```

```
## [1] 0.6250 0.3375 0.0500 0.0625 0.6750
```

```r
sum(((x - 3.5)^2)*px)   # V(X)
```

```
## [1] 1.75
```

## Variance (alternative method) (3.3)

```r
x
```

```
## [1] 1 2 3 4 5
```

```r
px
```

```
## [1] 0.10 0.15 0.20 0.25 0.30
```

```r
x^2
```

```
## [1]  1  4  9 16 25
```

```r
(x^2)*px
```

```
## [1] 0.1 0.6 1.8 4.0 7.5
```

```r
sum((x^2)*px)  # E(X^2)
```

```
## [1] 14
```

```r
14-3.5^2     # E(X^2) - [E(X)]^2
```

```
## [1] 1.75
```

## Binominal Theorem (3.4)

```r
choose(8, 3)    # "8 choose 3"
```

```
## [1] 56
```

```r
56*.6^3*.4^5     # P(X = 3) given n = 8, p = .6
```

```
## [1] 0.123863
```

Direct method

```r
dbinom(3, 8, .6)     # P(X = 3) given n = 8, p = .6
```

```
## [1] 0.123863
```

## Hypergeometric (3.5)

Note that the notation that R uses is different from the Devore textbook:

|parameter|Devore|R|
|---------|------|-|
|total successes|M|m|
|total failures|N-M|n|
|sample size|n|k|
|successes in sample|x|x|

Example (p. 127)

Devore: *h(x; n, M, N)*

*P(X = 2) = h(2; 10, 5, 25)* -->


```r
dhyper(x = 2, m = 5, n = 20, k = 10)
```

```
## [1] 0.3853755
```

## Poisson (3.6)

Example (p. 132)

p(3;2) =


```r
dpois(3,2)
```

```
## [1] 0.180447
```

F(3;2) =


```r
ppois(3, 2)
```

```
## [1] 0.8571235
```

