# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

MY_PN="${PN/-bin/}"

DESCRIPTION="A Fast and Flexible Static Site Generator built with love in Go"
HOMEPAGE="https://gohugo.io https://github.com/gohugoio/hugo"
SRC_URI="https://github.com/gohugoio/hugo/releases/download/v${PV}/${MY_PN}_${PV}_Linux-64bit.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="!www-apps/hugo !www-apps/hugo-bin"
RDEPEND="${DEPEND}"
BDEPEND=""

QA_PRESTRIPPED="usr/bin/hugo"

src_unpack() {
	mkdir "${WORKDIR}/${PF}" && cd "${WORKDIR}/${PF}" && unpack ${A} || die
}


src_install() {
	newbin hugo hugo
	dodoc README.md
}
