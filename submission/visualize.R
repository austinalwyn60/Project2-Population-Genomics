library(ggplot2)
library(reshape2)

freq <- read.csv("results/frequency_data.csv")

# Long format for plotting
freq_long <- melt(freq, id.vars = c("Variant", "Gene"))
colnames(freq_long) <- c("Variant", "Gene", "Population", "Frequency")

# Plot 1: All Populations
png("plots/frequency_comparison.png", width=1200, height=700, res=120)
ggplot(freq_long, aes(x=Variant, y=Frequency, fill=Population)) +
  geom_bar(stat="identity", position="dodge") +
  theme_minimal() +
  labs(title="Pharmacogenomic Variants Across 4 Populations", 
       x="Variant", y="Allele Frequency") +
  theme(axis.text.x = element_text(angle=45, hjust=1))
dev.off()

# Plot 2: SAS vs EUR (Main Plot for Presentation)
png("plots/sas_vs_eur.png", width=1100, height=650, res=120)
ggplot(subset(freq_long, Population %in% c("SAS", "EUR")), 
       aes(x=Variant, y=Frequency, fill=Population)) +
  geom_bar(stat="identity", position="dodge") +
  theme_minimal() +
  labs(title="South Asian vs European Allele Frequencies", 
       x="Variant", y="Allele Frequency") +
  theme(axis.text.x = element_text(angle=45, hjust=1))
dev.off()

print("✅ All plots created successfully!")
