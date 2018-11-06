@echo off
SETLOCAL
REM set configurationDirectory=build
set configurationDirectoryFullPath=
set directoryPath=%1
:go_to_parent
	if not defined configurationDirectoryFullPath (
		for /f "delims=" %%a in ('dir %cd% /on /ad /b') do if /i "%%~nxa"=="%configurationDirectory%" set "configurationDirectoryFullPath=%%~fa" && goto :end
		cd ../
		goto :go_to_parent
	)
:end
echo Running ESLint at %directoryPath% (using %configurationDirectoryFullPath%\.eslintrc.json)
call eslint %directoryPath% -c "%configurationDirectoryFullPath%\.eslintrc.json" --fix 1>&2
ENDLOCAL
pause