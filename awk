nawk '/string/' file
基本使用
nawk '{print $1}' file
打印第一行
nawk '/string/{print $1,$2}' file
打印匹配string的第一行与第二行
NR代表了是否显示行号。
awk '$3 == 5346' file
打印第三个字段匹配5346的行
awk '$3 > 5000{print $1}' file
打印第三个字段大于5000的行的第一列
awk '$2 ~ /adam/' file 
第二个字段符合string的行
awk '$2 !~ /adam/' file
第二个字段不符合string的行
awk '{max = ( $1 > $2 ) ? $1 : $2;print max}' filename

