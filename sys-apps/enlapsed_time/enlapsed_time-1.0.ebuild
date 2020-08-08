# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Counter of time between events, ideal for the shell prompt"
HOMEPAGE="https://gitlab.com/libre_hackerman/enlapsed_time"
SRC_URI="https://gitlab.com/libre_hackerman/${PN}/-/archive/${PV}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_install() {
	mkdir -p "${ED}/usr/bin"
	emake PREFIX="${ED}/usr" install
}
