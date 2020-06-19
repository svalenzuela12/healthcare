$scriptDir = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent
$scriptDirFS = $scriptDir.Replace("\", "/")
$mlHost = "192.168.43.40"
$username = "admin"
$password = "admin"
. $scriptDir\mlcp-10.0.4\bin\mlcp.bat IMPORT -mode local -input_file_path $scriptDirFS/Hospitals.csv -generate_uri false -host $mlHost -username $username -password $password -port 8000 -database healthcare-content -document_type JSON -input_file_type delimited_text -output_directory /hospitals/ -output_uri_replace "$scriptDirFS,''" -uri_id OBJECTID -output_uri_suffix ".json" -output_collections "hospitals"