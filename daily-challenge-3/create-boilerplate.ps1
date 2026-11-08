
param(
    [string]$FileName = "index.html"
)

if ([System.IO.Path]::GetExtension($FileName) -ne ".html") {
    Write-Host "Please provide an HTML filename."
    exit 1
}

$outputPath = Join-Path $PSScriptRoot $FileName

if (Test-Path $outputPath) {
    Write-Host "File already exists. Choose another filename."
    exit 1
}

$html = @"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Project</title>
    <link rel="stylesheet" href="./style.css">
</head>
<body>

    <h1>Hello, World!</h1>

    <script src="./app.js" defer></script>
</body>
</html>
"@

Set-Content -Path $outputPath -Value $html -Encoding utf8

Write-Host "HTML boilerplate created: $outputPath"
