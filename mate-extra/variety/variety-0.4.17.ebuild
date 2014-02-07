# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

PYTHON_COMPAT=( python2_{6,7} )
DISTUTILS_SINGLE_IMPL="1"

inherit distutils-r1

DESCRIPTION="Wallpaper changer for gnome2, unity and MATE"
HOMEPAGE="http://peterlevi.com/variety/"
SRC_URI="https://launchpad.net/${PN}/trunk/${PV}/+download/${PN}_${PV}.tar.gz"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-python/python-distutils-extra[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}
	${PYTHON_DEPS}
	x11-libs/gtk+:3[introspection]
	>=x11-libs/libnotify-0.7[introspection]
	dev-python/configobj[${PYTHON_USEDEP}]
	dev-python/pycurl[${PYTHON_USEDEP}]
	dev-python/dbus-python[${PYTHON_USEDEP}]
	x11-libs/pango[introspection]
	>=dev-libs/glib-2
	virtual/python-imaging[${PYTHON_USEDEP}]
	dev-python/pycairo[${PYTHON_USEDEP}]
	dev-python/beautifulsoup:4[${PYTHON_USEDEP}]
	net-libs/webkit-gtk:3[introspection]
	gnome-extra/yelp
	media-gfx/imagemagick
	dev-python/pyexiv2
	dev-python/lxml[${PYTHON_USEDEP}]"

S="${WORKDIR}/${PN}"
