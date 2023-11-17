set terminal png
set output 'comparaison IJK.png'

set title 'Histogramme de IJK version -O0, -O1, -O2, -03'
set style data histograms

set boxwidth 0.9 absolute

set xlabel 'Versions'
set ylabel 'MiB/s'
set yrange [0:*]

set xtics border in scale 0,5 nomirr rotate 45
set xtics norangelimit
set xtics()

plot 'IJK_clang.dat' using 14:xtic(1) title '-O0' linecolor variable, \
     'IJK_clang (copie 1).dat' using 14:xtic(1) title '-O1' linecolor variable, \
     'IJK_clang (copie 2).dat' using 14:xtic(1) title '-O2' linecolor variable, \
     'IJK_clang (copie 3).dat' using 14:xtic(1) title '-O2' linecolor variable

     
