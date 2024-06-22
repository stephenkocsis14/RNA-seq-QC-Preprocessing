library(ggplot2)
library(data.table)

# Read in the counts file
counts <- fread("data/counts/counts.txt", header=TRUE)

# Calculate basic stats
summary_counts <- summary(counts$Count)
print(summary_counts)

# Log scale the counts
counts$log_count <- log2(counts$Count + 1)

# Generate a violin plot
p <- ggplot(counts, aes(x=Geneid, y=log_count)) +
    geom_violin() +
    theme_minimal() +
    labs(title="Violin Plot of Log-scaled Gene Counts", x="Gene ID", y="Log Count")

# Save the plot
ggsave("violin_plot.png", plot = p)

# Generate a box plot
p <- ggplot(counts, aes(x=Geneid, y=log_count)) +
    geom_boxplot() +
    theme_minimal() +
    labs(title="Box Plot of Log-scaled Gene Counts", x="Gene ID", y="Log Count")

# Save the plot
ggsave("box_plot.png", plot = p)

