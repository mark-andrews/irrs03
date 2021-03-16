The required software for this workshop is all free and open source
and will run identically on Windows, Mac OS X, and Linux platforms.

There are three main pieces of software to install:

-   [R](https://www.r-project.org/): An environment for statistical
    computing.
-   [Rstudio](https://www.rstudio.com/): An integrated development
    environment for using R.
-   [tidyverse](https://www.tidyverse.org/): A bundle of R packages to
    use R the modern way.
-   Miscellaneous R packages: Other vital, or just handy, R packages.

## Installing R

Go to the [R](https://www.r-project.org/) website and follow the links
for downloading. On Windows, this should lead you to

-   <https://cran.r-project.org/bin/windows/base/>.

Downloading this and following the usual Windows installation process,
you\'ll then have a full working version of R.

On Macs, the installation procedure is essentially identical. The latest
Mac installer should be available at

-   <https://cran.r-project.org/bin/macosx/>.

Download this and follow the usual Mac installation process to get a
full working version of R for Macs.

## Installing Rstudio

Using Rstudio is not strictly necessary to use R.
However, RStudio is now by far the most common way of using R. 
To install it, go to the [Rstudio](https://www.rstudio.com/) website, specifically to

-   <https://www.rstudio.com/products/rstudio/download/>

which will list all the available installers. Note that you just want
the Rstudio *desktop* program. The Rstudio *server* is something else
(basically it is for providing remote access to Rstudio hosted on Linux
servers).

Again, you\'ll just follow the usual installation process for Windows or Macs to install Rstudio using these installers.

## Installing the tidyverse packages

The so-called [tidyverse](https://www.tidyverse.org/) is a collection of interrelated R packages that implement essentially a new standard library for R.
In other words, the [tidyverse](https://www.tidyverse.org/) gives us a bundle tools for doing commonplace data manipulation and visualization and programming.
It represents the modern way to use R, and in my opinion, it\'s the best way to use R.
All the [tidyverse](https://www.tidyverse.org/) packages can be installed by typing the following command in R:

```r
install.packages("tidyverse")
```

The main packages that are contained within the [tidyverse](https://www.tidyverse.org/) bundle are listed [here](https://www.tidyverse.org/packages/).
