set terminal postscript eps color size 6.4in,4.8in font 'Helvetica,45'
set output 'distance_error.eps'
set ylabel 'Error (in cm)' font 'Helvetica,45' offset 2
set xlabel 'Distance (in m)' font 'Helvetica,45' offset 2
set title ''

set offset -0.5,-0.3,0,0
set grid back lt 0 lw 1 lc rgb "#e9e9e9"
set style fill solid 0.50 border 0
set style histogram errorbars gap 2 lw 8
set style data histogram

#set xtics rotate by -45

#set key top left
#set style fill empty
#set yrange [0:21.0]

set xtics ("0.5" 0, "1.0" 1, "1.5" 2, "2.0" 3, "2.5" 4, "3.0" 5, "4.0" 6, "5.0" 7)
#set xtic rotate by -45
set ytics auto

set boxwidth 1.5
#set style fill solid
#plot 'keyboard.dat' using ($0 -.05):2:3 linestyle 3 with boxerrorbars notitle

plot 'distance_error.dat' using 2:3 linecolor rgb "#0000FF" notitle
