# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit meson

DESCRIPTION="D-Bus service to access fingerprint readers"
HOMEPAGE="https://gitlab.freedesktop.org/libfprint/fprintd"
SRC_URI="https://gitlab.freedesktop.org/libfprint/${PN}/-/archive/v${PV}/${PN}-v${PV}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="dev-libs/libgusb
sys-auth/libfprint
sys-libs/pam_wrapper
dev-python/dbusmock
dev-python/dbus-python"
RDEPEND="${DEPEND}"
BDEPEND=""

S="${WORKDIR}/${PN}-v${PV}"
