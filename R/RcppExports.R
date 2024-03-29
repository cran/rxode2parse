# Generated by using Rcpp::compileAttributes() -> do not edit by hand
# Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#' Force using base order for rxode2 radix sorting
#'
#' @param forceBase boolean indicating if rxode2 should use R's
#'   [order()] for radix sorting instead of
#'   `data.table`'s parallel radix sorting.
#'
#' @return NILL; called for side effects
#'
#' @examples
#' \donttest{
#' forderForceBase(TRUE) # Use base `order` for rxode2 sorts
#' forderForceBase(FALSE) # Use `data.table` for rxode2 sorts
#' }
#' @export
#' @keywords internal
forderForceBase <- function(forceBase = FALSE) {
    .Call(`_rxode2parse_forderForceBase`, forceBase)
}

#' Set Initial conditions to time zero instead of the first observed/dosed time
#'
#' @param ini0 When `TRUE` (default), set initial conditions to time
#'   zero. Otherwise the initial conditions are the first observed
#'   time.
#'
#' @return the boolean ini0, though this is called for its side effects
#'
#' @export
rxSetIni0 <- function(ini0 = TRUE) {
    .Call(`_rxode2parse_rxSetIni0`, ini0)
}

etTransEvidIsObs <- function(isObsSexp) {
    .Call(`_rxode2parse_etTransEvidIsObs`, isObsSexp)
}

#' Event translation for rxode2
#'
#' @param inData Data frame to translate
#'
#' @param mv Model variables to translate data
#'
#' @param addCmt Add compartment to data frame (default `FALSE`).
#'
#' @param dropUnits Boolean to drop the units (default `FALSE`).
#'
#' @param allTimeVar Treat all covariates as if they were time-varying
#'
#' @param keepDosingOnly keep the individuals who only have dosing records and any
#'   trailing dosing records after the last observation.
#'
#' @param combineDvid is a boolean indicating if rxode2 will use `DVID` on observation
#'     records to change the `cmt` value; Useful for multiple-endpoint nlmixr models.  By default
#'     this is determined by `option("rxode2.combine.dvid")` and if the option has not been set,
#'     this is `TRUE`. This typically does not affect rxode2 simulations.
#'
#' @param keep This is a named vector of items you want to keep in the final rxode2 dataset.
#'     For added rxode2 event records (if seen), last observation carried forward will be used.
#'
#' @param addlKeepsCov This determines if the additional dosing items
#'   repeats the dose only (`FALSE`) or keeps the covariates at the
#'   record of the dose (`TRUE`)
#'
#' @param addlDropSs When there are steady state doses with an `addl`
#'   specification the steady state flag is dropped with repeated
#'   doses (when `TRUE`) or retained (when `FALSE`)
#'
#' @param ssAtDoseTime Boolean that when `TRUE` back calculates the
#'   steady concentration at the actual time of dose, otherwise when
#'   `FALSE` the doses are shifted
#'
#' @return Object for solving in rxode2
#'
#' @keywords internal
#'
#' @export
etTransParse <- function(inData, mv, addCmt = FALSE, dropUnits = FALSE, allTimeVar = FALSE, keepDosingOnly = FALSE, combineDvid = NULL, keep = character(0), addlKeepsCov = FALSE, addlDropSs = TRUE, ssAtDoseTime = TRUE) {
    .Call(`_rxode2parse_etTransParse`, inData, mv, addCmt, dropUnits, allTimeVar, keepDosingOnly, combineDvid, keep, addlKeepsCov, addlDropSs, ssAtDoseTime)
}

rxEtTransAsDataFrame_ <- function(inData1) {
    .Call(`_rxode2parse_rxEtTransAsDataFrame_`, inData1)
}

convertId_ <- function(x) {
    .Call(`_rxode2parse_convertId_`, x)
}

rxQs <- function(x) {
    .Call(`_rxode2parse_rxQs`, x)
}

rxQr <- function(encoded_string) {
    .Call(`_rxode2parse_rxQr`, encoded_string)
}

rxode2parseSetRstudio <- function(isRstudio = FALSE) {
    .Call(`_rxode2parse_rxode2parseSetRstudio`, isRstudio)
}

#' Silence some of rxode2's C/C++ messages
#'
#' @param silent can be 0L "noisy"  or 1L "silent"
#'
#' @keywords internal
#' @return TRUE; called for side effects
#' @export
rxParseSetSilentErr <- function(silent) {
    .Call(`_rxode2parse_rxParseSetSilentErr`, silent)
}

rxUpdateTrans_ <- function(ret, prefix, libName) {
    .Call(`_rxode2parse_rxUpdateTrans_`, ret, prefix, libName)
}

