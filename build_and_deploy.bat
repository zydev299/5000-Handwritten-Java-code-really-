@echo off
set JAVA="C:\Program Files\Eclipse Adoptium\jdk-21.0.10.7-hotspot\bin\java.exe"
set MVN_JAR=E:\C++\mc\mvnw\mvn-wrapper.jar

cd /d E:\C++\mc

echo [1/2] 編譯插件...
call mvn clean package -q
if errorlevel 1 (
    echo 編譯失敗！
    pause
    exit /b 1
)

echo [2/2] 複製到測試伺服器...
copy /Y "target\CollectionSystem-1.0.0.jar" "C:\mcserver\plugins\CollectionSystem.jar"
echo 完成！請啟動或重啟伺服器。
pause
