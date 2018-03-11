set terminal svg font "Bitstream Vera Sans,18" size 600,400
set output "active.svg"

#set term postscript eps enhanced color 
#set output "sigmoid.eps"

#set key off
set key right bottom
set xrange [-6:6]
set yrange [-1:1]
#set xzeroaxis linetype -1
#set yzeroaxis linetype -1
#set xtics axis nomirror
#set ytics axis nomirror 0.5,1
set grid
set border 3

set samples 400

f(x) = exp(x)/(1 + exp(x))
fd(x) = f(x)*(1-f(x))

g(x) = tanh(x)
gd(x) = 1 - g(x) * g(x)

plot f(x) with line linetype rgbcolor "red" linewidth 2 title "sigmoid(x)", \
     g(x) with line linetype rgbcolor "blue" linewidth 2 title "tanh(x)" 

#plot fd(x) with line linetype rgbcolor "red" linewidth 2, \
#     gd(x) with line linetype rgbcolor "blue" linewidth 2 

#plot exp(x)/(1 + exp(x)) with line linetype rgbcolor "red" linewidth 2, \
#    tanh(x) with line linetype rgbcolor "blue" linewidth 2
