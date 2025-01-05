# Set Album Metadata

## Description

`set_album_metadata.sh` is a Bash script designed to automate the process of updating album metadata for audio files. It uses the name of each folder in a directory structure as the album name and applies it to all audio tracks within that folder. This script is especially useful for organizing music libraries or batch tagging audio files.

---

## Features

- Extracts folder names to use as album metadata.
- Processes all subdirectories and audio files within a specified directory.
- Updates metadata without re-encoding audio files using `ffmpeg`.
- Works seamlessly with MP3 and other audio formats supported by `ffmpeg`.

---

## Requirements

1. **Dependencies:**
   
   - `ffmpeg` (Make sure it is installed and available in your system's PATH.)
   - Bash shell (Linux/macOS or Windows with WSL).

2. **Installation:**
   
   - Clone this repository or download the script directly.

---

## Installation

1. Clone the repository:
   
   ```bash
   git clone https://github.com/your-username/set-album-metadata.git
   cd set-album-metadata
   ```

2. Make the script executable:
   
   ```bash
   chmod +x set_album_metadata.sh
   ```

---

## Usage

1. Navigate to the directory containing your audio files:
   
   ```bash
   cd /path/to/your/music/collection
   ```

2. Run the script:
   
   ```bash
   /path/to/set_album_metadata.sh
   ```
   
   Alternatively, if the script is in your PATH:
   
   ```bash
   set_album_metadata.sh
   ```

### Example

Suppose your directory structure is as follows:

```
Music/
├── Album1/
│   ├── track1.mp3
│   └── track2.mp3
├── Album2/
│   ├── track1.mp3
│   └── track2.mp3
```

After running the script, the tracks inside `Album1` will have "Album1" as their album metadata, and similarly for `Album2`.

---

## Limitations

- Only supports audio formats compatible with `ffmpeg`.
- Existing album metadata will be overwritten.
- Non-audio files within folders will be skipped.

---

## Troubleshooting

1. **Error: `command not found: ffmpeg`**
   
   - Ensure `ffmpeg` is installed and accessible in your system's PATH.

2. **Script doesn't execute:**
   
   - Verify that the script has execute permissions:
     
     ```bash
     chmod +x set_album_metadata.sh
     ```

3. **Metadata not updated for some files:**
   
   - Check if the files are in a format supported by `ffmpeg`.

---

## License

This project is licensed under the AGPL-3.0 License. See the LICENSE file for details.

---


