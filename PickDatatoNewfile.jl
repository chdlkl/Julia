n = 10
# 打开要写入数据的文件名
newfile = open("newfile.txt", "w")

for i = 1:n
    filename = string(i, ".txt") 
    fileio = open(filename, "r") # 打开每一个原始文件
    a, b, c = readdlm(fileio)  # 读取每一行数据
    writedlm(newfile, [a c])  # 写入挑选的数据
    close(fileio)  # 依次关掉原始文件
end

close(newfile)  # 关掉挑选数据的文件
