
matrix(1:9, byrow = TRUE, nrow = 3)

# Box office Star Wars (in millions!) #The first element of each vector indicates the US box office revenue, the second element refers to the Non-US box office
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)

# Create box_office
box_office <- c(new_hope, empire_strikes, return_jedi)

# Construct star_wars_matrix
star_wars_matrix <- matrix(box_office, nrow = 3, byrow = TRUE)

#print
star_wars_matrix

#Similar to vectors, you can add names for the rows and the columns of a matrix

rownames(my_matrix) <- row_names_vector
colnames(my_matrix) <- col_names_vector

# Box office Star Wars (in millions!)
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)

# Construct matrix
star_wars_matrix <- matrix(c(new_hope, empire_strikes, return_jedi), nrow = 3, byrow = TRUE)

# Vectors region and titles, used for naming
region <- c("US", "non-US")
titles <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")

# Name the columns with region

 colnames(star_wars_matrix) <- region

# Name the rows with titles

rownames(star_wars_matrix) <- titles

# Print out star_wars_matrix

star_wars_matrix

#In R, the function rowSums() conveniently calculates the totals for each row of a matrix. This function creates a new vector:

# rowSums(my_matrix)

# Construct star_wars_matrix
box_office <- c(460.998, 314.4, 290.475, 247.900, 309.306, 165.8)
star_wars_matrix <- matrix(box_office, nrow = 3, byrow = TRUE,
                           dimnames = list(c("A New Hope", "The Empire Strikes Back", "Return of the Jedi"), 
                                           c("US", "non-US")))

# Calculate worldwide box office figures
worldwide_vector <- rowSums(star_wars_matrix)

#print sums
worldwide_vector

# You can add a column or multiple columns to a matrix with the cbind() function, which merges matrices and/or vectors together by column. For example:

# big_matrix <- cbind(matrix1, matrix2, vector1

# Construct star_wars_matrix
box_office <- c(460.998, 314.4, 290.475, 247.900, 309.306, 165.8)
star_wars_matrix <- matrix(box_office, nrow = 3, byrow = TRUE,
                           dimnames = list(c("A New Hope", "The Empire Strikes Back", "Return of the Jedi"), 
                                           c("US", "non-US")))

# The worldwide box office figures
worldwide_vector <- rowSums(star_wars_matrix)

# Bind the new variable worldwide_vector as a column to star_wars_matrix
all_wars_worldwide_matrix <- cbind(star_wars_matrix, worldwide_vector)

#print
all_wars_worldwide_matrix

# https://campus.datacamp.com/courses/free-introduction-to-r/chapter-3-matrices-3?ex=5 

# Box office Star Wars 2 (in millions!)
The_Phantom_Menace   <- c(474.5, 552.5)
Attack_of_the_Clones <- c(310.7, 338.7)
Revenge_of_the_Sith  <- c(380.3, 468.5)

# Construct matrix 2
star_wars_matrix2 <- matrix(c(The_Phantom_Menace, Attack_of_the_Clones, Revenge_of_the_Sith), nrow = 3, byrow = TRUE)

# Vectors region and titles, used for naming
region <- c("US", "non-US")
titles <- c("The Phantom Menace ", "Attack of the Clones", "Revenge of the Sith")

# Name the columns with region

 colnames(star_wars_matrix2) <- region

# Name the rows with titles

rownames(star_wars_matrix2) <- titles

# Print out star_wars_matrix

star_wars_matrix2


# star_wars_matrix and star_wars_matrix2 are available in your workspace
star_wars_matrix  
star_wars_matrix2 

# Combine both Star Wars trilogies in one matrix
all_wars_matrix <- rbind(star_wars_matrix, star_wars_matrix2 )

#print
all_wars_matrix


# Calculate the total revenue for the US and the non-US region and assign total_revenue_vector. You can use the colSums() function.

# all_wars_matrix is available in your workspace
all_wars_matrix

# Total revenue for US and non-US
total_revenue_vector <- colSums(all_wars_matrix)
  
# Print out total_revenue_vector
total_revenue_vector

# SELECTING ELEMENTS
# my_matrix[1,2] selects the element at the first row and second column.
# my_matrix[1:3,2:4] results in a matrix with the data on the rows 1, 2, 3 and columns 2, 3, 4.
# my_matrix[,1] selects all elements of the first column.
# my_matrix[1,] selects all elements of the first row.

# all_wars_matrix is available in your workspace
all_wars_matrix

# Select the non-US revenue for all movies
non_us_all <- all_wars_matrix[,2]
  
# Average non-US revenue

 mean(non_us_all)
 
# Select the non-US revenue for first two movies
non_us_some <- all_wars_matrix[1:2,2]
  
# Average non-US revenue for first two movies

mean(non_us_some)


# Similar to what you have learned with vectors, the standard operators like +, -, /, *, etc. work in an element-wise way on matrices in R.
# For example, 2 * my_matrix multiplies each element of my_matrix by two.

# Estimate the visitors
visitors <- all_wars_matrix / 5
  
# Print the estimate to the console

visitors


# Ticket price matrix
new_hope <- c(5, 6)
empire_strikes <- c(6.50, 7)
return_jedi <- c(5.50, 6.50)
The_Phantom_Menace   <- c(5, 6)
Attack_of_the_Clones <- c(5.50, 6.50)
Revenge_of_the_Sith  <- c(6.50, 7)

# Construct ticket_prices_matrix
ticket_prices_matrix <- matrix(c(new_hope, empire_strikes, return_jedi, The_Phantom_Menace, Attack_of_the_Clones, Revenge_of_the_Sith), nrow = 6, byrow = TRUE)

# Vectors region and titles, used for naming
region <- c("US", "non-US")
titles <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi", "The Phantom Menace ", "Attack of the Clones", "Revenge of the Sith")

# Name the columns with region

 colnames(ticket_prices_matrix) <- region

# Name the rows with titles

rownames(ticket_prices_matrix) <- titles

# Print out star_wars_matrix

ticket_prices_matrix

# Just like 2 * my_matrix multiplied every element of my_matrix by two, my_matrix1 * my_matrix2 creates a matrix where each element is the product of the corresponding elements in my_matrix1 and my_matrix2.
# Those who are familiar with matrices should note that this is not the standard matrix multiplication for which you should use %*% in R.

# all_wars_matrix and ticket_prices_matrix are available in your workspace
all_wars_matrix
ticket_prices_matrix

# Estimated number of visitors
visitors <- all_wars_matrix/ticket_prices_matrix

# US visitors
us_visitors <- visitors[,1]

# Average number of US visitors

mean(us_visitors)


