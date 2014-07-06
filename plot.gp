set xlabel "dimension"
set ylabel "volume(sphere)/volume(cube)"
set term png
set output "plot.png"
set datafile separator ","
set style data linespoints
R=.5
plot "plot.csv",(pi**(x/2))*(R**x)/gamma(x/2+1)
