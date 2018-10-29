
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
	cols <- c("black","#DAA520","#7CFC00","#EE82EE","#0000EE","#B27612","#7D17CC","#29AB5C","#7D17CC")
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

#' Get the list of Genotypes used so far
#' @return a vector of the canonical names of the genotypes
#' @export
pm.names.phyla <- function(...) {
        phyla <- c("Acidobacteria","Actinobacteria","Bacteroidetes","Chloroflexi","Cyanobacteria",
	"Firmicutes","Gemmatimonadetes","Patescibacteria","Proteobacteria","Verrucomicrobia","Other")
        return(phyla)
}


#' Canonical colour scheme for the Arabidopsis thaliana Geontypes
#' @param ... ignored
#' @return a named, vector of hex colors, indexed by Genotype names
#' @export
pm.colors.phyla <- function(...) {
        phyla <- pm.names.phyla()
        cols <- c("#41F0AC","#0000C0","#FFFF00","#008000",
                  "#BCFFEE","#B856D7","#FF0D00","#8B4513","#FF8000","#8D8DFF","#000000")
        return( setNames(cols, phyla) )
}



#' @export
scale_fill_genotype <- function(..., na.value = "grey") {
	ggplot2::scale_fill_manual(..., values = pm.colors.genotypes(), na.value = na.value)
}

#' @export
scale_color_genotype <- function(..., na.value = "grey") {
        ggplot2::scale_color_manual(..., values = pm.colors.genotypes(), na.value = na.value)
}


#' @export
scale_fill_fraction <- function(..., na.value = "grey") {
        ggplot2::scale_fill_manual(..., values = pm.colors.fractions(), na.value = na.value)
}

#' @export
scale_color_fraction <- function(..., na.value = "grey") {
        ggplot2::scale_color_manual(..., values = pm.colors.fractions(), na.value = na.value)
}


#' @export
scale_fill_phyla <- function(..., na.value = "grey") {
        ggplot2::scale_fill_manual(..., values = pm.colors.phyla(), na.value = na.value)
}

#' @export
scale_color_phyla <- function(..., na.value = "grey") {
        ggplot2::scale_color_manual(..., values = pm.colors.phyla(), na.value = na.value)
}

