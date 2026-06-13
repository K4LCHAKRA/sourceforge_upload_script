# SourceForge Upload Script

This script simplifies uploading files to SourceForge by automatically converting a SourceForge download URL into the correct upload path.

## Usage

### 1. Navigate to the directory containing the file

Open a terminal and change to the directory where the file you want to upload is located.

```bash
cd /path/to/file
```

### 2. Run the upload script

```bash
bash <(curl -fsSL https://raw.githubusercontent.com/K4LCHAKRA/sourceforge_upload_script/main/sourceforge_upload.sh)
```

### 3. Enter the SourceForge URL
Provide the SourceForge Files URL where the file should be uploaded.
### 4. Enter your SourceForge username
### 5. Enter the file name
Enter the file name including its extension.
### 6. Confirm the upload

The script will generate the SCP command and ask for confirmation.

```text
Execute upload? (y/n):
```

Press:

```text
y
```

to start the upload.


## Requirements

* Bash
* curl
* scp (OpenSSH client)
* A SourceForge account with upload permissions to the target project

