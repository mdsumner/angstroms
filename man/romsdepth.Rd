% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/roms_h.R
\name{romsdepth}
\alias{romsdepth}
\title{Coordinates at depth}
\usage{
romsdepth(
  x,
  grid_type = "rho",
  slice,
  ...,
  S = "Cs_r",
  depth = "h",
  simple = FALSE
)
}
\arguments{
\item{x}{ROMS file name}

\item{grid_type}{string: "rho","psi","u","v","w"}

\item{slice}{integer: if non-missing, use this time slice to index into zeta (free-surface). Otherwise assume zeta is zero (and hence depth is time-independent)}

\item{...}{dots}

\item{S}{of S-coordinate stretching curve at RHO-points}

\item{depth}{depth thing}

\item{simple}{do old deprecated behaviour (don't use)}
}
\value{
RasterStack with a layer for every depth
}
\description{
Extract the multi-layer 'h'eight grid with S-coordinate stretching applied
}
\details{
Compute ROMS grid depth from vertical stretched variables
Given a bathymetry (h), free-surface (zeta) and terrain-following parameters, this function computes the 3D depths for the requested C-grid location. If the free-surface is not provided, a zero value is assumed resulting in unperturb depths.  This function can be used when generating initial conditions or climatology data for an application. Check the following link for details: https://www.myroms.org/wiki/index.php/Vertical_S-coordinate
See https://github.com/dcherian/tools/blob/master/ROMS/arango/utility/set_depth.m
Original Matlab code by Deepak Cherian.
\code{S} and \code{h} are the  names of the appropriate variables
}
