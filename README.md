
<!-- README.md is generated from README.Rmd. Please edit that file -->

[![Project Status: WIP – Initial development is in progress, but there
has not yet been a stable, usable release suitable for the
public.](https://www.repostatus.org/badges/latest/wip.svg)](https://www.repostatus.org/#wip)
[![Travis-CI Build
Status](https://travis-ci.com/thomascrines/statxplorer.svg?branch=master)](https://travis-ci.com/thomascrines/statxplorer)

# statxplorer

Use statxplorer to download data from
[Stat-Xplore](https://stat-xplore.dwp.gov.uk/webapi/jsf/login.xhtml).
statxplorer can be used interactively, or as part of a [reproducible
analytical pipeline](https://ukgovdatascience.github.io/rap_companion/).

## Installation

Install opendatascot from GitHub with:

``` r
# install.packages("devtools")
devtools::install_github("thomascrines/statxplorer")
```

If the above does not work, you can install from source:

1.  Go to the statxplorer
    [repository](https://github.com/thomascrines/statxplorer) on GitHub
2.  Click **Clone or download** then **Download ZIP**
3.  Save the file locally (e.g. your H drive) and Unzip
4.  Install with install.packages()

<!-- end list -->

``` r
install.packages("your/directory/statxplorer", repos = NULL,
                 type="source", lib = "your/R/package/library/directory")
```

## API Keys

Stat-Xplore API requires an API key which can be obtained through their
[website](https://stat-xplore.dwp.gov.uk/webapi/online-help/Open-Data-API.html).

Once you have an API key, you can add it to the .Renviron file using the
following steps.

  - Find your home directory. On Windows run

<!-- end list -->

``` r
Sys.getenv('R_USER')
```

And on Mac run

``` r
Sys.getenv('HOME')
```

  - If there is not already a .Renviron file, create a plain text file
    in your home directory named .Renviron.
  - Add the following to your .Renviron file:

StatXploreApiKey = “YOUR\_KEY”

\*.Renviron only applies to RStudio. If you are not using RStudio, use
‘Modify environment variables’ or update .bash\_profile in Mac to set
environment variables.

You will also need to update the statx\_request\_bodies file from

``` r
accessKey <- Sys.getenv("StatXploreApiKey")
```

to refer to your variables.\*

## Example

TODO
