#!/bin/bash

# Check if git-lfs is installed
if ! command -v git-lfs &> /dev/null; then
    echo "Git LFS is not installed. Please install it first:"
    echo "https://git-lfs.github.com/"
    exit 1
fi

# Initialize Git LFS
git lfs install

# Create main directories
mkdir -p docs
mkdir -p temp
mkdir -p cdn/{images,fonts,media}
mkdir -p archives

# Add .gitkeep files
touch docs/.gitkeep
touch temp/.gitkeep
touch cdn/images/.gitkeep
touch cdn/fonts/.gitkeep
touch cdn/media/.gitkeep
touch archives/.gitkeep

# Create a basic index for docs
echo "# Documentation Assets" > docs/README.md
echo "Store documentation-related images, diagrams, and screenshots here." >> docs/README.md

# Create a basic index for cdn
echo "# CDN Assets" > cdn/README.md
echo "Store permanent assets here, organized by type." >> cdn/README.md

# Create a basic index for archives
echo "# Archived Assets" > archives/README.md
echo "Store historical and deprecated assets here." >> archives/README.md

# Initialize Git LFS tracking
git lfs track "*.png"
git lfs track "*.jpg"
git lfs track "*.jpeg"
git lfs track "*.gif"
git lfs track "*.webp"
git lfs track "*.svg"
git lfs track "*.ttf"
git lfs track "*.otf"
git lfs track "*.woff"
git lfs track "*.woff2"
git lfs track "*.mp4"
git lfs track "*.webm"
git lfs track "*.zip"
git lfs track "*.tar.gz"
git lfs track "*.7z"

echo "Repository setup complete with Git LFS tracking enabled"
