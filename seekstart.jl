# test seekstart
f = open( "test.txt", "r" )
n = countlines( f )
seekstart( f )

for i = 1:n
    s = readline( f )
    println( s )
end

close( f )