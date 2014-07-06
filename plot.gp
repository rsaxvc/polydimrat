set term png
set output "plot.png"
set datafile separator ","
set style data linespoints
plot "plot.csv"
