df <- data.frame(name = c("ash","jane","paul","mark"), score = c(67,56,87,91))
dim(df)
str(df)
df[1:2,2] <- NA #injecting NA at 1st, 2nd row and 2nd column of df 
is.na(df)
df[!complete.cases(df),] #returns the list of rows having missing values

mean(df$score)

mean(df$score, na.rm = TRUE)

new_df <- df

new_df$score[is.na(new_df$score)] <- mean(new_df$score, na.rm = TRUE)

str(new_df)

is.na(new_df)

new_df[!complete.cases(new_df),]
