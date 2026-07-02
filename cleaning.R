library(tidyverse)

file <- "./data/original/en_US.blogs.txt"
all_lines <- read_lines(file)
dim(all_lines)
set.seed(123)
sampled_lines <- sample(all_lines, size = length(all_lines)*.05)

text_data <- tibble(line_id = 1:length(sampled_lines), text = sampled_lines)

# View your sampled data structure
print(text_data)

      