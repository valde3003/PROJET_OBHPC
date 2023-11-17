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
  outfile = sprintf('gcc_vs_clang_FLAGS.png',t)
  set output outfile
  set terminal png size 800,600
  set title 'GCC vc CLANG Optimisation '
  plot 'O0_gcc.dat' using 14:xtic(1) title 'MiB/s gcc_O0' axes x1y1, 'O1_gcc.dat' using 14:xtic(1) title 'MiB/s gcc_O1' axes x1y1, 'O2_gcc.dat' using 14:xtic(1) title 'MiB/s gcc_O2' axes x1y1, 'O3_gcc.dat' using 14:xtic(1) title 'MiB/s gcc_O3' axes x1y1,'Ofast_gcc.dat' using 14:xtic(1) title 'MiB/s gcc_Ofast' axes x1y1, 'O0_clang.dat' using 14:xtic(1) title 'MiB/s clang_O0' axes x1y1, 'O1_clang.dat' using 14:xtic(1) title 'MiB/s clang_O1' axes x1y1, 'O2_clang.dat' using 14:xtic(1) title 'MiB/s clang_O2' axes x1y1, 'O3_clang.dat' using 14:xtic(1) title 'MiB/s clang_O3' axes x1y1, 'Ofast_clang.dat' using 14:xtic(1) title 'MiB/s clang_Ofast' axes x1y1
}

exit
