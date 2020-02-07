sed的使用方法
sed -n '/string/p' file
删除文件的1到3行
sed '1,3d' file
删除所有不含string的行
sed '/tom/!d' file
sed把结果输出到屏幕，而不是源文件。
sed '3,$d' file
删除从第三行到文件最后一行的内容,$代表文件的最后一行。
sed 's/string/string1/g' file
s代表替换，g代表全局替换。
sed 's/[0-9][0-9]$/&.5' file
符号与代表给文件末尾加上.5。
sed '/string/r file' file1
通过r选项将file的内容追加到string后。
sed -n '/north/w file' file1
w命令把指定行写入到文件中 
sed -n '/north/a\ string' file1
a命令是追加命令，如果要追加的内容超过一行，则除最后一行外，其他
各行都必须以反斜杠结尾。
sed -n '/north/i\ string' file1
命令i是插入命令
sed -n '/north/c\ string' file1
命令c是修改命令。
sed -n '/north/n\ string' file1

