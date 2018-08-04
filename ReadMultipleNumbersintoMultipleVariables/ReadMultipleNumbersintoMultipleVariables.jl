# 将两列数字在每次循环的过程中读入到两个变量中
f = open( "dat.txt", "r" )
n = countlines( f )  # 文件的光标应在实际数据最后一行，这样的n才是实际行数
seekstart( f )

for i = 1:n
    x, y = split( readline( f ), "," )  # 文本数据用英文逗号隔开
    x = parse( x )
    y = parse( y )
    println( "x = ", x, ";", " y = ", y )
end

close( f )