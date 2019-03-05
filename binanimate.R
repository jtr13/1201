library(gganimate)
library(tidyverse)

make_df <- function(n) {
  a1 <- data.frame(x = 0:n,
                  size = n,
                  prob = dbinom(0:n, n, .5),
                  ways = dbinom(0:n, n, .5)*2^n,
                  stage = n,
                  group = 1:(n+1),
                  fill = "a1",
                  column = "n")

  a2 <- a1 %>% mutate(stage = n + .5,
                      fill = "a2",
                      column = "n + 1")

  b <- data.frame(x = (0:n) + 1,
                  size = n,
                  prob = dbinom(0:n, n, .5),
                  ways = dbinom(0:n, n, .5)*2^n,
                  stage = n + .5,
                  group = 1:(n+1),
                  fill = "b",
                  column = "n + 1")

  rbind(a1, a2, b) %>%
    mutate(fill = factor(fill, levels = c("a1", "b", "a2")), x = as.character(x))

}


df <- purrr::map_df(1:6, make_df)

## static

ggplot(df, aes(x, prob, fill = fill)) +
  geom_col() +
  scale_fill_manual(values = c("purple", "red", "blue")) + facet_grid(size ~ column)

## animated

g <- ggplot(df, aes(x, ways, fill = fill, group = group)) + geom_col() + scale_fill_manual(values = c("purple", "red", "blue"))

anim <- g + transition_states(stage) + exit_recolor(fill = "purple") + view_follow()

animate(anim)




# tweeted

# g <- ggplot(df, aes(x, prob, fill = size)) + geom_col() + scale_fill_viridis_c() + ggtitle("Binomial Distribution")

# anim <- g + transition_states(size) + enter_grow() + shadow_wake(wake_length = .1)

# teal #2B9089
