n = 10  # 文件数
filelist = Vector{String}(n)  # 创建10个空字符串
for i = 1:n
  filelist[i] = string( i, ".txt" )  # 批量产生文件名
end

x = linspace(1,10,10)
y = linspace(11,20,10)

for f in filelist  # 打开每一个文件并写入数字
  open( f, "w" ) do f
    for i = 1:length(x)
      # 这里用writecsv数据之间用逗号隔开；用writedlm数据之间用空格（or TAB）分开
      writecsv( f, [x[i] y[i]] )  # 写入的数据用空格隔开不分行，用逗号会分行
    end
  end
end

# 也可以用下面的代码
# fileio = [open(filename) for filename in [“a.txt”, “b.txt”, “c.txt”]]
#    do stuff width the open file 
# map( close fileio )