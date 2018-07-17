
set terminal epslatex size 6.5in,2.0in
set output "speedupbars.tex"

set style histogram columns
set style fill solid
set style histogram cluster gap 1
set boxwidth 0.9
 
labeloffset = 1.2

set yrange [0:12]

set multiplot layout 2, 1
set tmargin 0

unset key
unset title
set ylabel "speedup"
plot 'speedupbars.dat' every ::0::4 using 2:xtic(1) with histograms title "tiling" lc "#5381BB", \
     '' every ::0::4 using ($0-0.3):($2+labeloffset):2 with labels, \
     '' every ::0::4 using 3:xtic(1) with histograms title "metapipelining" lc "#BF4D4D", \
     '' every ::0::4 using ($0-0.1):($3+labeloffset):3 with labels, \
     '' every ::0::4 using 4:xtic(1) with histograms title "load bypassing" lc "#9ABC5F", \
     '' every ::0::4 using ($0+0.1):($4+labeloffset):4 with labels, \
     '' every ::0::4 using 5:xtic(1) with histograms title "all" lc "#8163A0", \
     '' every ::0::4 using ($0+0.3):($5+labeloffset):5 with labels

unset title
unset key
set ylabel "speedup"
plot 'speedupbars.dat' every ::5::9 using 2:xtic(1) with histograms title "tiling" lc "#5381BB", \
     '' every ::5::9 using ($0-0.3):($2+labeloffset):2 with labels, \
     '' every ::5::9 using 3:xtic(1) with histograms title "metapipelining" lc "#BF4D4D", \
     '' every ::5::9 using ($0-0.1):($3+labeloffset):3 with labels, \
     '' every ::5::9 using 4:xtic(1) with histograms title "load bypassing" lc "#9ABC5F", \
     '' every ::5::9 using ($0+0.1):($4+labeloffset):4 with labels, \
     '' every ::5::9 using 5:xtic(1) with histograms title "all" lc "#8163A0", \
     '' every ::5::9 using ($0+0.3):($5+labeloffset):5 with labels

unset multiplot
