# -------------------------------------------------------------------------------------------------------------------- #
# MediaWiki. Settings.
# -------------------------------------------------------------------------------------------------------------------- #
# @author Kitsune Solar <https://kitsune.solar>
# @version 1.0.0
# -------------------------------------------------------------------------------------------------------------------- #

# -------------------------------------------------------------------------------------------------------------------- #
# Script: Settings.
# -------------------------------------------------------------------------------------------------------------------- #

domains=(
	# common projects
	'furlib.com'
	'furs.games'
	'furs.news'
	'furs.today'
	'fursona.info'
	'kitsune.solar'
	'lurkfur.com'
	'metadata.foundation'
	'metastore.pro'
	'radio.wtf'
	# *.webmasters.wiki
	'flarum.webmasters.wiki'
	'humhub.webmasters.wiki'
	'ips.webmasters.wiki'
	'xenforo.webmasters.wiki'
	# *.furs.wiki
	'blacklist.furs.wiki'
	'craft.furs.wiki'
	'event.furs.wiki'
	'person.furs.wiki'
	'web.furs.wiki'
	'whitelist.furs.wiki'
	# *.metadata.cloud
	'accounts.metadata.cloud'
	'base.metadata.cloud'
	'help.metadata.cloud'
	'storage.metadata.cloud'
)

extensions=(
	'AdvancedSearch'
	'AntiSpoof'
	'CharInsert'
	'CirrusSearch'
	'cldr'
	'CommonsMetadata'
	'Description2'
	'Echo'
	'Elastica'
	'FlaggedRevs'
	'GlobalUsage'
	'Kartographer'
	'MobileFrontend'
	'PageImages'
	'Popups'
	'RelatedArticles'
	'RevisionSlider'
	'SecurePoll'
	'ShortUrl'
	'TextExtracts'
	'Thanks'
	'TorBlock'
	'UploadWizard'
	'UserMerge'
	'VipsScaler'
	'SubPageList3'
	'Wikibase'
)

mw_path="${HOME}/subdomain/wiki.common/public_html"
mw_path_ext="${HOME}/subdomain/wiki.common/public_html/extensions/"
git_branch="REL1_31"
git_url="https://gerrit.wikimedia.org/r/p/mediawiki/extensions"
