
# Based on the result Rdata, create a data.frame for further analysis

long_df <- imap_dfr(results, ~ mutate(.x, model = .y, row_id = row_number())) %>%
  pivot_longer(
    cols = -c(model, row_id),
    names_to = "metric",
    values_to = "value"
  )

# histogram of each model with different method
ggplot(long_df, aes(x = value)) +
  geom_histogram(bins = 30, fill = "skyblue", color = "black") +
  facet_grid(metric ~ model, scales = "free") +
  labs(
    title = "Distribution of Fit Metrics by Model",
    x = "Metric Value",
    y = "Frequency"
  ) +
  theme_minimal() +
  theme(strip.text = element_text(size = 10))

# box plot of each model with different method
ggplot(long_df, aes(x = model, y = value, fill = model)) +
  geom_boxplot() +
  facet_wrap(~ metric, scales = "free_y") +
  labs(title = "Metric Comparison Across Models", y = "Value", x = "Model") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))



# summary table (include mean, sd, 95% percentile CI for each model with different method)
summary_table <- long_df %>%
  group_by(model, metric) %>%
  summarise(
    mean = mean(value, na.rm = TRUE),
    sd = sd(value, na.rm = TRUE),
    lower = quantile(value, 0.025, na.rm = TRUE),
    upper = quantile(value, 0.975, na.rm = TRUE),
    .groups = "drop"
  )


print(summary_table)

# graph of CI
ggplot(summary_table, aes(x = model, y = mean, ymin = lower, ymax = upper, color = metric)) +
  geom_point(position = position_dodge(width = 0.5)) +
  geom_errorbar(width = 0.2, position = position_dodge(width = 0.5)) +
  facet_wrap(~ metric, scales = "free_y") +
  labs(title = "Metric Summary with 95% CI", y = "Mean ± 95% CI") +
  theme_minimal()


# change data into wide version
wide_df <- long_df %>%
  pivot_wider(names_from = metric, values_from = value)

head(wide_df)


# scatter plot of between Nakagawa_Marginal_R2 and Raudenbush_Marginal_R2
ggplot(wide_df, aes(x = Nakagawa_Marginal_R2, y = Raudenbush_Marginal_R2, color = model)) +
  geom_point(alpha = 0.6) +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "PCV vs. Marginal R²", x = "Marginal R²", y = "PCV")


