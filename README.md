# duplicati‑rclone‑docker  

A lightweight Docker image that extends the official **Duplicati** backup server with **rclone** pre‑installed, enabling cloud storage back‑ends directly from your Duplicati jobs.

---  

## Description  
This image is built from `duplicati/duplicati:latest` and adds the latest rclone binary. Use it when you need Duplicati’s web UI plus rclone’s wide range of cloud providers (Google Drive, S3, OneDrive, etc.) without extra setup steps.

---  

## Configuration  

For Duplicati configuration please use take a look at the Duplicati docker image: https://hub.docker.com/r/duplicati/duplicati

---  

## Using rclone  

rclone is already installed and available inside the container (`/usr/bin/rclone`). You can:

1. **Configure remote(s)** via the Duplicati UI (choose “Rclone” as the storage type) or by running an interactive shell:

   ```bash
   docker exec -it duplicati rclone config
   ```

2. **Reference the remote** in your Duplicati backup destination, e.g.:

   ```
   rclone:myremote:/backup-folder
   ```

---  

## License & Credits  

- **Duplicati** – MIT License (see https://github.com/duplicati/duplicati)  
- **rclone** – MIT License (see https://github.com/rclone/rclone)  
- This Docker wrapper – MIT License (see the repository’s `LICENSE` file).
