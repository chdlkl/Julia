# get file line number
# author: luk

# f = open( "test.txt", "r" )  
# s = readlines( f )
# arr = zeros( length(s) )

# for i = 1:length(s)
#     arr[i] = parse( Float64, s[i] )
#     println( arr[i] )
# end 

# close( f )


# 与上面的代码相比，下面的代码感觉更好一点
# 使用readcsv与readdlm，数据之间最好用common隔开
arr = readcsv( "test.txt" )  # readcsv与readdlm功能相同，直接读取的数据格式为数组，而不是字符串
println( size(arr) )  # 数组大小

for i = 1:size(arr,1)  # 按行输出
    println( arr[i,:] )
end

for i = 1:size(arr, 1)  # 逐点输出
    for j = 1:size(arr, 2)
        println( arr[i,j] )
    end
end

println( arr[1,2] )  # 输出(1,2)位置上的点
println( typeof(arr) )