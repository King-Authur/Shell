#!/bin/bash

# 脚本格式
# 开头以为 #!/bin/bash 指明解释器

#### 变量
# 变量默认是字符串，不能计算

# A=1 给变量赋值

# export A=1 升级成全局变量

# echo 输出内容

# $n 可以或许传入参数，$0 是当前的文件名，$1 是第一个参数

# $# 是传入参数的个数，一般用在 for 循环里

# $* 所有参数，把所有的参数看成一个整体

# $@ 所有参数，把每个参数区分对待

# $? 最后一次执行的命令的返回状态。0 表示上一条命令正确执行，非零则不正常，具体时什么看情况

#### 运算符
# $((运算式)) 或者 $[运算式]

# expr + - \* / % 加减乘除模
# 例子 expr 2 + 3
# `expr 2 + 3` \* 4


#### 条件判断
# [ condition ] 注意，condition 前后要有空格

# 条件非空即为 true

# = 字符串比较
# -lt 小于（less than）
# -le 小于等于(less equal)
# -eq 等于（equal）
# -gt 大于（greater than）
# -ge 大于等于（greater equal）
# -ne 不等于（Not equal）

# 文件权限
# -r 有读权限（read）
# -w 有写权限(write)
# -x 有执行权限（execute）

# 文件类型
# -f 文件存在且常规（file）
# -e 文件存在(existence)
# -d 文件存在且是目录（directory）

# 多条件判断
# && ||

# 流程控制
# if 判断
if [ 条件判断式 ];then
    程序
elif [ 条件判断式 ]
    程序
fi
# 注意 if 后一定要有空格

# case 语句
case $变量名 in
    "值1") #例如 1)
        程序
        ;;
    "值2")
        程序
        ;;
    *)
        程序
        ;;
esac

# for 循环
for((初始值;循环控制条件;变量变化))
    do
        程序
    done

for 变量 in 值1 值2 值3
    do
        程序
    done

# while 循环
while [ 条件判断式 ]
    do
        程序
    done

# read 读取控制台输入
read(选项)(参数)
read -t 7 -p "Enter your name in 7 seconds " NAME
echo $NAME
-p 指定读取时的提示符
-t 指定读取时的等待时间
参数 指定读取值的变量名

# 系统函数
basename [string/pathname] [suffix]
basename 命令会删掉所有的前缀，包括最后一个 '/' 字符，然后将字符串显示出来。
其实就是获取最后一个 / 之后的内容
suffix 是后缀，如果指定了，则会把后缀删掉

basename /home/atguigu/banzhang.txt
获得结果 banzhang.txt

basename /home/atguigu/banzhang.txt .txt
获得结果 banzhang

# 自定义函数
[functions] funname[()]
{
    Action;
    [return int;]
}
funname
必须调用前声明函数，shell逐行与逆行，不会像其他语言一样先编译

函数返回值，只能通过$?系统变量获得，可以显示加 return
返回，如果不加，将以最后一条命令运行结果，作为返回值，

例子：
function sum(){
    s=0
    s=$[$1+$2]
    echo $s
}

read -p "input your paratemer1:" P1
read -p "input your paratemer2:" P2

sum $P1 $P2
