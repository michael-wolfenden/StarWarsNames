Param
(
    [String]$CakeVersion = "0.29.0",
    [String]$ToolsDir    = [io.path]::combine($PSScriptRoot, "tools"),
    [String]$BuildFile   = [io.path]::combine($PSScriptRoot, "build.cake"),
    [String]$ToolsProj   = [io.path]::combine($ToolsDir, "tools.csproj"),
    [String]$Target      = "Default",
    [String]$Verbosity   = "Verbose"
)

$CAKE_DIR = [io.path]::combine($ToolsDir, "Cake.CoreCLR.$CakeVersion")
$CAKE_DLL = [io.path]::combine($CAKE_DIR, "cake.coreclr", "$CakeVersion", "Cake.dll")

if (-not (Test-Path $ToolsProj))
{
    $projectFileContents = '<Project Sdk="Microsoft.NET.Sdk"><PropertyGroup><OutputType>Exe</OutputType><TargetFramework>netcoreapp2.0</TargetFramework></PropertyGroup></Project>'

    New-Item -Force -Path $ToolsDir -type directory | Out-Null
    Out-File -Force -InputObject $projectFileContents -FilePath $ToolsProj

    dotnet add "$ToolsProj" package cake.coreclr -v "$CakeVersion" --package-directory "$CAKE_DIR"
}

if (-not (Test-Path $CAKE_DLL))
{
    Write-Error "Could not find Cake assembly '$CAKE_DLL'"
}
else
{
    dotnet "$CAKE_DLL" "$BuildFile" --target="$Target" -verbosity="$Verbosity"
}
