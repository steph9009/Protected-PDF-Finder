Add-Type -Path .\itextsharp.dll

Get-ChildItem -Filter *.pdf |
ForEach-Object {
    $filename = $_.Name
    Try {
        $pdf = New-Object iTextSharp.text.pdf.PdfReader($_.FullName)
        If ($pdf.IsEncrypted()) {
            $filename
        }
    }
    Catch {
        $filename
    }
}
