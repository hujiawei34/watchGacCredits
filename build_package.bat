@echo off
echo 正在清理旧的构建文件...
if exist build rmdir /s /q build
if exist dist rmdir /s /q dist
if exist gaccode_monitor.egg-info rmdir /s /q gaccode_monitor.egg-info

echo 安装构建依赖...
pip install --upgrade pip
pip install --upgrade setuptools wheel build twine

echo 构建包...
python -m build

echo 完成！
echo whl文件已创建在dist目录中
echo.
echo 若要发布到PyPI，请运行:
echo python -m twine upload dist/*
echo.
pause 