set title "KPOINTS Convergencia 88*"
set xrange [0:9]
set style line 6 lt 6 lw 2.0  pt 6 ps 3.0 lc rgb "blue"
set xlabel "Numero de KPOINTS"
set ylabel "Energía"
plot "KPConv88-.dat" u 1:2 w linespoints ls 6
