##Apr 12, 2019

#innitialize a cats data.frame
cats <- data.frame(coat = c("calico", "black", "tabby"), 
                   weight = c(2.1, 5.0,3.2), 
                   likes_string = c(1, 0, 1))

write.csv(x = cats, file = "data/feline-data.csv", row.names = FALSE)

file.show("data/feline-data.csv")

my_vector <- vector(length = 3)
my_vector

another_vector <- vector(mode='character', length=3)
another_vector
str(another_vector)

str(cats$weight)

cats$likes_string <- as.logical(cats$likes_string)
cats$likes_string

cats$age <- c(2,3,5)

levels(cats$coat) <- c(levels(cats$coat), "tortoiseshell")
newRow <- list("tortoiseshell", 3.3, T, 9)
cats <- rbind(cats, newRow)
