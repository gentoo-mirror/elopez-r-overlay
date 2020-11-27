# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit meson

DESCRIPTION="Pulseaudio LADSPA Equalizer"
HOMEPAGE="https://github.com/pulseaudio-equalizer-ladspa/equalizer"
SRC_URI="https://github.com/${PN}/equalizer/archive/v${PV}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="dev-python/pygobject
x11-libs/gtk+
media-plugins/swh-plugins
media-sound/pulseaudio
sys-devel/bc"
RDEPEND="${DEPEND}"

S="${WORKDIR}/equalizer-${PV}"
