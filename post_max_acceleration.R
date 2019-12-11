# Determined which time intervals to search by finding the four minimums on the vizualization
# Must run 'pre_intervention.R' prior to running this code!

## Find max acceleration for each of Alysandra's attempts ##

ggplot(data = a_accm_post, mapping = aes(x = time, y = Y_value)) +
  geom_point() +
  geom_smooth()

a_maxAcc_1 <- filter(post_intervention_df, time < 10, player_name == alysandra)
a_maxAcc_1 <- max(a_maxAcc_1$Y_value)  

a_maxAcc_2 <- filter(post_intervention_df, time > 10, time < 15, player_name == alysandra)
a_maxAcc_2 <- max(a_maxAcc_2$Y_value)  

a_maxAcc_3 <- filter(post_intervention_df, time > 20, time < 25, player_name == alysandra)
a_maxAcc_3 <- max(a_maxAcc_3$Y_value)  

a_maxAcc_4 <- filter(post_intervention_df, time > 30, time < 35, player_name == alysandra)
a_maxAcc_4 <- max(a_maxAcc_4$Y_value)  

# Create a data frame for the max acceleration

a_maxAcc <- data.frame(a_maxAcc_1, a_maxAcc_2, a_maxAcc_3, a_maxAcc_4 )

# Standardize column names

colnames(a_maxAcc) <- c("maxAcc_1", "maxAcc_2", "maxAcc_3", "maxAcc_4")

# Add a column for player name

alysandra <- rep("alysandra", length(a_maxAcc$maxAcc_1))
a_maxAcc$player_name <- alysandra


## Find max acceleration for each of David's attempts ##

ggplot(data = d_accm_post, mapping = aes(x = time, y = Y_value)) +
  geom_point() +
  geom_smooth()

d_maxAcc_1 <- filter(post_intervention_df, time > 0, time < 5, player_name == david)
d_maxAcc_1 <- max(d_maxAcc_1$Y_value)  

d_maxAcc_2 <- filter(post_intervention_df, time > 5, time < 7.5, player_name == david)
d_maxAcc_2 <- max(d_maxAcc_2$Y_value)  

d_maxAcc_3 <- filter(post_intervention_df, time > 10, time < 12.5, player_name == david)
d_maxAcc_3 <- max(d_maxAcc_3$Y_value)  

d_maxAcc_4 <- filter(pre_intervention_df, time > 16, time < 18, player_name == david)
d_maxAcc_4 <- max(d_maxAcc_4$Y_value)  

# Create a data frame for the max acceleration

d_maxAcc <- data.frame(d_maxAcc_1, d_maxAcc_2, d_maxAcc_3, d_maxAcc_4 )

# Standardize column names

colnames(d_maxAcc) <- c("maxAcc_1", "maxAcc_2", "maxAcc_3", "maxAcc_4")

# Add a column for player name

david <- rep("david", length(d_maxAcc$maxAcc_1))
d_maxAcc$player_name <- david

## Find max acceleration for each of Joellyn's attempts ##

ggplot(data = j_accm_post, mapping = aes(x = time, y = Y_value)) +
  geom_point() +
  geom_smooth()

j_maxAcc_1 <- filter(post_intervention_df, time > 2, time < 10, player_name == joellyn)
j_maxAcc_1 <- max(j_maxAcc_1$Y_value)  

j_maxAcc_2 <- filter(post_intervention_df, time > 10, time < 15, player_name == joellyn)
j_maxAcc_2 <- max(j_maxAcc_2$Y_value)  

j_maxAcc_3 <- filter(post_intervention_df, time > 20, time < 25, player_name == joellyn)
j_maxAcc_3 <- max(j_maxAcc_3$Y_value)  

j_maxAcc_4 <- filter(post_intervention_df, time > 30, time < 35, player_name == joellyn)
j_maxAcc_4 <- max(j_maxAcc_4$Y_value)  

# Create a data frame for the max acceleration

j_maxAcc <- data.frame(j_maxAcc_1, j_maxAcc_2, j_maxAcc_3, j_maxAcc_4 )

# Standardize column names

colnames(j_maxAcc) <- c("maxAcc_1", "maxAcc_2", "maxAcc_3", "maxAcc_4")

# Add a column for player name

joellyn <- rep("joellyn", length(j_maxAcc$maxAcc_1))
j_maxAcc$player_name <- joellyn

## Find max acceleration for each of Yiwei's attempts ##

ggplot(data = y_accm_post, mapping = aes(x = time, y = Y_value)) +
  geom_point() +
  geom_smooth()

y_maxAcc_1 <- filter(post_intervention_df, time > 0, time < 5, player_name == yiwei)
y_maxAcc_1 <- max(y_maxAcc_1$Y_value)  

y_maxAcc_2 <- filter(post_intervention_df, time > 5, time < 10, player_name == yiwei)
y_maxAcc_2 <- max(y_maxAcc_2$Y_value)  

y_maxAcc_3 <- filter(post_intervention_df, time > 10, time < 15, player_name == yiwei)
y_maxAcc_3 <- max(y_maxAcc_3$Y_value)  

y_maxAcc_4 <- filter(post_intervention_df, time > 15, time < 20, player_name == yiwei)
y_maxAcc_4 <- max(y_maxAcc_4$Y_value)  

# Create a data frame for the max acceleration

y_maxAcc <- data.frame(y_maxAcc_1, y_maxAcc_2, y_maxAcc_3, y_maxAcc_4 )

# Standardize column names

colnames(y_maxAcc) <- c("maxAcc_1", "maxAcc_2", "maxAcc_3", "maxAcc_4")

# Add a column for player name

yiwei <- rep("yiwei", length(y_maxAcc$maxAcc_1))
y_maxAcc$player_name <- yiwei


## Row Bind all individual data frames ##

all_maxAcc <- rbind(a_maxAcc, d_maxAcc, j_maxAcc, s_maxAcc, y_maxAcc)



## NO DATA ##
## Find max acceleration for each of Shu-Yi's attempts ##

#ggplot(data = s_accm_pre, mapping = aes(x = time, y = Y_value)) +
#  geom_point() +
#  geom_smooth()

#s_maxAcc_1 <- filter(pre_intervention_df, time > 0, time < 5, player_name == shuyi)
#s_maxAcc_1 <- max(s_maxAcc_1$Y_value)  

#s_maxAcc_2 <- filter(pre_intervention_df, time > 10, time < 15, player_name == shuyi)
#s_maxAcc_2 <- max(s_maxAcc_2$Y_value)  

#s_maxAcc_3 <- filter(pre_intervention_df, time > 15, time < 20, player_name == shuyi)
#s_maxAcc_3 <- max(s_maxAcc_3$Y_value)  

#s_maxAcc_4 <- filter(pre_intervention_df, time > 25, time < 30, player_name == shuyi)
#s_maxAcc_4 <- max(s_maxAcc_4$Y_value)  

# Create a data frame for the max acceleration

#s_maxAcc <- data.frame(s_maxAcc_1, s_maxAcc_2, s_maxAcc_3, s_maxAcc_4 )

# Standardize column names

#colnames(s_maxAcc) <- c("maxAcc_1", "maxAcc_2", "maxAcc_3", "maxAcc_4")

# Add a column for player name

#shuyi <- rep("shuyi", length(s_maxAcc$maxAcc_1))
#s_maxAcc$player_name <- shuyi

