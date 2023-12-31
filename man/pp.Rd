% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pp.R
\name{pp}
\alias{pp}
\title{Conduct \code{PP} unit root test using \code{EViews} routines}
\usage{
pp(series, info = "sic", caption = NULL, format = kable_format(), ...)
}
\arguments{
\item{series}{A vector of names or wildcard expressions for series object(s) contained in a dataframe.}

\item{info}{Name of the information criterion. For example, \code{SIC}, \code{AIC}, \code{HQ}.}

\item{caption}{Table caption as in \code{kable}.}

\item{format}{Table format in \code{kable}.}

\item{...}{Other arguments supported by \code{EviewsR} \code{import_kable()} function.}
}
\value{
An EViews workfile
}
\description{
Use this function to conduct \code{PP} unit root test using \code{EViews} routines and report it in a table.
}
\examples{
library(URooTab)
\donttest{
set.seed(1234)
x=rnorm(100)
y=cumsum(x)
z=cumsum(y)
dataFrame=data.frame(x,y,z)

# Check if `EViews` is installed before running the tests

eviewsExecutables=c('eviews','eviews10',paste0('Eviews',9:13,'_X',c(86,64)))
if(any(Sys.which(eviewsExecutables)!="")) pp(series=dataFrame,format="html",info="hq")
}
}
\seealso{
Other important functions: 
\code{\link{adf}()}
}
\concept{important functions}
\keyword{documentation}
