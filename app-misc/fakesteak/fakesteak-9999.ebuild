# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3

DESCRIPTION="Low footprint digital character rain as seen in The Matrix"
HOMEPAGE="https://github.com/domsson/fakesteak"
EGIT_REPO_URI="https://github.com/domsson/${PN}.git"

LICENSE="CC0-1.0"
SLOT="0"

src_install() {
	emake PREFIX="${ED}/usr" install
}
