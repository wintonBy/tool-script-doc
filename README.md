
# 脚本工具集
这是一个脚本工具集，用来帮助程序员做一些日常工作中琐碎的事情，重复的事情，难记的命令等等。

[TOC]

# keytool-importkeypair 将证书文件导入为keystore
用法：
keytool-importkeypair -k <keystore文件> -p <密码> -pk8 <密钥文件> -cert <证书文件> -alias <别名>
```
示例：
keytool-importkeypair -k ~/.android/debug.keystore -p android -pk8 platform.pk8 -cert platform.x509.pem -alias platform
```

