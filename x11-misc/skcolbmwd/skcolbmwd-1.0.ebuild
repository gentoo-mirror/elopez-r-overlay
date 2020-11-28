# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit savedconfig

DESCRIPTION="i3blocks-like status bar generator for DWM"
HOMEPAGE="https://gitlab.com/libre_hackerman/skcolbmwd"
SRC_URI="https://gitlab.com/libre_hackerman/${PN}/-/archive/v${PV}/${PN}-v${PV}.tar.gz"

LICENSE="GPL-3"
SLOT="0"

DEPEND="x11-libs/libX11"
RDEPEND="${DEPEND}"

S="${WORKDIR}/${PN}-v${PV}"

src_prepare() {
	default
	restore_config config.h
}

src_install() {
	mkdir -p "${ED}/usr/bin"
	emake PREFIX="${ED}/usr" install

	save_config config.h
}
