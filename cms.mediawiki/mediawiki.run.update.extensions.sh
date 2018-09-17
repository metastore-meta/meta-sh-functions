#!/usr/bin/env bash

# -------------------------------------------------------------------------------------------------------------------- #
# MediaWiki. Extension Update.
# -------------------------------------------------------------------------------------------------------------------- #
# @author Kitsune Solar <https://kitsune.solar>
# @version 1.0.0
# -------------------------------------------------------------------------------------------------------------------- #

# -------------------------------------------------------------------------------------------------------------------- #
# Script: Settings.
# -------------------------------------------------------------------------------------------------------------------- #

source "${HOME}/.apps/mediawiki.settings.sh"

# -------------------------------------------------------------------------------------------------------------------- #
# -----------------------------------------------------< SCRIPT >----------------------------------------------------- #
# -------------------------------------------------------------------------------------------------------------------- #

# -------------------------------------------------------------------------------------------------------------------- #
# Script: Update.
# -------------------------------------------------------------------------------------------------------------------- #

cd "${mw_path_ext}"

for extension in ${extensions[@]}; do
	rm -rf "${extension}"
	git clone -b "${git_branch}" "${git_url}/${extension}.git"
done

# -------------------------------------------------------------------------------------------------------------------- #
# Script: Exit.
# -------------------------------------------------------------------------------------------------------------------- #

exit 0
