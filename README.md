# 🔎 Protected PDF Finder

###### PowerShell Script to Identify Encrypted PDFs

---

## English

### Description

This PowerShell script scans the current directory for PDF files (`.pdf`) and identifies those that are encrypted or cause errors during processing. It utilizes the `iTextSharp.dll` library to inspect the PDF files.

The script will output the filename of a PDF if:
1.  The script successfully determines the PDF is encrypted using iTextSharp.
2.  An error occurs while trying to open or process the PDF with iTextSharp (this can sometimes indicate encryption, corruption, or other issues).

### Prerequisites

1.  **Windows PowerShell:** The script is designed to run on Windows PowerShell.
2.  **iTextSharp DLL:** You need the `itextsharp.dll` file.
    * **Placement:** This DLL file **must** be placed in the same directory where you run the script.
    * **Acquisition & Licensing:** iTextSharp has specific licensing terms (often AGPL or commercial). You must obtain `itextsharp.dll` yourself and ensure you comply with its license. This script does not bundle the DLL. You can typically find older versions or check the official iText website for current licensing options.

### Usage

1.  **Save the script:** Save the PowerShell code into a file named `Find-EncryptedPdfs.ps1` (or any other `.ps1` name you prefer).
2.  **Place DLL:** Ensure the `itextsharp.dll` file is in the same directory as your script and the PDF files you want to check.
3.  **Navigate:** Open PowerShell and navigate to the directory containing the script, the DLL, and the PDFs.
    ```powershell
    cd C:\path\to\your\directory
    ```
4.  **Run the script:** Execute the script.
    ```powershell
    .\Find-EncryptedPdfs.ps1
    ```
5.  **Execution Policy:** If you encounter an error related to script execution being disabled, you may need to adjust your PowerShell execution policy. Use with caution. For example:
    ```powershell
    Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope Process
    # Then re-run:
    .\Find-EncryptedPdfs.ps1
    ```

### Output

The script will print the filenames of the PDFs that are either detected as encrypted or caused an error during processing. Each filename will appear on a new line.

---

## Italiano

### Descrizione

Questo script PowerShell analizza la directory corrente alla ricerca di file PDF (`.pdf`) e identifica quelli che sono criptati o che causano errori durante l'elaborazione. Utilizza la libreria `iTextSharp.dll` per ispezionare i file PDF.

Lo script mostrerà in output il nome del file di un PDF se:
1.  Lo script determina con successo che il PDF è criptato usando iTextSharp.
2.  Si verifica un errore durante il tentativo di aprire o elaborare il PDF con iTextSharp (questo a volte può indicare crittografia, corruzione del file o altri problemi).

### Prerequisiti

1.  **Windows PowerShell:** Lo script è progettato per essere eseguito su Windows PowerShell.
2.  **DLL iTextSharp:** È necessario il file `itextsharp.dll`.
    * **Posizionamento:** Questo file DLL **deve** trovarsi nella stessa directory in cui si esegue lo script.
    * **Acquisizione e Licenza:** iTextSharp ha termini di licenza specifici (spesso AGPL o commerciale). È necessario ottenere `itextsharp.dll` autonomamente e assicurarsi di rispettarne la licenza. Questo script non include la DLL. Solitamente è possibile trovare versioni più vecchie o consultare il sito ufficiale di iText per le opzioni di licenza attuali.

### Utilizzo

1.  **Salvare lo script:** Salva il codice PowerShell in un file chiamato `Find-EncryptedPdfs.ps1` (o qualsiasi altro nome `.ps1` tu preferisca).
2.  **Posizionare la DLL:** Assicurati che il file `itextsharp.dll` sia nella stessa directory dello script e dei file PDF che vuoi controllare.
3.  **Navigare:** Apri PowerShell e naviga fino alla directory che contiene lo script, la DLL e i PDF.
    ```powershell
    cd C:\percorso\tua\directory
    ```
4.  **Eseguire lo script:** Esegui lo script.
    ```powershell
    .\Find-EncryptedPdfs.ps1
    ```
5.  **Policy di Esecuzione:** Se incontri un errore relativo all'esecuzione degli script disabilitata, potresti dover modificare la policy di esecuzione di PowerShell. Usare con cautela. Ad esempio:
    ```powershell
    Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope Process
    # Poi rieseguire:
    .\Find-EncryptedPdfs.ps1
    ```

### Output

Lo script stamperà i nomi dei file PDF che sono stati rilevati come criptati o che hanno causato un errore durante l'elaborazione. Ogni nome di file apparirà su una nuova riga.

---
