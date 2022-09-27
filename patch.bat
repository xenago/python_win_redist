:: Set build type
"C:\Program Files\Git\usr\bin\sed.exe" -i "s/releaselocal/full/g" /c/venv/Tools/msi/buildrelease.bat
"C:\Program Files\Git\usr\bin\sed.exe" -i "s/releaseweb/releaselocal/g" /c/venv/Tools/msi/buildrelease.bat

:: Add debug symbols and binaries
"C:\Program Files\Git\usr\bin\sed.exe" -i "s/Download debu/Install debu/g" /c/venv/Tools/msi/bundle/Default.wxl

:: Fix RELEASE_URI per https://github.com/python/cpython/issues/96729
"C:\Program Files\Git\usr\bin\sed.exe" -i "s/RELEASE_URI=https/RELEASE_URI=http/g" /c/venv/Tools/msi/buildrelease.bat
