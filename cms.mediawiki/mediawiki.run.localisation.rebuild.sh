#!/usr/bin/env bash

# -------------------------------------------------------------------------------------------------------------------- #
# MediaWiki. Localisation Rebuild.
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

for domain in ${domains[@]}; do
	HTTP_HOST="${domain}"
	export HTTP_HOST
	/usr/bin/php "${mw_path}/maintenance/rebuildLocalisationCache.php" --force
done

# -------------------------------------------------------------------------------------------------------------------- #
# Script: Exit.
# -------------------------------------------------------------------------------------------------------------------- #

exit 0
