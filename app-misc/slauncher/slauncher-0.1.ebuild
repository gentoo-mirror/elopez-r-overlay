# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Simple launcher as a minimalist replacement for xdg-open"
HOMEPAGE="https://gitlab.com/libre_hackerman/slauncher"
SRC_URI="https://gitlab.com/libre_hackerman/${PN}/-/archive/v${PV}/${PN}-v${PV}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="sys-apps/file"
RDEPEND="${DEPEND}"

S="${WORKDIR}/${PN}-v${PV}"

src_install() {
	mkdir -p "${ED}/usr/bin"
	emake PREFIX="${ED}/usr" install
}
