## code to prepare `test_data` dataset goes here

# simulate a phylogenetic tree

tree <- ape::rphylo(n = 100, birth = 1, death = 0)

# simulate discrete trait data
traits <- sample(
  x = c(1, 2, 3),
  size = length(tree$tip.label),
  replace = TRUE,
  prob = c(0.6, 0.2, 0.2)
)

# combine data in a phylo4d class

tree_traits <- phylobase::phylo4d(tree, data.frame (trait = traits))

usethis::use_data(tree_traits, overwrite = TRUE)
