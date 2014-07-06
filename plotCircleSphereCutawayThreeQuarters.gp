set parametric
set view 60
set isosamples 30,20
set xrange[-1 : 1]
set yrange[-1 : 1]
set zrange[-1.15 : -.75]
set xlabel "x"
set xlabel "y"
set xlabel "z"
set terminal png enhanced
set output "plot_3d_threeQuarters.png"
splot [-pi:pi][-pi/2:0] cos(u)*cos(v), sin(u)*cos(v), sin(v) t "CutAway3Ball", cos(u)*cos(v)*0.661, sin(u)*cos(v)*0.661, -.75 t "2Ball", u/pi,v/(pi/4)+1,-.75 t "2Cube"
