Write-Host "Proceso, tomará todos los archivos .sql y los va a unir en un archivo llamado '.\resultado\[yyyyMMddHHmm]_migracion.sql', preciona cualquier tecla para continuar..."
$x = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")

$date = (Get-Date).ToString("yyyyMMddHHmm")
md ".\resultado"
$fileName = ".\resultado\"+$date+"_migracion.sql"

$MyRawString = Get-Content -Raw "*.sql" -encoding utf8
[System.IO.File]::WriteAllLines($fileName, $MyRawString)
