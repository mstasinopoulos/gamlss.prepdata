\name{data_part}
\alias{data_part}

\title{
A function to partition a data frame
}
\description{
The function \code{data_part()} creates a index which partition randomly the observations of a \code{data.frame} into subsets.
It creates randomly a factor  of length n called \code{partition}, which subdivide the data i) into either two sets, training, \code{train}, and test, \code{test}, or ii)  into three sets  training, \code{train}, validation, \code{val} and test, \code{test} or iii) into a k-fold cross validation sets.

}
\usage{
data_part(data, partition = 2L, probs, setseed = 123, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{a \code{data.frame}}
  \item{partition}{2, 3 or a number less than 20}
  \item{probs}{probabilities for the random selection}
  \item{setseed}{setting the sead so the proccess can be repeated}
  \item{\dots}{extra arguments}
}

\value{
Both function produce a data frame. The function \code{data_part()} adds a factor  \code{partition} while \code{data_rm1val()}  removes variable with only one value.
}
\references{
Rigby, R. A., Stasinopoulos, D. M.,  Heller, G. Z.,  and De Bastiani, F. (2019)
	\emph{Distributions for modeling location, scale, and shape: Using GAMLSS in R}, Chapman and Hall/CRC. An older version can be found in \url{https://www.gamlss.com/}.

Stasinopoulos D. M. Rigby R.A. (2007) Generalized additive models for location scale and shape (GAMLSS) in R.
\emph{Journal of Statistical Software}, Vol. \bold{23}, Issue 7, Dec 2007, \url{https://www.jstatsoft.org/v23/i07/}.

Stasinopoulos D. M., Rigby R.A., Heller G., Voudouris V., and De Bastiani F., (2017)
\emph{Flexible Regression and Smoothing: Using GAMLSS in R},  Chapman and Hall/CRC.

Stasinopoulos, M.D., Kneib, T., Klein, N., Mayr, A. and Heller, G.Z., (2024). \emph{Generalized Additive Models for Location, Scale and Shape: A Distributional Regression Approach, with Applications} (Vol. \bold{56}). Cambridge University Press.

(see also \url{https://www.gamlss.com/}).
}
\author{Mikis Stasinopoulos, Bob Rigby and Fernanda De Bastiani}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{data_str}}
}
\examples{
da <- data_part(rent)
head(da)
mosaicplot(table(da$partition))
da.train <- subset(da, da$partition=="train")
da.test <- subset(da, da$partition=="test")
dim(da.train)
dim(da.test)
}

\keyword{regression}
