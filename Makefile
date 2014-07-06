all: plot.png plot_3d.png

plot.csv: polydimrat.py
	python $< > $@

plot.png: plot.gp plot.csv
	gnuplot $<

plot_3d.png: plotCircleSphereCutaway.gp
	gnuplot $<
