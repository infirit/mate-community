# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
GCONF_DEBUG="no"

inherit mate

DESCRIPTION="A set of MATE themes, with sets for users with limited or low vision"
HOMEPAGE="https://github.com/NiceandGently/mate-themes-extras-2"
SRC_URI="https://github.com/NiceandGently/mate-themes-extras-2/archive/v${PV}.tar.gz -> mate-themes-extras2-${PV}.tar.gz"
LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE=""

RDEPEND=">=x11-libs/gtk+-2:2
	!!=x11-libs/gtk+-3.6
	!!=x11-libs/gtk+-3.8
	>=x11-themes/gtk-engines-2.15.3:2
	x11-themes/gtk-engines-xfce:0
	x11-themes/murrine-themes"

DEPEND="${RDEPEND}
	>=app-text/mate-doc-utils-1.2.1
	>=x11-misc/icon-naming-utils-0.8.7
	virtual/pkgconfig
	>=dev-util/intltool-0.35
	sys-devel/gettext"

RESTRICT="binchecks strip"

S="${WORKDIR}/mate-themes-extras-2-${PV}"

src_configure() {
	DOCS="AUTHORS ChangeLog NEWS README"

	mate_src_configure \
		--enable-icon-mapping \
		--enable-Adwaita-Cupertino-SL \
		--enable-AmbianceBlue \
		--enable-Ambiance-Xfce-LXDE-MATE \
		--enable-Cologne \
		--enable-drakfire-dream-black \
		--enable-GnomishDark \
		--enable-RadianceBlue \
		--enable-Radiance-Xfce-LXDE-MATE \
		--enable-Smoothly \
		--enable-Smoothly-Black \
		--enable-Sonar \
		--enable-SonarBlue \
		--enable-Zukitwo \
		--enable-Zukitwo-Dark \
		--enable-Zukitwo-Dust \
		--enable-Zukitwo-Brave \
		--enable-Zukitwo-Human \
		--enable-Zukitwo-Illustrious \
		--enable-Zukitwo-Noble \
		--enable-Zukitwo-Wine \
		--enable-Zukitwo-Wise \
		--enable-Zukitwo-Colors \
		--enable-Sonar-Icons
}
