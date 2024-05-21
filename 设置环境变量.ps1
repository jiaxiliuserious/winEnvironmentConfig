# 设置 JDK 环境变量
$mavenpath = "D:\Tools\apache-maven-3.9.6"  # 替换为您的 JDK 安装路径
$envVariableName = "MAVEN_HOME"
$envVariableValue = "$mavenpath"
$existingValue = [Environment]::GetEnvironmentVariable($envVariableName, "Machine")
if ($existingValue -ne $null) {
    echo $existingValue
    # $envVariableValue = "$mavenpath;$existingValue"
}
# [Environment]::SetEnvironmentVariable($envVariableName, $envVariableValue, "Machine")
# [Environment]::SetEnvironmentVariable("Path", "$mavenpath\bin;$env:Path", "Machine")
