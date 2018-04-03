set solution=pcre.2017.sln
set MSBuildToolsPath="C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\MSBuild\15.0\Bin\msbuild"
echo %MSBuildToolsPath%
cmd /C %MSBuildToolsPath% %solution% /p:Configuration=Debug /p:Platform=Win32 /t:Build /p:PlatformToolset=v141
cmd /C %MSBuildToolsPath% %solution% /p:Configuration=Debug /p:Platform=x64 /t:Build /p:PlatformToolset=v141
cmd /C %MSBuildToolsPath% %solution% /p:Configuration=Release /p:Platform=Win32 /t:Build /p:PlatformToolset=v141
cmd /C %MSBuildToolsPath% %solution% /p:Configuration=Release /p:Platform=x64 /t:Build /p:PlatformToolset=v141
echo Done! Packages (zip files) were placed to the "out" folder.