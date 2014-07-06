all: plot.png plot_3d.png plot_3d_threeQuarters.png

plot.csv: polydimrat.py
	python $< > $@

plot.png: plot.gp plot.csv
	gnuplot $<

plot_3d.png: plotCircleSphereCutaway.gp
	gnuplot $<

plot_3d_threeQuarters.png: plotCircleSphereCutawayThreeQuarters.gp
	gnuplot $<

clean:
	rm -f *.csv *.png
