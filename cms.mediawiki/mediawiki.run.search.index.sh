#!/usr/bin/env bash

# -------------------------------------------------------------------------------------------------------------------- #
# MediaWiki. Run Search Index.
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

function mw.run.forceSearchIndex.01() {
	for domain in ${domains[@]}; do
		echo "--- ${domain}"
		HTTP_HOST="${domain}"
		export HTTP_HOST
		/usr/bin/php "${mw_path}/extensions/CirrusSearch/maintenance/forceSearchIndex.php" --skipLinks --indexOnSkip
		echo ""
	done
}

function mw.run.forceSearchIndex.02() {
	for domain in ${domains[@]}; do
		echo "--- ${domain}"
		HTTP_HOST="${domain}"
		export HTTP_HOST
		/usr/bin/php "${mw_path}/extensions/CirrusSearch/maintenance/forceSearchIndex.php" --skipParse
		echo ""
	done
}

mw.run.forceSearchIndex.01
mw.run.forceSearchIndex.02

# -------------------------------------------------------------------------------------------------------------------- #
# Script: Exit.
# -------------------------------------------------------------------------------------------------------------------- #

exit 0
