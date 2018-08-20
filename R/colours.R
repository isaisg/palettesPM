
#' Get the list of fractions samples acrros several experiments
#' @return a vector of the canonical names of the fractions
#' @export
pm.names.fractions <- function(...) {
	fractions <- c("Agar","BulkSoil","EC","Inoculum","Rhizosphere","Root","Sand","Shoot","Soil")
	return(fractions)
}

#' Canonical colour scheme for the fractions sampled
#' @param ... ignored
#' @return a named, vector of hex colors, indexed by fraction names
#' @export
pm.colors.fractions <- function(...) {
	fractions <- pm.names.fractions()
	cols <- c("black","#DAA520","#7CFC00","#EE82EE","#0000EE","#00A0F0","#00A000","#F00000","#595959")
	return( setNames(cols, fractions) )
}


#' Get the list of Genotypes used so far
#' @return a vector of the canonical names of the genotypes
#' @export
pm.names.genotypes <- function(...) {
        genotypes <- c("Col-0","phf1","phr1/phl1")
        return(genotypes)
}


#' Canonical colour scheme for the Arabidopsis thaliana Geontypes
#' @param ... ignored
#' @return a named, vector of hex colors, indexed by Genotype names
#' @export
pm.colors.genotypes <- function(...) {
        genotypes <- pm.names.genotypes()
        cols <- c("#A6CEE3","#E5C494","#FDB462")
        return( setNames(cols, genotypes) )
}

