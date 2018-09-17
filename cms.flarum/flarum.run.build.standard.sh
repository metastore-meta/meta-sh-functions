#!/usr/bin/env bash

# -------------------------------------------------------------------------------------------------------------------- #
# Flarum. Create build.
# -------------------------------------------------------------------------------------------------------------------- #
# @author Kitsune Solar <https://kitsune.solar>
# @version 1.0.0
# -------------------------------------------------------------------------------------------------------------------- #

# -------------------------------------------------------------------------------------------------------------------- #
# Script: Settings.
# -------------------------------------------------------------------------------------------------------------------- #

build_path="${HOME}/.build/"
build_dir="metastore.build.flarum.standard"
build_name="${build_dir}.tar.xz"
build_date=$(date -u '+%Y-%m-%d')
timestamp=$(date -u '+%H:%M:%S')

storage_path="${HOME}/subdomain/build/public_html/storage/"
stability="beta"

# -------------------------------------------------------------------------------------------------------------------- #
# -----------------------------------------------------< SCRIPT >----------------------------------------------------- #
# -------------------------------------------------------------------------------------------------------------------- #

# -------------------------------------------------------------------------------------------------------------------- #
# Script: Build.
# -------------------------------------------------------------------------------------------------------------------- #

rm -rf "${build_path}" && mkdir "${build_path}" && cd "${build_path}"

# Composer: Create build.
composer create-project flarum/flarum "${build_dir}" --stability=${stability} && cd "${build_dir}"

# Composer: Get Russian language pack.
composer require metastore/flarum-ext-russian

# Create meta-file.
cat > META.BUILD.json <<EOF
{
	"id": "",
	"name": "metastore/flarum",
	"type": "project",
	"version": "",
	"license": "MIT",
	"homepage": "https://metastore.pro",
	"description": "Delightfully simple forum software.",
	"keywords": [
		"forum",
		"discussion",
		"flarum"
	],
	"authors": [
		{
			"name": "Toby Zerner",
			"email": "toby.zerner@gmail.com",
			"role": "Developer"
		},
		{
			"name": "Franz Liedke",
			"email": "franz@develophp.org",
			"role": "Developer"
		},
		{
			"name": "Kitsune Solar",
			"email": "kitsune.solar@gmail.com",
			"homepage": "https://kitsune.solar",
			"role": "Builder"
		}
	],
	"support": {
		"email": "support@metastore.pro",
		"issues": "https://github.com/flarum/core/issues",
		"forum": "https://webmasters.community",
		"wiki": "https://flarum.help",
		"source": "https://github.com/flarum/core",
		"docs": "http://flarum.org/docs"
	},
	"build": {
		"date": "${build_date}",
		"time": "${timestamp}"
	}
}
EOF

# Move UP.
cd ..

# Compress build and move in storage.
tar -cJf "${build_name}" "${build_dir}" && mv "${build_name}" "${storage_path}"

# -------------------------------------------------------------------------------------------------------------------- #
# Script: Exit.
# -------------------------------------------------------------------------------------------------------------------- #

exit 0
