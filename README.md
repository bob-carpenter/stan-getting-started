# Getting started with Bayesian statistics using Stan and Python

**Rendered Version:**

* Bob Carpenter. 2023. [Getting started with Bayesian statistics using Stan and Python](https://bob-carpenter.github.io/stan-getting-started/stan-getting-started.html).

This repo contains the source text, code, and data files for an introduction to

* Bayesian statistics and probability theory,

* the Stan probabilistic programming language,

* the CmdStanPy interface to Stan, with

* the Python libraries `numpy`, `pandas`, and `plotnine`.


## Building the case study

### HTML format

From the command line interface, you can change directory to the
top-level directory of the repository and invoke `make`:

```
$ cd <stan-getting-started>
$ make
```

will run the quarto build process and produce an html document in the
file `quarto/stan-getting-started.html`.  

To run the same thing manually, you can do this

```
$ quarto render quarto/stan-getting-started.qmd --to html 
```

### PDF format

To produce the pdf, you can first change to the top-levle directory,
then run `make`:

```
$ cd <stan-getting-started>
$ make quarto/stan-getting-started.pdf
```

To run the same thing manually, you can do this

```
$ quarto render quarto/stan-getting-started.qmd --to pdf
```



