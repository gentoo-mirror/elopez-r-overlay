# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_8 python3_9 )

inherit meson python-single-r1

DESCRIPTION="D-Bus service to access fingerprint readers"
HOMEPAGE="https://gitlab.freedesktop.org/libfprint/fprintd"
SRC_URI="https://gitlab.freedesktop.org/libfprint/${PN}/-/archive/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
REQUIRED_USE="${PYTHON_REQUIRED_USE}"

DEPEND="dev-libs/libgusb
dev-libs/dbus-glib
sys-auth/libfprint
sys-libs/pam_wrapper
sys-apps/dbus
${PYTHON_DEPS} $(python_gen_cond_dep '
dev-python/dbusmock[${PYTHON_USEDEP}]
dev-python/dbus-python[${PYTHON_USEDEP}]
dev-python/pycairo[${PYTHON_USEDEP}]')"
RDEPEND="${DEPEND}"
