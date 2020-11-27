# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Window Manager agnostic swallowing feature for terminal emulators"
HOMEPAGE="https://github.com/salman-abedin/devour"
SRC_URI="https://github.com/salman-abedin/${PN}/archive/${PV}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="x11-libs/libX11"
RDEPEND="${DEPEND}"

src_install() {
	emake BIN_DIR="${ED}/usr/bin" install
}
