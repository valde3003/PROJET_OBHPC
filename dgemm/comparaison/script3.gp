set style data histograms
set style histogram clustered
set style fill solid border -1
set boxwidth 0.8 relative
set xtics rotate by -45
set ytics nomirror

set ylabel "Stability"


set ytics 
set yrange [0:*]


do for [t in "0 f"] {
  outfile = sprintf('comparaisonFLAGS_clang .png',t)
  set output outfile
  set terminal png size 800,600
  set title 'CLANG optimisation all level '.t
  plot 'MOO0_clang.dat' using 14:xtic(1) title 'MiB/s clang_O0(%)' axes x1y1, 'MOO1_clang.dat' using 14:xtic(1) title 'MiB/s clang_O1(%)' axes x1y1, 'MOO2_clang.dat' using 14:xtic(1) title 'MiB/s clang_O2(%)' axes x1y1, 'MOO3_clang.dat' using 14:xtic(1) title 'MiB/s clang_O3(%)' axes x1y1
  
}

exit
 

