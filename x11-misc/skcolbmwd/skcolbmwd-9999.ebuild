# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3 savedconfig

DESCRIPTION="i3blocks-like status bar generator for DWM"
HOMEPAGE="https://gitlab.com/libre_hackerman/skcolbmwd"

LICENSE="GPL-3"
SLOT="0"

DEPEND="x11-libs/libX11"
RDEPEND="${DEPEND}"

EGIT_REPO_URI="https://gitlab.com/libre_hackerman/${PN}.git"

src_prepare() {
	default
	restore_config config.h
}

src_install() {
	mkdir -p "${ED}/usr/bin"
	emake PREFIX="${ED}/usr" install

	save_config config.h
}
