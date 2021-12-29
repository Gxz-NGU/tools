# 脚本批量删除、挑选文件

## 1、对文件的每行后，批量加入一个后缀

```shell
sed 's/$/&[后缀内容]/g' [文件名] > [输出到的文件名]
```

举例：想给 wait4delFiles.txt 每行后面加上的一个 .png  的后缀

```shell
sed 's/$/&.png/g' wait4delFiles.txt > yourFileName
```

这里没有用 -i 因为会报错，所以选择了这种输出文件的方式。

## 2、批量删除文件的方式

根据 wait4delFiles.txt 每行的内容，删除对应的文件

```shell
#!/bin/bash
# removeFiles.sh

cat $1 | while read myline
do
 echo rm -rf $myline
 rm -rf $myline
done

echo remove success!
```

使用方式： `./removeFiles.sh wait4delFiles.txt`

## 3、批量挑选文件的方式

根据 wait4delFiles.txt 每行的内容，把相关的文件放入到 res 的文件夹下面。

```shell
#!/bin/bash
# copyFiles.sh

cat $1 | while read myline
do
 echo cp $myline res/$myline
 cp $myline res/$myline
done

echo cp success!
```

使用方式： `./copyFiles.sh wait4delFiles.txt`

