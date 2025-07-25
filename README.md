# GACCode积分监控

这是一个监控GACCode平台积分余额的工具。

## 功能

- 定期查询GACCode API获取账户积分余额
- 将查询结果记录到日志文件
- 在Windows系统托盘中显示当前积分余额

## 安装

### 方法1: 使用pip安装

```bash
pip install gaccode-monitor
```

### 方法2: 从源码安装

1. 克隆仓库
2. 安装依赖库:

```bash
pip install -r requirements.txt
```

## 配置

在运行程序前，需要在项目根目录下创建或修改`config.ini`文件，设置您的GACCode授权令牌：

```ini
[DEFAULT]
token=Bearer 您的GACCode令牌
```

您也可以使用简化格式：

```
token=Bearer 您的GACCode令牌
```

## 使用方法

### 日志记录模式

运行以下命令启动定期查询并记录日志:

```bash
# 如果通过pip安装:
gaccode-logger

# 如果从源码安装:
python src/py/fetch_gaccode_balance.py
```

### 系统托盘模式

运行以下命令启动系统托盘应用:

```bash
# 如果通过pip安装:
gaccode-monitor

# 如果从源码安装:
python src/py/gaccode_tray_icon.py
# 或者双击 start_tray_icon.bat
```

系统托盘图标将显示当前的积分余额，颜色根据余额百分比变化:
- 蓝色: 余额 > 70%
- 黄色: 余额 30%-70%
- 红色: 余额 < 30%

鼠标悬停在图标上可查看详细信息。右键点击图标可退出应用。

## 打包与发布

要将项目打包成whl文件:

```bash
# 在Windows上
build_package.bat

# 在其他系统上
python -m build
```

打包完成后，whl文件会生成在`dist`目录中。

### 发布到PyPI

```bash
python -m twine upload dist/*
```

## 效果

![image-20250724224134295](https://hjw2727img.oss-cn-nanjing.aliyuncs.com/images/image-20250724224134295.png)
