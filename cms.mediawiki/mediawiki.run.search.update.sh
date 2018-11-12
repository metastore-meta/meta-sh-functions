#!/usr/bin/env bash

# -------------------------------------------------------------------------------------------------------------------- #
# MediaWiki. Run Search Update.
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
# Script: Run search index.
# -------------------------------------------------------------------------------------------------------------------- #

function mw.run.updateSearchIndexConfig() {
	for domain in ${domains[@]}; do
		HTTP_HOST="${domain}"
		export HTTP_HOST
		/usr/bin/php "${mw_path}/extensions/CirrusSearch/maintenance/updateSearchIndexConfig.php"
	done
}

mw.run.updateSearchIndexConfig

# -------------------------------------------------------------------------------------------------------------------- #
# Script: Exit.
# -------------------------------------------------------------------------------------------------------------------- #

exit 0
