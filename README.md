# stan-getting-started

An introduction to the Stan probabilistic programming language and the
CmdStanPy interface to Stan.  Uses the external Python libraries
`numpy`, `pandas`, and `plotnine`.

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



