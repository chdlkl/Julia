function pisum()
sum = 0.0
for j = 1:500
sum = 0.0
for k = 1:10000
sum += 1.0/(k*k)
end
end
sum
end