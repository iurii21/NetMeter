set terminal pngcairo nocrop enhanced size 1024,768 font "Verdana,15"
set output "TCP_1_st_2020_11_06_01-17-22_one2two_00032B.png"

set title "{/=20 Buffer size: 32 B, Av. rate: 19.23 ms}\n\n{/=18 (LAPTOP-UE-0 to LAPTOP-UE-6, TCP, 1 st.)}"

set xlabel "Time (s)"
set ylabel "Bandwidth (ms)"
set ytics nomirror
set key bmargin center horizontal box samplen 1 width -1
set bmargin 4.6
set rmargin 4.5

rf = 1.0  # rate factor
set style fill transparent solid 0.2 noborder
set autoscale xfix
plot "TCP_1_st_2020_11_06_01-17-22_one2two_00032B_iperf_processed.dat" using 1:($2/rf-$3/rf):($2/rf+$3/rf) with filledcurves lc rgb "blue" notitle, \
     "" using 1:($2/rf) with points pt 2 ps 1.5 lw 3 lc rgb "blue" title "Mean tot. BW", \
