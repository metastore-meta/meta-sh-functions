# -------------------------------------------------------------------------------------------------------------------- #
# Ext: Timestamp.
# -------------------------------------------------------------------------------------------------------------------- #
function ext.timestamp() {
	timestamp="$( date -u '+%Y-%m-%d %T' )"

	echo ${timestamp}
}

# -------------------------------------------------------------------------------------------------------------------- #
# Ext: Version.
# -------------------------------------------------------------------------------------------------------------------- #

function ext.build.version() {
	version="$( date -u '+%Y%m%d%H%M%S' )"

	echo ${version}
}

# -------------------------------------------------------------------------------------------------------------------- #
# Git: Push.
# -------------------------------------------------------------------------------------------------------------------- #

function git.push() {
	name="$( basename ${PWD} )"
	timestamp="$( ext.timestamp )"
	commit="$*"

	echo ""
	echo "--- Pushing ${name}"

	git add . && git commit -a -m "${timestamp}" -m "${commit}" && git push

	echo "--- Finished ${name}"
	echo ""
}

# -------------------------------------------------------------------------------------------------------------------- #
# Git: Push all.
# -------------------------------------------------------------------------------------------------------------------- #

function git.push.all() {
	for i in `ls`; do
		if [ -d ${i}/.git ]; then
			cd ${i}
			git.push
			cd ..
		fi
	done
}

# -------------------------------------------------------------------------------------------------------------------- #
# Git: Push version.
# -------------------------------------------------------------------------------------------------------------------- #

function git.push.version() {
	if [ -z "${1}" ]; then
		ver="1.0.$( ext.build.version )"
	else
		ver="${1}.$( ext.build.version )"
	fi

	git.push && git tag -a ${ver} -m "Version ${ver}" && git push origin ${ver}
}

function git.push.version.test() {
	tag=( $( git describe --abbrev=0 --tags | tr '.' ' ' ) )
	major=${tag[1]}
	minor=${tag[2]}
	patch=${tag[3]}
	version="${major}.${minor}.$(( ${patch} + 1 ))+$( ext.build.version )"

	#git.push && git tag -a ${version} -m "Version ${version}" && git push origin ${version}

	echo ${version}
}

# -------------------------------------------------------------------------------------------------------------------- #
# Git: Push page.
# -------------------------------------------------------------------------------------------------------------------- #

function git.push.page() {
	if [ -z "${1}" ]; then
		branch="page-stable"
	else
		branch="${1}"
	fi

	git.push && git checkout master && git merge ${branch} && git push && git checkout ${branch}
}
