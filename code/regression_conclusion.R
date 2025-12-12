data <- read.csv("Dataset3final.csv", stringsAsFactors = TRUE)
model <- lm(Women.Entrepreneurship.Index ~ 
              Female.Labor.Force.Participation.Rate, data=data)
summary(model)
plot(data$Female.Labor.Force.Participation.Rate,
     data$Women.Entrepreneurship.Index)
abline(model, col="red")
