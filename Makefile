all: plot.png

plot.csv: polydimrat.py
	python $< > $@

plot.png: plot.csv
	gnuplot plot.gp
