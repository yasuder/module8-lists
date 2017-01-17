# Exercise 2: `*apply()`

# Create a *list* of 10 random numbers. Use the `runif` function to make a vector of random numbers,
# then use `as.list()` to convert that to a list.
random.num.vec <- runif(10)
random.num.list <- as.list(random.num.vec)

# Use `lapply()` to apply the `round()` function to each number, rounding it to the nearest .1
rounded.num.list <- lapply(random.num.list, round, digits = 1)
print(rounded.num.list)


## Bonus

# Create a variable 'sentence' that has contains a sentence of text (go for something longish).
# Make it lowercase
sentence <- "the great brown fox jumps over the lazy dog."

# Use the `strsplit()` function to split the sentence into vector of letters.
# Hint: split on `""` to split on everything
# Note: this will return a _list_ with 1 element (which is the vector of letters)
split <- strsplit(sentence, split = "")

# Extract the vector of letters from the resulting list
letters.vec <- split[[1]]
print(letters.vec)

# Use the `unique()` function to get a vector unique letters
unique.letters <- unique(letters.vec)
print(unique.letters)

# Define a function CountOccurances that takes in two parameters: a letter and a vector letters.
# The function should return how many times that letter occurs in the vector
# Hint: use a filter!
CountOccurances <- function(one.letter, vec.of.letters) {
    count <- vec.of.letters[tolower(vec.of.letters) == one.letter]
    return(length(count))
}

# Call your CountOccurances() function to see how many times the letter 'e' is in your sentence.
e.count <- CountOccurances('e', letters.vec)
print(e.count)

# Use `sapply()` to apply your CountOccurances() function to each unique letter in the vector to determine its frequency!
# Convert the result into a list (using `as.list`).
letters.vec <- as.list(sapply(unique.letters, CountOccurances, letters.vec))

# Print the resulting list of frequencies
print(letters.vec)