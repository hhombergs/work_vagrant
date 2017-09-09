@ECHO OFF &setlocal

echo "Looking for pre-requisites..."

FOR %%C IN ( "composer" "git" "npm" "virtualbox" "vagrant" ) do (
    echo Looking for %%C...
    WHERE %%C >nul 2>nul
    IF %ERRORLEVEL% NEQ 0 (
        echo failed
        exit 1
    )
    echo found!
)

echo "Fetching codebase..."
git clone https://github.com/hhombergs/work_backend.git
git clone https://github.com/hhombergs/work_frontend.git

echo Installing dependencies...
(
  pushd "work_backend"
  call composer install
  popd
  pushd "work_frontend"
  call npm install
 call  ./node_modules/.bin/grunt.cmd clean
  popd
)
