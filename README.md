# python_win_redist

Build Python 3.9 amd64 Windows installers from source.

# Current releases:

* 3.9.14

## Motivation

At a certain point, supported Python versions receive security updates without installers, so to upgrade an existing install one must build the installer from source.

Many of those installers are built and available here in [@adang1345's repo](https://github.com/adang1345/PythonWindows) if you don't need to build one from source yourself (e.g. by forking this repository).

That repository was a very useful resource. Some highlights:

* The Python 3.9 section in [`Notes.txt`](https://github.com/adang1345/PythonWindows/blob/master/Notes.txt)
* Several small patches were recreated from that repository
  * Building for release
  * Enabling debug symbols/binaries
  * Working around an https/http inconsistency
  * Did not adopt a fix for formatting of help .chm files as this is low-priority
* [Discussion in the issues](https://github.com/adang1345/PythonWindows/issues/4#issuecomment-1004194012) regarding building the full installer

## Notes

Server 2019 is used, as the Server 2022 image causes an error:

`MSB8020: The build tools for Visual Studio 2015 (Platform Toolset = 'v140') cannot be found. To build using the v140 build tools, please install Visual Studio 2015 build tools.  Alternatively, you may upgrade to the current Visual Studio tools by selecting the Project menu or right-click the solution, and then selecting "Retarget solution". [C:\venv\Tools\msi\bundle\bootstrap\pythonba.vcxproj]`

## Useful References

https://github.com/adang1345/PythonWindows

https://devguide.python.org/getting-started/setup-building/#windows

https://github.com/python/cpython/blob/3.8/PCbuild/readme.txt

