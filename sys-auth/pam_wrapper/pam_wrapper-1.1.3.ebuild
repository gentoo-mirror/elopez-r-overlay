# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake

DESCRIPTION="A tool to test PAM applications and PAM modules"
HOMEPAGE="https://cwrap.org/pam_wrapper.html"
SRC_URI="https://ftp.samba.org/pub/cwrap/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE=""

DEPEND="sys-libs/pam"
RDEPEND="${DEPEND}"

src_prepare() {
	cmake_src_prepare
}

src_configure() {
	cmake_src_configure
}

src_install() {
	cmake_src_install
}
