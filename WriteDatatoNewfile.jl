using DelimitedFiles
n = 10
for i = 1:n
    filename = string(i, ".txt")
    fileio = open(filename, "w")  # 注意这里是双引号
    # writedlm(fileio, [1 2 3]) 按行写
    # writedlm(fileio, [1, 2, 3]) 按列写
    writedlm(fileio, [1,2,3])
    close(fileio)
end
上述是julia1.0适用的代码，下面给出julia0.6适用的代码
n = 10
for i = 1:n
    filename = string(i, ".txt")
    fileio = open(filename, "w")  
    writedlm(fileio, [1,2,3])
    close(fileio)
end