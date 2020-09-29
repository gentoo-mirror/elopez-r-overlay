# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="fbcat takes a screenshot using the Linux framebuffer device"
HOMEPAGE="http://jwilk.net/software/fbcat"
SRC_URI="https://github.com/jwilk/${PN}/archive/${PV}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
IUSE="+doc +fbgrab"
KEYWORDS="~amd64 ~x86"

DEPEND="
fbgrab?
(
	!media-gfx/fbgrab
	media-gfx/imagemagick
	sys-apps/kbd
)
doc?
(
	dev-libs/libxslt
	app-text/docbook-xsl-stylesheets
)"
RDEPEND="${DEPEND}"

src_compile() {
	emake
	use doc && emake -C doc
}

src_install() {
	dobin fbcat
	use fbgrab && dobin fbgrab
	if use doc; then
		doman doc/fbcat.1
		use fbgrab && doman doc/fbgrab.1
	fi
}
