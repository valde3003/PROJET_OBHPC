set style data histograms
set style histogram clustered
set style fill solid border -1
set boxwidth 0.8 relative
set xtics rotate by -45
set ytics nomirror

set ylabel "Vitesse"


set ytics 
set yrange [0:*]


do for [t in "0 f"] {
  outfile = sprintf('CBLAS.png',t)
  set output outfile
  set terminal png size 800,600
  set title 'Version CBLAS '
  plot 'CBLAS_clang_O0.dat' using 14:xtic(1) title 'MiB/s clang_O0' axes x1y1, 'CBLAS_clang_O1.dat' using 14:xtic(1) title 'MiB/s clang_O1' axes x1y1, 'CBLAS_clang_O2.dat' using 15:xtic(1) title 'MiB/s clang_O2' axes x1y1, 'CBLAS_clang_O3.dat' using 14:xtic(1) title 'MiB/s clang_O3' axes x1y1, 'CBLAS_clang_Ofast.dat' using 14:xtic(1) title 'MiB/s clang_Ofast' axes x1y1, 'CBLAS_gcc_O0.dat' using 14:xtic(1) title 'MiB/s gcc_O0' axes x1y1, 'CBLAS_gcc_O1.dat' using 15:xtic(1) title 'MiB/s gcc_O1' axes x1y1, 'CBLAS_gcc_O2.dat' using 15:xtic(1) title 'MiB/s gcc_O2' axes x1y1, 'CBLAS_gcc_O3.dat' using 14:xtic(1) title 'MiB/s gcc_O3' axes x1y1, 'CBLAS_gcc_Ofast.dat' using 14:xtic(1) title 'MiB/s clang_Ofast' axes x1y1
}

exit
