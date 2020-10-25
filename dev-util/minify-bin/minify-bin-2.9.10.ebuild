# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

MY_PN="${PN/-bin/}"

inherit bash-completion-r1

DESCRIPTION="Go minifiers for web formats."
HOMEPAGE="https://github.com/tdewolff/minify"
SRC_URI="https://github.com/tdewolff/minify/releases/download/v${PV}/${MY_PN}_linux_amd64.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm x86"
IUSE=""

DEPEND="!dev-util/minify"
RDEPEND="${DEPEND}"
BDEPEND=""

QA_PRESTRIPPED="usr/bin/minify"

src_unpack() {
	mkdir "${WORKDIR}/${PF}" && cd "${WORKDIR}/${PF}" && unpack ${A} || die
}


src_install() {
	newbin minify minify
	newbashcomp bash_completion ${MY_PN}
	dodoc README.md
}
