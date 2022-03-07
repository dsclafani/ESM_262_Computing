#fish - need to finish based on what professor did

fish_summary = function(summary(fish_data)) [
  fish_data = as.factor(fish_data)
  rarestfish = names(which.min(summary(fish_data)))
  most_common = names(which.max(summary(fish_data)))
]

