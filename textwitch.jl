# 文件批量处理
println( "please input the file num that you will creat:" )
n = readline()  # readline()表示从屏幕读取,读取的变量为Sting类型
n = parse( Int, n )  # 此处也可以写为parse( Int64, n ), n为String类型
for i = 1:n
  f = open( string(i,".txt"), "a" )
  close( f )
end
