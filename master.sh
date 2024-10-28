#!/bin/bash

# Google Drive Folder ID
FOLDER_ID="1HROmgviy4jUUUaCdvvrQ8PcqtNg2jn3G"

# Output Zip file name
ZIP_FILE="downloaded_folder.zip"

# Download the Google Drive folder as a zip using gdown
echo "Downloading Google Drive folder..."
gdown --folder "$FOLDER_ID" -O "$ZIP_FILE"

# Unzip the downloaded folder
echo "Unzipping downloaded folder..."
unzip "$ZIP_FILE" -d downloaded_folder

# Navigate to the unzipped folder where the docker-compose.yml file is located
cd downloaded_folder || exit

# Run Docker Compose
echo "Starting Docker Compose..."
docker-compose up -d

echo "Docker Compose started successfully."
