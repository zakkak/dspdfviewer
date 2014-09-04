EAPI="5"

inherit eutils cmake-utils

DESCRIPTION="A dual-screen PDF viewer suitable for viewing slides generated by dev-tex/latex-beamer"
HOMEPAGE="https://github.com/dannyedel/dspdfviewer/"

SRC_URI="https://github.com/dannyedel/dspdfviewer/archive/v${PV}.zip -> ${P}.zip"
LICENSE="GPL-2"

SLOT="0"
KEYWORDS="~amd64"

RDEPEND="dev-qt/qtcore
dev-qt/qtgui
dev-libs/boost
app-text/poppler[qt4]"
DEPEND="${RDEPEND}"

src_configure() {
	local mycmakeargs=(
		"-DDSPDFVIEWER_VERSION=${PV}"
	)
	cmake-utils_src_configure
}

src_compile() {
	cmake-utils_src_compile
}
