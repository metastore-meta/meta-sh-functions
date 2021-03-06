#!/usr/bin/env bash

# -------------------------------------------------------------------------------------------------------------------- #
# MediaWiki. Extension:FlaggedRevs Statistic Update.
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

function mw.run.updateStats() {
	for domain in ${domains[@]}; do
		HTTP_HOST="${domain}"
		export HTTP_HOST
		/usr/bin/php "${mw_path}/extensions/FlaggedRevs/maintenance/updateStats.php"
	done
}

mw.run.updateStats

# -------------------------------------------------------------------------------------------------------------------- #
# Script: Exit.
# -------------------------------------------------------------------------------------------------------------------- #

exit 0
