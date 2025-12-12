data <- read.csv("Dataset3final.csv", stringsAsFactors = TRUE)
data$European.Union.Membership <- as.factor(data$European.Union.Membership)

# Histogram
hist(data$Women.Entrepreneurship.Index,
     main="Distribution of Women Entrepreneurship Index",
     xlab="Women Entrepreneurship Index",
     col="skyblue",
     border="black")

# Scatterplot
plot(data$Women.Entrepreneurship.Index,
     data$Female.Labor.Force.Participation.Rate,
     main="Women Entrepreneurship vs Female Labor Participation",
     xlab="Women Entrepreneurship Index",
     ylab="Female Labor Participation Rate",
     pch=19,
     col="blue")

# Barplot
eu_count <- table(data$European.Union.Membership)
barplot(eu_count,
        main="EU Membership Distribution",
        ylab="Number of Countries",
        col="lightgreen")

# Boxplot (new)
boxplot(Women.Entrepreneurship.Index ~ European.Union.Membership,
        data = data,
        main = "Women Entrepreneurship Index by EU Membership",
        xlab = "EU Membership",
        ylab = "Women Entrepreneurship Index",
        col = c("lightblue", "lightgreen"))
