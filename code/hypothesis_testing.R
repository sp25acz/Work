data <- read.csv("Dataset3final.csv", stringsAsFactors = TRUE)
cor(data$Women.Entrepreneurship.Index, data$Female.Labor.Force.Participation.Rate)
cor(data$Women.Entrepreneurship.Index, data$Entrepreneurship.Index)
eu <- data$Women.Entrepreneurship.Index[data$European.Union.Membership == "Member"]
non_eu <- data$Women.Entrepreneurship.Index[data$European.Union.Membership != "Member"]
t.test(eu, non_eu)
