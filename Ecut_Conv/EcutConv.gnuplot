set title "Ecut Convergencia"
set style line 6 lt 6 lw 2.0 pt 6 ps 3.0 lc rgb "blue"
set xrange [150:850]
set xlabel "Ecut"
set ylabel "Energía"
plot "EcutConv.dat" u 1:2 w linespoints ls 6
