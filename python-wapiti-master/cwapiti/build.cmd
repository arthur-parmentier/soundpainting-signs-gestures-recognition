rem msbuild wapiti.sln /t:Build /p:Configuration=Release
rem msbuild wapiti.sln /t:Build /clp:v=m /p:Configuration=Debug /bl
msbuild wapiti.sln /t:Build /consoleLoggerParameters:Verbosity=Minimal /MaxCpuCount /p:Configuration=Debug
rem msbuild wapiti.sln /t:Build /MaxCpuCount /p:Configuration=Debug
