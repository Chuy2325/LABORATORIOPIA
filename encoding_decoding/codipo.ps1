
#jesus edaurdo garcia campos 
#2000965
Write-Host "Bienvenido a un ejemplo de codificacion / decodificacion base64 usando powershell" -ForegroundColor Green
Write-Host "Codificacion un archivo de texto"

$input_file = "C:\Users\jesus\Downloads\secret.txt"
$fc = Get-Content $input_file
$GB = [System.Text.Encoding]::UTF8.GetBytes(($fc))
$etext = [System.Convert]::ToBase64String($GB)
Write-Host "El contenido del archivo CODIFICADO es" $etext -ForegroundColor Green
Write-Host "Decodificando"
[System.Text.Encoding]::ASCII.GetString([System.Convert]::FromBase64String($etext)) | Out-File -Encoding "ASCII" C:\Users\jesus\decode_secret.txt
$outfile = Get-Content C:\Users\jesus\decode_secret.txt
Write-Host "El texto decodificado   es:" $outfile -ForegroundColor Green 
