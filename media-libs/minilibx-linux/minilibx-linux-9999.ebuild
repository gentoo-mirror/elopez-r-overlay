# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3

DESCRIPTION="A simple X-Window (X11R6) programming API in C"
HOMEPAGE="https://github.com/42Paris/minilibx-linux"
EGIT_REPO_URI="https://github.com/42Paris/${PN}.git"

LICENSE="all-rights-reserved"
SLOT="0"
IUSE=""

DEPEND="sys-devel/make
x11-libs/libX11
x11-libs/libXext
dev-libs/libbsd"
RDEPEND="${DEPEND}"
BDEPEND=""

src_install() {
	doheader mlx.h
	dolib.a libmlx.a
	doman man/man1/*
}
