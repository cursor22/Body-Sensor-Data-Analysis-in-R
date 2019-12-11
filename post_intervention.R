library(tidyverse)

# 1. Load Alysandra's pre-intervention data
a_accm_post <- read.csv(file = "alysandra_accm_post.csv")

# 2. Remove the first row of metadata and NA values
a_accm_post <- a_accm_post[complete.cases(a_accm_post), ]

# 3. Coerce each column of character values into numeric values
a_accm_post$time <- as.numeric(as.character(a_accm_post$time))
a_accm_post$X_value <- as.numeric(as.character(a_accm_post$X_value))
a_accm_post$Y_value <- as.numeric(as.character(a_accm_post$Y_value))
# Note - the following code does not transform chr to num (creates df of NA values): a_accm_pre <- as.numeric(as.character(a_accm_pre))


# Verify that the data is a data.frame of numeric values
str(a_accm_post)

# Visualize the data
ggplot(data = a_accm_post, mapping = aes(x = time, y = Y_value)) +
  geom_point() +
  geom_smooth()


# 4. Create a character vector that will eventually represent a class in the final data.frame
alysandra <- rep("alysandra", length(a_accm_post$time))

# 5. Append the vector as a class named 'player_name' to the local data.frame
a_accm_post$player_name <- alysandra

## Repeat the 5 data wrangling commands for each player ##


## David ##
# 1. Load David's pre-intervention data
d_accm_post <- read.csv(file = "david_accm_post.csv")

# 2. Remove the first row of metadata and NA values
d_accm_post <- d_accm_post[complete.cases(d_accm_post), ]

# 3. Coerce each column of character values into numeric values
d_accm_post$time <- as.numeric(as.character(d_accm_post$time))
d_accm_post$X_value <- as.numeric(as.character(d_accm_post$X_value))
d_accm_post$Y_value <- as.numeric(as.character(d_accm_post$Y_value))

# 4. Create a character vector that will eventually represent a class in the final data.frame
david <- rep("david", length(d_accm_post$time))

# 5. Append the vector as a class named 'player_name' to the local data.frame
d_accm_post$player_name <- david

## Joellyn ##
# 1. Load Joellyn's pre-intervention data
j_accm_post <- read.csv(file = "joellyn_accm_post.csv")

# 2. Remove the first row of metadata and NA values
j_accm_post <- j_accm_post[complete.cases(j_accm_post), ]

# 3. Coerce each column of character values into numeric values
j_accm_post$time <- as.numeric(as.character(j_accm_post$time))
j_accm_post$X_value <- as.numeric(as.character(j_accm_post$X_value))
j_accm_post$Y_value <- as.numeric(as.character(j_accm_post$Y_value))

# 4. Create a character vector that will eventually represent a class in the final data.frame
joellyn <- rep("joellyn", length(j_accm_post$time))

# 5. Append the vector as a class named 'player_name' to the local data.frame
j_accm_post$player_name <- joellyn

## Yiwei ##
# 1. Load Yiwei's pre-intervention data
y_accm_post <- read.csv(file = "yiwei_accm_post.csv")

# 2. Remove the first row of metadata and NA values
y_accm_post <- y_accm_post[complete.cases(y_accm_post), ]

# 3. Coerce each column of character values into numeric values
y_accm_post$time <- as.numeric(as.character(y_accm_post$time))
y_accm_post$X_value <- as.numeric(as.character(y_accm_post$X_value))
y_accm_post$Y_value <- as.numeric(as.character(y_accm_post$Y_value))

# 4. Create a character vector that will eventually represent a class in the final data.frame
yiwei <- rep("yiwei", length(y_accm_post$time))

# 5. Append the vector as a class named 'player_name' to the local data.frame
y_accm_post$player_name <- yiwei


## Now Create a Total Pre-Intervention data.frame with everyone's data ##

# Use 'rbind' to append everybody's data to a single data.frame
post_intervention_df <- rbind(a_accm_post, d_accm_post, j_accm_post, y_accm_post)

## Visualize everybody's puck push acceleration ##
ggplot(data = post_intervention_df) +
  geom_point(mapping = aes(x = time, y = Y_value)) +
  facet_wrap(~ player_name, nrow = 2 )




## Shu-Yi ## ## NO DATA ##
# 1. Load Shu-Yi's pre-intervention data
# s_accm_post <- read.csv(file = "shuyi_accm_post.csv")

# 2. Remove the first row of metadata and NA values
# s_accm_post <- s_accm_post[complete.cases(s_accm_post), ]

# 3. Coerce each column of character values into numeric values
# s_accm_post$time <- as.numeric(as.character(s_accm_post$time))
# s_accm_post$X_value <- as.numeric(as.character(s_accm_post$X_value))
# s_accm_post$Y_value <- as.numeric(as.character(s_accm_post$Y_value))

# 4. Create a character vector that will eventually represent a class in the final data.frame
# shuyi <- rep("shuyi", length(s_accm_post$time))

# 5. Append the vector as a class named 'player_name' to the local data.frame
# s_accm_post$player_name <- shuyi

