set title "KPOINTS Convergencia **3"
set xrange [0:16]
set style line 6 lt 6 lw 2.0  pt 6 ps 3.0 lc rgb "blue"
set xlabel "Numero de KPOINTS"
set ylabel "Energía"
plot "KPConv**3.dat" u 1:2 w linespoints ls 6
