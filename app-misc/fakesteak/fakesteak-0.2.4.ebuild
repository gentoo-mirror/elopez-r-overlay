# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Low footprint digital character rain as seen in The Matrix"
HOMEPAGE="https://github.com/domsson/fakesteak"
SRC_URI="https://github.com/domsson/${PN}/archive/v${PV}.tar.gz"

LICENSE="CC0-1.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"

src_install() {
	emake PREFIX="${ED}/usr" install
}
