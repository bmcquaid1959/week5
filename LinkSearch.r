
install.packages('readr')
library('readr')

rawInput <- readLines("list.txt")

address <- vector(mode="character", length=length(rawInput))
name <- vector(mode="character", length=length(rawInput))

for(i in 1:length(rawInput)) {
  address[i] <- str_split_fixed(rawInput[i]," \\| ",2)[1]
  name[i] <-str_split_fixed(rawInput[i]," \\| ",2)[2]
}

df <- data.frame(name, address,rawInput)

df[!apply(df == "", 1, all), ]
df <- df[!apply(df == "", 1, all),]

df$name[1] <- "Regular Expression Tutorial github"


