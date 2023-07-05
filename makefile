quarto/stan-getting-started.html: quarto/stan-getting-started.qmd
	quarto render quarto/stan-getting-started.qmd --to html --no-execute-daemon

quarto/stan-getting-started.pdf:  quarto/stan-getting-started.qmd
	quarto render quarto/stan-getting-started.qmd --to pdf
