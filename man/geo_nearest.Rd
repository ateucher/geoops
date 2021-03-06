% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nearest.R
\name{geo_nearest}
\alias{geo_nearest}
\title{Calculate nearest point to a reference point}
\usage{
geo_nearest(target_point, points)
}
\arguments{
\item{target_point}{the reference point \link{Feature}<\link{Point}>}

\item{points}{against input point set \link{FeatureCollection}<\link{Point}>}
}
\value{
A \link{Feature}<\link{Point}> the closest point in the set to
the reference point
}
\description{
Takes a reference \link{Point} and a FeatureCollection of Features
with Point geometries and returns the point from the FeatureCollection
closest to the reference. This calculation is geodesic.
}
\examples{
point1 <- '{
  "type": "Feature",
  "properties": {
     "marker-color": "#0f0"
   },
  "geometry": {
     "type": "Point",
     "coordinates": [28.965797, 41.010086]
  }
}'

points <- '{
  "type": "FeatureCollection",
  "features": [
    {
      "type": "Feature",
      "properties": {},
      "geometry": {
        "type": "Point",
        "coordinates": [28.973865, 41.011122]
      }
    }, {
      "type": "Feature",
      "properties": {},
      "geometry": {
        "type": "Point",
        "coordinates": [28.948459, 41.024204]
      }
    }, {
      "type": "Feature",
      "properties": {},
      "geometry": {
        "type": "Point",
        "coordinates": [28.938674, 41.013324]
      }
    }
  ]
}'

geo_nearest(point1, points)
}
