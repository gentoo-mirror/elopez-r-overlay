# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit meson

DESCRIPTION="D-Bus service to access fingerprint readers"
HOMEPAGE="https://gitlab.freedesktop.org/libfprint/fprintd"
SRC_URI="https://gitlab.freedesktop.org/libfprint/fprintd/-/archive/1.90.1/fprintd-1.90.1.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-libs/libgusb
sys-auth/libfprint
sys-auth/pam_wrapper
dev-python/dbusmock
dev-python/dbus-python"
RDEPEND="${DEPEND}"
BDEPEND=""

src_configure() {
	meson_src_configure
}
