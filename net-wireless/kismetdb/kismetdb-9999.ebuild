# Copyright 2019-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..11} )
inherit distutils-r1

DESCRIPTION="Kismetdb database log helper library"
HOMEPAGE="https://kismetwireless.net/"
if [ "${PV}" = "9999" ]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/kismetwireless/python-kismet-db.git"
else
	SRC_URI="https://github.com/kismetwireless/python-kismet-db/archive/${PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="~amd64 ~x86"
	S="${WORKDIR}/python-kismet-db-${PV}"
fi

LICENSE="GPL-2"
SLOT="0"
IUSE=""

DEPEND="dev-python/python-dateutil[${PYTHON_USEDEP}]
	dev-python/simplekml[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"
BDEPEND=""
