x = linspace(1,10,10)
f = open( "dat.txt", "a" )

for i = 1:length(x)
    print( f, x[i], "  " )  # print默认不换行
end

for i = 1:length(x)
    println( f, x[i] )  # println默认换行
end

close( f )
