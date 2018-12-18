1.把qtpack.sh复制到一个文件夹，比如  /opt/mysh
2.cd到可执行文件所在的路径,假设它叫app 他有2个入口参数
3输入   /opt/mysh app 3
4当前路径下产生一个 apppack 的文件夹
5将apppack复制到将要运行它的linux目标主机中
目标主机
6.进入apppack文件夹
7给 app权限  chmod +x app.sh app
8运行  ./app.sh para1 para2