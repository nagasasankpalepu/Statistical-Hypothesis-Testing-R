t.test(score ~ group, data = data)
cohens_d(score ~ group, data = data)
pwr.t.test(
  d = 0.5,
  power = 0.8,
  sig.level = 0.05,
  type = "two.sample"
)
set.seed(456)

group3 <- rep(c("A", "B", "C"), each = 30)

score3 <- c(
  rnorm(30, mean = 70, sd = 8),  # Group A
  rnorm(30, mean = 75, sd = 8),  # Group B
  rnorm(30, mean = 82, sd = 8)   # Group C
)

data3 <- data.frame(group3, score3)

head(data3)
anova <- aov(score3 ~ group3, data = data3)
summary(anova)
eta_squared(anova)
ggplot(data3, aes(group3, score3, fill = group3)) +
  geom_boxplot() +
  theme_minimal()
pwr.anova.test(
  k = 3,
  f = 0.25,
  sig.level = 0.05,
  power = 0.8
)
# Mean scores by group (t-test dataset)
summary_ttest <- data %>%
  group_by(group) %>%
  summarise(
    mean_score = mean(score),
    sd_score = sd(score)
  )

summary_ttest
tt <- t.test(score ~ group, data = data)
tt$estimate   # group means
tt$p.value    # p value
cohens_d(score ~ group, data = data)
write.csv(summary_ttest, "ttest_summary.csv", row.names = FALSE)
summary_anova <- data3 %>%
  group_by(group3) %>%
  summarise(
    mean_score = mean(score3),
    sd_score = sd(score3)
  )

summary_anova
write.csv(summary_anova, "anova_summary.csv", row.names = FALSE)
plot_ttest <- ggplot(data, aes(group, score, fill = group)) +
  geom_boxplot() +
  theme_minimal()
ggsave("ttest_plot.png", plot_ttest, width = 6, height = 4)
plot_anova <- ggplot(data3, aes(group3, score3, fill = group3)) +
  geom_boxplot() +
  theme_minimal()
ggsave("anova_plot.png", plot_anova, width = 6, height = 4)










