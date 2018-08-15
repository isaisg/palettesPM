
#' Get the list of fractions samples acrros several experiments
#' @return a vector of the canonical names of the fractions
#' @references 
#' @export

pm_fractions <- function(...) {
	fractions <- c("Inoculum","BulkSoil","Soil","Root","Shoot","Rhizosphere","EC","Sand","Agar")
	fractions <- sort(fractions)
	return(fractions)
}

