# Package Load Function; a script to read a package name, check to see if it's been installed, 
# install it if necessary, and load the library afterwards.

packageLoad <-
  function(x) {
    for (i in 1:length(x)) {
      if (!x[i] %in% installed.packages()) {
        install.packages(x[i])
      }
      library(x[i], character.only = TRUE)
    }
  }

# Use function to set up environment
# Create a concatenated (c) list of packages. Then run the list through the packageLoad function.
# Add package names to 'packages' throughout the semester as we use them..

packages <- c("tidyverse", 
              "palmerpenguins", 
              "rmarkdown", 
              "sf", 
              "terra", 
              "tmap", 
              "rmarkdown",
              "tigris",
              "elevatr",
              #"rgdal",
              "ggthemes", 
              "RColorBrewer", 
              "viridis", 
              "ggdark", 
              "plotly",
              "readxl", 
              "lterdatasampler", 
              "rstatix", 
              "lubridate")
packageLoad(packages)
