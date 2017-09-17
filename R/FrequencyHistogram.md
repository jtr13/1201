Frequency histograms

``` r
prices <- c(379, 425, 450, 450, 499, 529, 535, 535, 545, 599, 665,
            675, 699, 699, 725, 725, 745, 799)

hist(prices)
```

![](FrequencyHistogram_files/figure-markdown_github/unnamed-chunk-1-1.png)

``` r
hist(prices, breaks = c(300, 400, 500, 600, 700, 800),
     col = "lightblue")
```

![](FrequencyHistogram_files/figure-markdown_github/unnamed-chunk-1-2.png)
