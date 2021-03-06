% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/discrete-07-uchicago.R
\name{scale_color_uchicago}
\alias{scale_color_uchicago}
\alias{scale_colour_uchicago}
\alias{scale_fill_uchicago}
\title{The University of Chicago Color Scales}
\usage{
scale_color_uchicago(palette = c("default", "light", "dark"), alpha = 1,
  ...)

scale_colour_uchicago(palette = c("default", "light", "dark"), alpha = 1,
  ...)

scale_fill_uchicago(palette = c("default", "light", "dark"), alpha = 1, ...)
}
\arguments{
\item{palette}{Palette type.
There are 3 available options:
\code{"default"} (9-color palette);
\code{"light"} (9-color light palette);
\code{"dark"} (9-color dark palette).}

\item{alpha}{Transparency level, a real number in (0, 1].
See \code{alpha} in \code{\link[grDevices]{rgb}} for details.}

\item{...}{additional parameters for \code{\link[ggplot2]{discrete_scale}}}
}
\description{
See \code{\link{pal_uchicago}} for details.
}
\examples{
library("ggplot2")
data("diamonds")

p1 = ggplot(subset(diamonds, carat >= 2.2),
            aes(x = table, y = price, colour = cut)) +
  geom_point(alpha = 0.7) +
  geom_smooth(method = "loess", alpha = 0.1, size = 1, span = 1) +
  theme_bw()

p2 = ggplot(subset(diamonds, carat > 2.2 & depth > 55 & depth < 70),
            aes(x = depth, fill = cut)) +
  geom_histogram(colour = "black", binwidth = 1, position = "dodge") +
  theme_bw()

p1 + scale_color_uchicago()
p2 + scale_fill_uchicago()

p1 + scale_color_uchicago(palette = "light")
p2 + scale_fill_uchicago(palette = "light")

p1 + scale_color_uchicago(palette = "dark")
p2 + scale_fill_uchicago(palette = "dark")
}
\author{
Nan Xiao <\email{me@nanx.me}> |
<\href{https://nanx.me}{https://nanx.me}>
}
\references{
\url{http://communications.uchicago.edu/identity/color-palette}
}

