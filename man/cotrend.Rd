\name{cotrend}
\alias{cotrend}
\alias{cotrend.default}
\alias{print.cotrend}
\title{
Consistent Cotrending Rank Selection
}
\description{
Package implements method to find cointegration and cotrending rank according to Guo and Shintani (2011).
}
\usage{
cotrend(x, ...)
\method{cotrend}{default}(x,type=c("paired","joint"),CT="BIC",...)
\method{print}{cotrend}(x,...)
}
\arguments{
  \item{x}{
Matrix or xts object of dimension T x m. Where T is the number of time periods and m is the number of time series.
}
  \item{\dots}{
Additional parameters are type = "paired" (default) or "joint" which metric function CT="BIC" (default),"HQ" or "AIC".
}
  \item{type}{ Selects the method. "paired" is default and it find r1 and r2 independently. "joint" selects both r1 and r2 at the same time.}
  \item{CT}{Penalty functions elements. The default is to use "BIC" (Bayesian information criterion). User can also select "AIC" or "HQ". See Guo and Shintani (2011).}
}
\details{
	For details on method see Guo and Shintani (2011). Most experiments find default method (paired,BIC) to have good performance. The probability of finding the correct rank is quite good for data sample as small as 50 observations.
}
\value{
List with:
  \item{rank}{Array with 2 elements. First element is the cointegration rank (r1) and the second is the week cotrending rank (r2).}
  \item{m}{Number of time series. Number of cols of input matrix.}
  \item{T}{Number of time periods (observations). Number of rows of input matrix.}
  \item{eigenvalues}{Eigenvalues from von Neumann matrix used in the algorithm.}
  \item{vonNeumann}{Multivarite ratio of the von Neumann ratio. A matrix of dimention m x m.}
%% ...
}
\references{
Z-F. Guo and M. Shintani, "Consistent cotrending rank selection when both stochastic and nonlinear deterministic trends are present", Preprint, www.vanderbilt.edu/econ/faculty/Shintani/cotrend.pdf, version Feb 2011.
}
\author{
A. Christian Silva
}
\examples{
x <- example_eq3()
cotrend(x)
cotrend(x,type="joint")
}
\keyword{cotrend}
\keyword{cointegration}
