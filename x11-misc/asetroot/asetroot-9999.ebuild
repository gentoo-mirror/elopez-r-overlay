# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3

DESCRIPTION="A lightweight animated wallpaper program"
HOMEPAGE="https://github.com/Wilnath/asetroot"
EGIT_REPO_URI="https://gitlab.com/libre_hackerman/${PN}.git"

LICENSE="MIT"
SLOT="0"

DEPEND="media-libs/imlib2
x11-libs/libX11"
RDEPEND="${DEPEND}"

src_install() {
	dobin ${PN}
}
