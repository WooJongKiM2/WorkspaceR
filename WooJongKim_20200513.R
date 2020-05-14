#문제1)
d1 <- 1:50
d2 <- 51:100
#1.
print(d1)
print(d2)
#2.
length(d2)
#3.
print(d1+d2)
print(d2-d1)
print(d1*d2)
print(d2/d1)
#4.
sum(d1)
sum(d2)
#5.
sum(d1+d2)
#6.
max(d2)
min(d2)
#7.
mean(d2-d1)
#8.
sort(d1, decreasing = TRUE)
#9.
a1<- sort(d1[1:10], decreasing = FALSE )
a2<- sort(d2[1:10], decreasing = FALSE )
d3<- append(a1,a2)
#문제2)
v1 <- 51:90
#1.
v1[ v1<60 ]
#2.
sum(v1<70)
#3.
sum(v1[v1>65])
#4.
condition <- v1 > 60&v1 <73
v1[condition]
#5.
condition <- v1 < 65|v1 > 80
v1[condition]
#6.
print( v1/7 %% 3 )
#7.
v1 <- replace(54,7,0)
#8.
sum(v1/2)
#9.