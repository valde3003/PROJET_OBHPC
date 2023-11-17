set terminal png 
set output 'CBLAS_gcc.png'

set title 'Histogramme de IJK version -O0'
set style data histograms

set boxwidth 0.9 absolute 

set xlabel 'MiB.s'
set ylabel 'stddev'

set xtics border in scale 0,5 nomirr rotate 45
set xtics norangelimit 
set xtics()

plot 'CBLAS_gcc.dat' using 14:xticlabels(1) linecolor variable \
plot 'CBLAS_gcc.dat' using 14:xticlabels(1) linecolor variable \
plot 'CBLAS_gcc.dat' using 14:xticlabels(1) linecolor variable 
     
