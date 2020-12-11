# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_8 python3_9 )

inherit meson python-r1

DESCRIPTION="Pulseaudio LADSPA Equalizer"
HOMEPAGE="https://github.com/pulseaudio-equalizer-ladspa/equalizer"
SRC_URI="https://github.com/${PN}/equalizer/archive/v${PV}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
REQUIRED_USE="${PYTHON_REQUIRED_USE}"

DEPEND="x11-libs/gtk+
media-plugins/swh-plugins
media-sound/pulseaudio
sys-devel/bc
${PYTHON_DEPS} $(python_gen_cond_dep '
dev-python/pygobject[${PYTHON_USEDEP}]')"
RDEPEND="${DEPEND}"

S="${WORKDIR}/equalizer-${PV}"
