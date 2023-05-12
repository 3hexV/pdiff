# pdiff
在linux中实现路径、字符差异化对比的shell脚本

# 如何安装
git clone这个repo,将pdiff移动到/usr/bin/中
```shell
sudo cp pdiff /usr/bin/pdiff
chmod +x /usr/bin/pdiff
```

# 如何使用
- 对比两个不带空格的字符串，使用-s参数，指定这是字符串（不带空格）
```shell
pdiff -s str_hi_world str_Hi_WOrLD
```
- 对比两个真实的路径（支持相对路径和绝对路径），使用-p参数，指定这是地址
```shell
pdiff -p /home/etc/1.txt /home/eTc/2.txt
pdiff -p ./1.txt /home/etc/2.txt
```
- 对比两个路径字符串（忽略要求路径必须存在），使用-n参数
```shell
pdiff -s /home/etc/1.txt /home/eec/2.txt -n
```

# 帮助
```shell

			  __ __   ___   ___ 
		.—————.--|  |__|.'  _|.'  _|
		|  _  |  _  |  ||   _||   _|
		|   __|_____|__||__|  |__|  
		|__|                                                           
	
                	                              by-3hex[v1.0.0]
-s    Compare string
-p    Compare path(absolute or relative paths)
-i    Deatils
-n    Ignore whether the path exists
-h    Help
-v    Version
[-] string compare format: pdiff -s hi,jack hi,tom
[-] path compare format: pdiff -p ../../etc/1.txt /home/eTc/2.txt

```

