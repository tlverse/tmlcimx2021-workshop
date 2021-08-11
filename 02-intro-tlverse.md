# Welcome to the `tlverse` {#tlverse}

## What is the `tlverse`?

The `tlverse` is a new framework for doing Targeted Learning in R, inspired by
the [`tidyverse` ecosystem](https://tidyverse.org) of R packages.

By analogy to the [`tidyverse`](https://tidyverse.org/):

> The `tidyverse` is an opinionated collection of R packages designed for data
> science. All packages share an underlying design philosophy, grammar, and data
> structures.

So, the [`tlverse`](https://tlverse.org) is

* an opinionated collection of R packages for Targeted Learning
* sharing an underlying philosophy, grammar, and set of data structures

## `tlverse` components

These are the main packages that represent the **core** of the `tlverse`:

* [`sl3`](https://github.com/tlverse/sl3): Modern Super Learning with Pipelines
  * _What?_ A modern object-oriented re-implementation of the Super Learner
    algorithm, employing recently developed paradigms for `R` programming.
  * _Why?_ A design that leverages modern tools for fast computation, is
    forward-looking, and can form one of the cornerstones of the `tlverse`.

* [`tmle3`](https://github.com/tlverse/tmle3): An Engine for Targeted Learning
  * _What?_ A generalized framework that simplifies Targeted Learning by
    identifying and implementing a series of common statistical estimation
    procedures.
  * _Why?_ A common interface and engine that accommodates current algorithmic
    approaches to Targeted Learning and is still flexible enough to remain the
    engine even as new techniques are developed.

In addition to the engines that drive development in the `tlverse`, there are
some supporting packages --- in particular, we have two...

* [`origami`](https://github.com/tlverse/origami): A Generalized Framework for
   Cross-Validation
  * _What?_ A generalized framework for flexible cross-validation
  * _Why?_ Cross-validation is a key part of ensuring error estimates are honest
    and preventing overfitting. It is an essential part of the both the Super
    Learner algorithm and Targeted Learning.

* [`delayed`](https://github.com/tlverse/delayed): Parallelization Framework for
   Dependent Tasks
  * _What?_ A framework for delayed computations (futures) based on task
    dependencies.
  * _Why?_ Efficient allocation of compute resources is essential when deploying
    large-scale, computationally intensive algorithms.

A key principle of the `tlverse` is extensibility. That is, we want to support
new Targeted Learning estimators as they are developed. The model for this is
new estimators are implemented in additional packages using the core packages
above. There are currently two featured examples of this:

* [`tmle3mopttx`](https://github.com/tlverse/tmle3mopttx): Optimal Treatments
  in `tlverse`
  * _What?_ Learn an optimal rule and estimate the mean outcome under the rule
  * _Why?_ Optimal Treatment is a powerful tool in precision healthcare and
    other settings where a one-size-fits-all treatment approach is not
    appropriate.

* [`tmle3shift`](https://github.com/tlverse/tmle3shift): Shift Interventions in
  `tlverse`
  * _What?_ Shift interventions for continuous treatments
  * _Why?_ Not all treatment variables are discrete. Being able to estimate the
    effects of continuous treatment represents a powerful extension of the
    Targeted Learning approach.

