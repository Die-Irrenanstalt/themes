#!/bin/sh

set -e

# Download URL
theme_url="https://codeberg.org/DIADZ/DIADZ-Themes/raw/branch/main/themes/spicetify/DIADZ"

# Setup directories to download to
spice_dir="$(dirname "$(spicetify -c)")"
theme_dir="${spice_dir}/Themes"

# Make directories if needed
mkdir -p "${theme_dir}/DIADZ"

# Download latest tagged files into correct director
echo "Downloading Comfy..."
curl --silent --output "${theme_dir}/DIADZ/color.ini" "${theme_url}/color.ini"
curl --silent --output "${theme_dir}/DIADZ/user.css" "${theme_url}/user.css"
echo "Done"

# Apply theme
echo "Applying theme"
spicetify config current_theme DIADZ
spicetify config inject_css 1 replace_colors 1 overwrite_assets 1
spicetify apply

echo "All done!"