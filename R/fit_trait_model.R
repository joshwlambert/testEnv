#' Fits a Markov model of trait evolution along a phylogenetic tree
#'
#' @param tree_trait A `phylo4d` object containing a phylogenetic tree and trait
#' data at each of the tips
#'
#' @return `fitMK` object from `phytools` package
#' @export
fit_trait_model <- function(tree_trait) {
  tree <- methods::as(tree_trait, "phylo")
  traits <- unlist(tree_trait@data)
  names(traits) <- tree_trait@label
  out <- phytools::fitMk(tree = tree, x = traits, model = "SYM")
  return(out)
}
