# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="CWPP is a wallpaper changer written in C that relies in Feh"
HOMEPAGE="https://gitlab.com/libre_hackerman/cwpp"

LICENSE="GPL-3"
SLOT="0"
IUSE=""

DEPEND=""
RDEPEND="media-gfx/feh"
BDEPEND=""

if [[ ${PV} == *9999 ]] ; then
	EGIT_REPO_URI="https://gitlab.com/libre_hackerman/${PN}.git"
	inherit git-r3
else
	SRC_URI="https://gitlab.com/libre_hackerman/${PN}/-/archive/${PV}/${P}.tar.gz"
	KEYWORDS="amd64 x86"
fi

src_install() {
	mkdir -p "${ED}/usr/bin"
	emake PREFIX="${ED}/usr" install
}
