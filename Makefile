all: plot.png

plot.csv: polydimrat.py
	python $< > $@

plot.png: plot.gp plot.csv
	gnuplot $<
