n = 10  # 文件数
filelist = Vector{String}(n)  # 创建10个空字符串
for i = 1:n
  filelist[i] = string( i, ".txt" )  # 批量产生文件名
end

for f in filelist  # 打开每一个文件并写入数字300
  open( f, "a" ) do f
  writecsv( f, 300 )
  end
end

# 也可以用下面的代码
# fileio = [open(filename) for filename in [“a.txt”, “b.txt”, “c.txt”]]
#    do stuff width the open file 
# map( close fileio )