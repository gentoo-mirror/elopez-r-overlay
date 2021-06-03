# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3

DESCRIPTION="Daemon for battery charge notifications"
HOMEPAGE="https://gitlab.com/libre_hackerman/batteryd"

LICENSE="GPL-3"
SLOT="0"

DEPEND="dev-util/pkgconf
x11-libs/libnotify"
RDEPEND="${DEPEND}"

EGIT_REPO_URI="https://gitlab.com/libre_hackerman/batteryd.git"

src_install() {
	mkdir -p "${ED}/usr/bin"
	emake PREFIX="${ED}/usr" install
}
