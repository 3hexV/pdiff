# pdiff
在linux中实现路径、字符差异化对比的shell脚本

# 如何安装
git clone这个repo,执行这个repo中的install.sh脚步
```shell
./install.sh
```

# 如何使用
- 对比两个不带空格的字符串(普通字符串或者路径字符串)，使用-s[--str]参数，指定这是字符串（不带空格）
```shell
pdiff -s /home/etc/1.txt /home/eec/2.txt
pdiff -s hi,world hello,world
```
- 对比两个真实的路径（支持相对路径和绝对路径），使用-p[--path]参数，指定这是地址
```shell
pdiff -p /home/etc/1.txt /home/eTc/2.txt
pdiff -p ./1.txt /home/etc/2.txt
```
- 使用-y参数来启用python脚本中的difflib进行字符串差异化对比
```shell
pdiff -y -s /home/etc/1.txt /home/eec/2.txt
[info] It's a different path
- /home/eec/2.txt
?        ^  ^
+ /home/etc/1.txt
?        ^  ^


pdiff -y -s hi,world hello,world
[info] It's a different path
- hello,world
?  ^^^^
+ hi,world
?  ^

```
# 帮助
```shell
			  __ __   ___   ___ 
		.—————.--|  |__|.'  _|.'  _|
		|  _  |  _  |  ||   _||   _|
		|   __|_____|__||__|  |__|  
		|__|                                                           
	
                	                         by-3hex[v1.1.0]
-----------------------------------------------------------------
  -y    		Use python's difflib for comparison,
			not used by default
  -s,--str    		Compare string
  -p,--path    		Compare path(absolute or relative paths)
  -h,-H,--help    	Help
  -v,-V,--version    	Version
-----------------------------------------------------------------
[-] Usage: pdiff [-y] [-s/-p] str1 str2
[-] string compare format: pdiff -s hi,jack hi,tom
[-] path compare format: pdiff -y -p ../../etc/1.txt /home/eTc/2.txt

```

