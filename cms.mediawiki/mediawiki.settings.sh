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
	'flarum.help'
	'furlib.com'
	'furs.games'
	'furs.news'
	'furs.today'
	'fursona.info'
	'humhub.help'
	'ipb.help'
	'kitsune.solar'
	'lurkfur.com'
	'metadata.foundation'
	'metastore.pro'
	'radio.wtf'
	'xenforo.help'
	'craft.furs.wiki'
	'event.furs.wiki'
	'person.furs.wiki'
	'web.furs.wiki'
	'accounts.metadata.cloud'
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
	'intersection'
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
)

mw_path="${HOME}/subdomain/wiki.common/public_html"
mw_path_ext="${HOME}/subdomain/wiki.common/public_html/extensions/"
git_branch="REL1_31"
git_url="https://gerrit.wikimedia.org/r/p/mediawiki/extensions"
