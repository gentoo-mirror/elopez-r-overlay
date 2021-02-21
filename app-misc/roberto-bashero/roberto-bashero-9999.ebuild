# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3

DESCRIPTION="CLI utility to display the weather forecast from AEMET (Spain only)"
HOMEPAGE="https://gitlab.com/libre_hackerman/roberto-bashero"

LICENSE="GPL-3"
SLOT="0"

DEPEND="dev-libs/libxml2"
RDEPEND="${DEPEND}"

EGIT_REPO_URI="https://gitlab.com/libre_hackerman/${PN}.git"

src_install() {
	mkdir -p "${ED}/usr/bin"
	emake PREFIX="${ED}/usr" install
}
