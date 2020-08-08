# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_6 python3_7 )

inherit eutils python-single-r1

DESCRIPTION="A simple text-mode skiing game"
HOMEPAGE="http://www.catb.org/~esr/ski/"
SRC_URI="https://gitlab.com/esr/${PN}/-/archive/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
REQUIRED_USE="${PYTHON_REQUIRED_USE}"

RDEPEND="${PYTHON_DEPS}"
DEPEND="${RDEPEND}
app-text/xmlto"

# games-sports/ski and app-emulation/ski both install 'ski' binary, bug #653110
RDEPEND="${RDEPEND} !!app-emulation/ski"

src_install() {
	emake -o uninstall DESTDIR="${D}" install
}
