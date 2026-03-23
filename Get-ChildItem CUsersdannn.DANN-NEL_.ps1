# Copy images back first
Copy-Item -Path "C:\Users\dannn.DANN-NEL_LAPTOP\Downloads\Kimi_Age\app\dist\images" -Destination "C:\Users\dannn.DANN-NEL_LAPTOP\Downloads\Kimi_Agent\app\dist\images" -Recurse -Force

# Fix image paths
Get-ChildItem "C:\Users\dannn.DANN-NEL_LAPTOP\Downloads\Kimi_Agent\app\dist\assets\*.js" | ForEach-Object { (Get-Content $_.FullName) -replace '"/images/', '"/Mangaung-Dance-Project/images/' | Set-Content $_.FullName }

# Push everything
cd "C:\Users\dannn.DANN-NEL_LAPTOP\Downloads\Kimi_Agent\app\dist"
git add .
git commit -m "Fix image paths and sync"
git push -f origin master