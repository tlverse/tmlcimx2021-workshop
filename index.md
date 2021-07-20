---
knit: "bookdown::render_book"
title: "Targeted Machine Learning with Big Data in the `tlverse`"
subtitle: "A Workshop for the Public Health and Epidemiology Program (PASPE) at
the National Institute of Public Health in Mexico"
author: "Mark van der Laan, Alan Hubbard, Jeremy Coyle, Nima Hejazi, Ivana
  Malenica, Rachael Phillips"
date: "updated: July 19, 2021"
documentclass: book
site: bookdown::bookdown_site
bibliography: [book.bib, packages.bib]
biblio-style: apalike
fontsize: '12pt, krantz2'
monofontoptions: "Scale=0.7"
link-citations: yes
colorlinks: yes
lot: yes
lof: yes
always_allow_html: yes
url: 'https\://tlverse.org/tmlcimx2021-workshop/'
github-repo: tlverse/tmlcimx2021-workshop
graphics: yes
description: "Open source, reproducible teaching materials accompanying an
  invited short course Targeted Machine Learning for Big Data with the
  [`tlverse` software ecosystem](https://github.com/tlverse), for Programa de
  Actualización en Salud Pública y Epidemiología of the Instituto Nacional de
  Salud Públic de México."
---

# Information {-}

This open source, reproducible vignette is for a four-day workshop on use of the 
Targeted Learning framework for statistical and causal inference with machine 
learning in modern "Big Data" applications. Beyond introducing Targeted 
Learning, this course focuses on applying the methodology in practice
using the [`tlverse` software ecosystem](https://github.com/tlverse).  These
materials are based on a working draft of the book [*Targeted Learning in `R`:
Causal Data Science with the `tlverse` Software
Ecosystem*](https://tlverse.org/tlverse-handbook/), which includes in-depth
discussion of these topics and much more, and will serve as a useful reference 
to accompany these workshop materials.

<img style="float: center; margin-right: 1%; margin-bottom: 0.01em"
     src="img/logos/tlverse-logo.svg" width="30%" height="30%">
<img style="float: center; margin-right: 1%; margin-bottom: 0.01em"
     src="img/logos/Rlogo.svg" width="35%" height="35%">
<img style="float: center; margin-right: 1%; margin-bottom: 0.01em"
     src="img/logos/vdl-logo-transparent.svg" width="30%" height="30%">
<p style="clear: both;">
<br>

## Preliminaries {-}

All students in this workshop will work with the software on their machines, and 
learn how to use these tools in practice. With that in mind, we request all 
students **complete steps 1 and 2 the week/weekend before the workshop**.

1. Join the Slack page dedicated to this workshop. Here is the invitation link 
   to join: (add link).
2. Download the necessary software (instructions below). If you are experiencing 
   installation issues, please reach out on the Slack “#install” channel at 
   least a few days before the workshop.

Software Download Information:

* Some of the `R` packages we are working with at the workshop (e.g. glmnet) 
  require `R` version 4.0 or greater. Links to install/update `R` can be found 
  at https://cloud.r-project.org. 
* After updating `R` to version 4.0 or greater, this script should safely cover 
  all package installations: 
  https://github.com/tlverse/tmlcimx2021-workshop/blob/master/install.R.
* Installation errors will likely occur. The first most common error is the `R` 
  version issue mentioned above, and the second most common error relates to 
  exceeding the API rate limit for GitHub packages. The error message and a fix 
  for it can be found here: 
  https://tlverse.org/tlverse-handbook/tlverse.html#installtlverse.

We can help with these installation issues and others on Slack’s #install 
channel.

## About this workshop {-}

This workshop will provide a comprehensive introduction to the field of 
Targeted Learning for causal inference, and the corresponding ["tlverse" 
software ecosystem](https://github.com/tlverse). Targeted Learning is a general 
statistical approach which unifies advances in causal inference, statistical 
theory, and machine learning into a cohesive framework to guide pre-specified 
statistical analysis plans. Emphasis will be placed on efficient targeted 
estimators of causal effects of a variety of interventions (personalized, 
treatment versus control, shifting exposures).  

In addition to discussion, this workshop will incorporate interactive 
activities and programming exercises in the `R` language with public health 
data. After this course, students will be able to use these free tools to 
answer scientifically meaningful questions in public health, medicine, 
economics, and more.

After completing this workshop, students will be able to:

1. Follow the roadmap of targeted learning to translate meaningful research 
   questions into realistic statistical estimation problems, and obtain valid 
   inference in terms of confidence intervals and p-values. 
2. Reliably assess the performance of a machine learning algorithm, or compare 
   the performance of several algorithms by applying cross-validation schemes 
   using the `origami` `R` package.
3. Ensemble a combination of algorithms into an improved super learner 
   algorithm using the `sl3` `R` package, and explain why this combination is 
   better than selecting a single algorithm to colleagues.
4. Estimate the (potentially causal) effect of an intervention on a population 
   using the `tmle3` `R` package.
   
## Schedule {-}

### Monday, 16 August 2021 --- The Roadmap {-}

* **Before class:** Please read the article ["Why We Need A Statistical 
  Revolution"](https://senseaboutscienceusa.org/super-learning-and-the-revolution-in-knowledge/) 
  and watch the video lecture by Professors Mark van der Laan and Alan Hubbard 
  ["Introduction to Targeted Learning" (60 
  min)](https://www.dropbox.com/s/7b6ru2ahycqq80v/ENAR2021-lecture.mp4?dl=0).
* **During class:** [The Roadmap for Targeted 
  Learning](https://tlverse.org/tmlcimx2021-workshop/intro.html) and 
  [Introduction to the 
  `tlverse`](https://tlverse.org/tmlcimx2021-workshop/tlverse.html).
* **After class:** Please complete the [Roadmap Chapter 
  Exercises](https://tlverse.org/tmlcimx2021-workshop/intro.html#exercises) and 
  submit to the Moodle platform by midnight on 16 August. 

### Tuesday, 17 August 2021 --- Cross-validation {-}

* **Before class:** Please read ["Chapter 5: 
  Cross-validation" of the 
  *Targeted Learning Handbook*](https://tlverse.org/tlverse-handbook/origami.html).
* **During class:** [Cross-validation with 
  `origami`](https://tlverse.org/tmlcimx2021-workshop/origami.html).
* **After class:** Please complete the [Cross-validation 
  Exercises](https://tlverse.org/tmlcimx2021-workshop/origami.html#exercises) 
  and submit to the Moodle platform by midnight on 17 August. 

### Wednesday, 18 August 2021 --- Super Learning {-}

* **Before class:** Please read ["Chapter 6: Super (Machine)
  Learning" of the 
  *Targeted Learning Handbook*](https://tlverse.org/tlverse-handbook/sl3.html).
* **During class:** [Super (Machine) Learning with 
  `sl3`](https://tlverse.org/tmlcimx2021-workshop/sl3.html) and 
* **After class:** Please complete the [Super Learning 
  Exercises](https://tlverse.org/tmlcimx2021-workshop/sl3.html#sl3-exercises) 
  and submit to the Moodle platform by midnight on 18 August. 
  
### Thursday, 19 August 2021 --- Targeted Maximum Likelihood Estimation (TMLE)

* **Before class:** Please read ["Chapter 7: The TMLE Framework" of the 
  *Targeted Learning Handbook*](https://tlverse.org/tlverse-handbook/sl3.html).
* **During class:** [The TMLE 
  Framework](https://tlverse.org/tmlcimx2021-workshop/tmle3.html)
* **After class:** Please complete the [TMLE 
  Exercises](https://tlverse.org/tmlcimx2021-workshop/tmle3.html#exercises-1) 
  and submit to the Moodle platform by midnight on 19 August. 
    
## Course resources {-}

* __Slack__: 

* __Moodle__: Exercises will be due to the Moodle platform on each of the four 
  days by midnight. 

* __Code__: `R` scripts for each section of the workshop are available via the 
  GitHub repository for the workshop at
  https://github.com/tlverse/tmlcimx2021-workshop/tree/master/R_code.

* __Course website__: This is the main course website where we will be working 
  during class, and where all course materials, schedule, etc. can be accessed.

* __Targeted Learning Handbook__: These materials are based on a working draft 
  of the book [*Targeted Learning in `R`: Causal Data Science with the `tlverse` 
  Software Ecosystem*](https://tlverse.org/tlverse-handbook/), which includes 
  in-depth discussion of these topics and much more, and will serve as a useful 
  reference to accompany these workshop materials.
  
<!--
__NOTE: All listings are in Pacific Time.__
-->

## About the instructors {-}

### Mark van der Laan {-}

Mark van der Laan, PhD, is Professor of Biostatistics and Statistics at UC
Berkeley. His research interests include statistical methods in computational
biology, survival analysis, censored data, adaptive designs, targeted maximum
likelihood estimation, causal inference, data-adaptive loss-based learning, and
multiple testing. His research group developed loss-based super learning in
semiparametric models, based on cross-validation, as a generic optimal tool for
the estimation of infinite-dimensional parameters, such as nonparametric density
estimation and prediction with both censored and uncensored data. Building on
this work, his research group developed targeted maximum likelihood estimation
for a target parameter of the data-generating distribution in arbitrary
semiparametric and nonparametric models, as a generic optimal methodology for
statistical and causal inference. Most recently, Mark's group has focused in
part on the development of a centralized, principled set of software tools for
targeted learning, the `tlverse`.

### Alan Hubbard {-}

Alan Hubbard is Professor of Biostatistics, former head of the Division of
Biostatistics at UC Berkeley, and head of data analytics core at UC Berkeley's
SuperFund research program. His current research interests include causal
inference, variable importance analysis, statistical machine learning,
estimation of and inference for data-adaptive statistical target parameters, and
targeted minimum loss-based estimation. Research in his group is generally
motivated by applications to problems in computational biology, epidemiology,
and precision medicine.

### Jeremy Coyle {-}

Jeremy Coyle, PhD, is a consulting data scientist and statistical programmer,
currently leading the software development effort that has produced the
`tlverse` ecosystem of R packages and related software tools. Jeremy earned his
PhD in Biostatistics from UC Berkeley in 2016, primarily under the supervision
of Alan Hubbard.

### Nima Hejazi {-}

Nima Hejazi is a PhD candidate in biostatistics, working under the collaborative
direction of Mark van der Laan and Alan Hubbard. Nima is affiliated with UC
Berkeley's Center for Computational Biology and NIH Biomedical Big Data training
program, as well as with the Fred Hutchinson Cancer Research Center. Previously,
he earned an MA in Biostatistics and a BA (with majors in Molecular and Cell
Biology, Psychology, and Public Health), both at UC Berkeley.  His research
interests fall at the intersection of causal inference and machine learning,
drawing on ideas from non/semi-parametric estimation in large, flexible
statistical models to develop efficient and robust statistical procedures for
evaluating complex target estimands in observational and randomized studies.
Particular areas of current emphasis include mediation/path analysis,
outcome-dependent sampling designs, targeted loss-based estimation, and vaccine
efficacy trials.  Nima is also passionate about statistical computing and open
source software development for applied statistics.

### Ivana Malenica {-}

Ivana Malenica is a PhD student in biostatistics advised by Mark van der Laan.
Ivana is currently a fellow at the Berkeley Institute for Data Science, after
serving as a NIH Biomedical Big Data and Freeport-McMoRan Genomic Engine fellow.
She earned her Master's in Biostatistics and Bachelor's in Mathematics, and
spent some time at the Translational Genomics Research Institute. Very broadly,
her research interests span non/semi-parametric theory, probability theory,
machine learning, causal inference and high-dimensional statistics. Most of her
current work involves complex dependent settings (dependence through time and
network) and adaptive sequential designs.

### Rachael Phillips {-}

Rachael Phillips is a PhD student in biostatistics, advised by Alan Hubbard and
Mark van der Laan. She has an MA in Biostatistics, BS in Biology, and BA in
Mathematics. A student of targeted learning and causal inference, Rachael’s 
research integrates semiparametric statistical estimation and inference. She is 
motivated by applied projects and some of her current work involves personalized 
online learning from data streams of vital signs, human-computer interaction, 
automated machine learning, and developing statistical analysis plans using 
targeted learning.

## Reproduciblity with the `tlverse` {#repro}

The `tlverse` software ecosystem is a growing collection of packages, several of
which are quite early on in the software lifecycle. The team does its best to
maintain backwards compatibility. Once this work reaches completion, the
specific versions of the `tlverse` packages used will be archived and tagged to
produce it.

This book was written using [bookdown](http://bookdown.org/), and the complete
source is available on [GitHub](https://github.com/tlverse/tlverse-handbook).
This version of the book was built with R version 4.1.0 (2021-05-18),
[pandoc](https://pandoc.org/) version 2.7.3, and the
following packages:


|package    |version    |source                             |
|:----------|:----------|:----------------------------------|
|bookdown   |0.22.12    |Github (rstudio/bookdown\@0de8f11) |
|bslib      |0.2.5.9002 |Github (rstudio/bslib\@b86fc24)    |
|data.table |1.14.0     |CRAN (R 4.1.0)                     |
|delayed    |0.3.0      |CRAN (R 4.1.0)                     |
|devtools   |2.4.2      |CRAN (R 4.1.0)                     |
|downlit    |0.2.1      |CRAN (R 4.1.0)                     |
|dplyr      |1.0.7      |CRAN (R 4.1.0)                     |
|forecast   |8.15       |CRAN (R 4.1.0)                     |
|ggfortify  |0.4.12     |CRAN (R 4.1.0)                     |
|ggplot2    |3.3.5      |CRAN (R 4.1.0)                     |
|here       |1.0.1      |CRAN (R 4.1.0)                     |
|kableExtra |1.3.4      |CRAN (R 4.1.0)                     |
|knitr      |1.33       |CRAN (R 4.1.0)                     |
|mvtnorm    |1.1-2      |CRAN (R 4.1.0)                     |
|origami    |1.0.3      |CRAN (R 4.1.0)                     |
|readr      |1.4.0      |CRAN (R 4.1.0)                     |
|rmarkdown  |2.9        |CRAN (R 4.1.0)                     |
|skimr      |2.1.3      |CRAN (R 4.1.0)                     |
|sl3        |1.4.3      |Github (tlverse/sl3\@aeeb7e9)      |
|stringr    |1.4.0      |CRAN (R 4.1.0)                     |
|tibble     |3.1.2      |CRAN (R 4.1.0)                     |
|tidyr      |1.1.3      |CRAN (R 4.1.0)                     |
|tidyverse  |1.3.1      |CRAN (R 4.1.0)                     |
|tmle3      |0.2.0      |Github (tlverse/tmle3\@425e21c)    |

## Setup instructions {#setup}

### R and RStudio

**R** and **RStudio** are separate downloads and installations. R is the
underlying statistical computing environment. RStudio is a graphical integrated
development environment (IDE) that makes using R much easier and more
interactive. You need to install R before you install RStudio.

#### Windows

##### If you already have R and RStudio installed

* Open RStudio, and click on "Help" > "Check for updates". If a new version is
  available, quit RStudio, and download the latest version for RStudio.
* To check which version of R you are using, start RStudio and the first thing
  that appears in the console indicates the version of R you are
  running. Alternatively, you can type `sessionInfo()`, which will also display
  which version of R you are running. Go on the [CRAN
  website](https://cran.r-project.org/bin/windows/base/) and check whether a
  more recent version is available. If so, please download and install it. You
  can [check here](https://cran.r-project.org/bin/windows/base/rw-FAQ.html#How-do-I-UNinstall-R_003f)
  for more information on how to remove old versions from your system if you
  wish to do so.

##### If you don't have R and RStudio installed

* Download R from
  the [CRAN website](http://cran.r-project.org/bin/windows/base/release.htm).
* Run the `.exe` file that was just downloaded
* Go to the [RStudio download page](https://www.rstudio.com/products/rstudio/download/#download)
* Under *Installers* select **RStudio x.yy.zzz - Windows
  XP/Vista/7/8** (where x, y, and z represent version numbers)
* Double click the file to install it
* Once it's installed, open RStudio to make sure it works and you don't get any
  error messages.

#### macOS / Mac OS X

##### If you already have R and RStudio installed

* Open RStudio, and click on "Help" > "Check for updates". If a new version is
  available, quit RStudio, and download the latest version for RStudio.
* To check the version of R you are using, start RStudio and the first thing
  that appears on the terminal indicates the version of R you are running.
  Alternatively, you can type `sessionInfo()`, which will also display which
  version of R you are running. Go on the [CRAN
  website](https://cran.r-project.org/bin/macosx/) and check whether a more
  recent version is available. If so, please download and install it.

##### If you don't have R and RStudio installed

* Download R from
  the [CRAN website](http://cran.r-project.org/bin/macosx).
* Select the `.pkg` file for the latest R version
* Double click on the downloaded file to install R
* It is also a good idea to install [XQuartz](https://www.xquartz.org/) (needed
  by some packages)
* Go to the [RStudio download
  page](https://www.rstudio.com/products/rstudio/download/#download)
* Under *Installers* select **RStudio x.yy.zzz - Mac OS X 10.6+ (64-bit)**
  (where x, y, and z represent version numbers)
* Double click the file to install RStudio
* Once it's installed, open RStudio to make sure it works and you don't get any
  error messages.

#### Linux

* Follow the instructions for your distribution
  from [CRAN](https://cloud.r-project.org/bin/linux), they provide information
  to get the most recent version of R for common distributions. For most
  distributions, you could use your package manager (e.g., for Debian/Ubuntu run
  `sudo apt-get install r-base`, and for Fedora `sudo yum install R`), but we
  don't recommend this approach as the versions provided by this are
  usually out of date. In any case, make sure you have at least R 3.3.1.
* Go to the [RStudio download
  page](https://www.rstudio.com/products/rstudio/download/#download)
* Under *Installers* select the version that matches your distribution, and
  install it with your preferred method (e.g., with Debian/Ubuntu `sudo dpkg -i
  rstudio-x.yy.zzz-amd64.deb` at the terminal).
* Once it's installed, open RStudio to make sure it works and you don't get any
  error messages.

These setup instructions are adapted from those written for [Data Carpentry: R
for Data Analysis and Visualization of Ecological
Data](http://www.datacarpentry.org/R-ecology-lesson/).
