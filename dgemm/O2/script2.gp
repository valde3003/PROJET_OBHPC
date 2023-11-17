set style data histograms
set style histogram clustered
set style fill solid border -1
set boxwidth 0.8 relative
set xtics rotate by -45
set ytics nomirror
set y2tics nomirror
set ylabel "Stability"
set y2label "Vitesse"

do for [t in "2 f"] {
  outfile = sprintf('clang%s.png',t)
  set output outfile
  set terminal png size 800,600
  set title 'CLANG optimisation level '.t
  plot 'MOO2_clang.dat' using 12:xtic(1) title 'stddev (%)', '' using 14:xtic(1) title 'MiB/s' axes x1y2

}

 
do for [t in "2 f"] {
  outfile = sprintf('gcc%s.png',t)
  set output outfile
  set terminal png size 800,600
  set title 'GCC optimisation level '.t
  plot 'MOO2_gcc.dat' using 12:xtic(1) title 'stddev (%)', '' using 14:xtic(1) title 'MiB/s' axes x1y2
  
}
exit
