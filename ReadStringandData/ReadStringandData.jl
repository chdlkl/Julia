f = open( "test.txt", "r" )
str = readline( f )  # 读数据道头
arr = readcsv( f )  # 读取数据
close( f )

m = size(arr,1); n = size(arr,2)
for i = 1:m
    for j = 1:n
        println( arr[i,j] )  # 如果数据用空格分隔，按行输出；如果按逗号分隔，一行输出一个数据
    end
end

for i = 1:m 
    println( arr[i,:] )
end
