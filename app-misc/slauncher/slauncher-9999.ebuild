# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3

DESCRIPTION="Simple launcher as a minimalist replacement for xdg-open"
HOMEPAGE="https://gitlab.com/libre_hackerman/slauncher"

LICENSE="GPL-3"
SLOT="0"

DEPEND="sys-apps/file"
RDEPEND="${DEPEND}"

EGIT_REPO_URI="https://gitlab.com/libre_hackerman/slauncher.git"

src_install() {
	mkdir -p "${ED}/usr/bin"
	emake PREFIX="${ED}/usr" install
}
