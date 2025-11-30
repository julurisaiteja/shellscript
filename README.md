# sample_script.sh

A tiny example shell script (10 lines) that finds the top 5 largest files in a directory and archives them.

What it does
- Scans the directory you pass as the first argument (defaults to current directory).
- Lists the top 5 largest regular files (by bytes) into a temporary file (/tmp/top5.txt).
- Shows the list in the terminal and then archives those files into a .tar.gz file named `large_files_YYYYMMDD.tar.gz`.

Usage
```bash
# make executable then run on a directory
chmod +x sample_script.sh
./sample_script.sh /path/to/target/dir
```

Notes / requirements
- Script is written for bash (uses process substitution and GNU find `-printf`).
- Uses `/tmp` for a temporary file (works on Unix-like systems). On Windows, use WSL or adapt paths.
- Be careful running in directories with many files: the script inspects sizes using find and sorts them.

That's it — a compact 10-line example showing typical small-shell automation tasks (scan, pick, archive).