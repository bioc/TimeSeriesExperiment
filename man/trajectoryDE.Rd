% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/differential_expression.R
\name{trajectoryDE}
\alias{trajectoryDE}
\title{Differential trajectory testing.}
\usage{
trajectoryDE(
  object,
  dist_method = "euclidean",
  p_adj_method = "BH",
  lambda = c(0.5, 0.25),
  verbose = TRUE,
  ...
)
}
\arguments{
\item{object}{A \code{TimeSeriesExperiment} object.}

\item{dist_method}{the name of any method used in vegdist to calculate
pairwise distances, "euclidean" by defaults.}

\item{p_adj_method}{a correction method. See details in
\code{\link[stats]{p.adjust}}. Default is "BH".}

\item{lambda}{Weights for each lag difference, for time-course data.
Length of \code{lambda} specifies number of lags to include. Default
is c(0.5, 0.25) for lag 1 and 2. Used only if 'timecourse.data' slot not
initialized.}

\item{verbose}{whether code comments should be printed. Default is TRUE.}

\item{...}{other options to \code{\link[vegan]{adonis}} function from
\code{vegan}.}
}
\value{
a data.frame with adonis results for all features.
}
\description{
Performs differential trajectory testing for timecourse
data using \code{\link[vegan]{adonis}} method.
}
\examples{
data("endoderm_small")
endoderm_small <- makeTimeSeries(endoderm_small)
\dontrun{
   endoderm_small <- trajectoryDE(endoderm_small)
   head(differentialExpression(endoderm_small, "trajectory_de"))
}
}
