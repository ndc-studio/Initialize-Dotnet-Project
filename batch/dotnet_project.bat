@echo off
set /p ProjectName=Enter the name of your project (e.g. MyProject1):

:: Create main project folder
mkdir %ProjectName%
cd %ProjectName%

:: Create solution and project folders
dotnet new console -n Solution
dotnet new sln -n Solution
dotnet sln add .\Solution\Solution.csproj

:: Create test project
dotnet new xunit -n Tests
dotnet sln add .\Tests\Tests.csproj


:: Go into the Tests folder
cd Tests\

dotnet add reference ../Solution/Solution.csproj

:: Build the whole solution
dotnet build

echo.
echo Project %ProjectName% created successfully!
pause
