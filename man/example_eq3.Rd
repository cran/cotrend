\name{Examples}
\alias{example_eq3}
\alias{example_eq4}
\alias{example_eq8}
\alias{example_eq9}
\title{
Examples time series presented in Guo and Shintani (2011) to test their algorithm.
}
\description{
Some examples found in Guo and Shintani (2011). The number of the example corresponds to the equation number in
the paper (version published on Feb 2011). The current code can adjust every parameters in the paper. The default values are the most common values selected in the paper.
}
\usage{
example_eq3(T = 50, mu1 = 0.5, mu2 = 2, c1 = 0.5, c2 = 1)
example_eq4(T = 50, mu1 = 0.5, mu2 = 2, c1 = 0.5, c2 = 1)
example_eq8(T = 50, rho1 = 1, mu0 = 2, mu1 = 0.5, c = 0.5, tau = 0.5, y0 = 0)
example_eq9(T = 400, mu0 = 2 , mu1=0.5, c=0.5, tau1=0.5, tau2=1/3)
}
\arguments{
  \item{T}{
Number of time periods (observations). Practically the number of rows in the output matrix.
} 
  \item{mu0}{Increase rate for deterministic trend. See Gou and Shintani (2011).}
  \item{mu1}{Increase rate for deterministic trend. See Guo and Shintani(2011).}
  \item{mu2}{Increase rate for deterministic trend.}
  \item{c}{Intercept for deterministic trend.}
  \item{c1}{Intercept for deterministic trend.}
  \item{c2}{Intercept for deterministic trend.}
  \item{rho1}{Autocorrelation coefficient. If rho1 = 1, we have a I(1) process. See Guo and Shintani (2011).}
  \item{tau}{Time location for break point. Before tau the mean trend is different than after.}
  \item{tau1}{Time location for break point. Before tau the mean trend is different than after.}
  \item{tau2}{Time location for break point. Before tau the mean trend is different than after.}
  \item{y0}{Starting point for simulation of Equation 9. See Guo and Shintani (2011).}	 
}

\details{
The outcome of the rank finding algorithm cotrend depends on T. That is true for all examples. If T-> Inf, the probability to find the correct rank pair is P -> 1.  
Equation 3 should give rank pair r1 = 0 and r2 = 1. Equation 4 has r1 = 1 and r2 = 1. Both examples are independent of the parameters selected.
Equation 8 has rank r1 = 1 and r2 = 1 if rho1 = 0.5 and r1 = 0 and r2 = 1 if rho1 = 1.
Equation 9 has rank r1 = 0 and r2 = 0 for the default parameters. 
See Guo and Shintani (2011).
}
\value{
Output is matrix of dimention T x m. m=2 for eq3 or eq4 and m=3 for eq8 and eq9.
}
\references{
Z-F. Guo and M. Shintani, "Consistent cotrending rank selection when both stochastic and nonlinear deterministic trends are present", Preprint, www.vanderbilt.edu/econ/faculty/Shintani/cotrend.pdf, version Feb 2011.
}
\author{
A. Christian Silva
}

\examples{
x <- example_eq3()
c <- cotrend(x)
print(c)
}
\keyword{example}
