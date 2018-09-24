-   [Factorial (2.3)](#factorial-23)
-   [Combinations (2.3)](#combinations-23)
-   [Permutations (2.3)](#permutations-23)

Factorial (2.3)
---------------

``` r
factorial(5)
```

    ## [1] 120

Combinations (2.3)
------------------

“5 choose 2” = choose 2 items out of 5

``` r
choose(5, 2)
```

    ## [1] 10

Permutations (2.3)
------------------

There is no built-in function to calculate permutations. You can
multiply the number of combinations by *k!*.

Ex. Number of permutations of size 2 that can be formed from 5 distinct
items:

``` r
choose(5,2)*factorial(2)
```

    ## [1] 20

You can create your own function to do this:

``` r
perm <- function(n, k) {choose(n,k)*factorial(k)}

perm(5,2)
```

    ## [1] 20
