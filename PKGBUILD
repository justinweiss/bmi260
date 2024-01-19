# Maintainer: Justin Weiss <justin@justinweiss.com>
_pkgbase=bmi260
pkgname=${_pkgbase}-dkms-git
pkgver=r2.62aca86
pkgrel=1
pkgdesc="Driver for the Bosch BMI260 IMU"
arch=(any)
url="https://github.com/justinweiss/bmi260"
license=('GPL2')
depends=(dkms)
makedepends=(git)
provides=("bmi260=${pkgver}-${pkgrel}")
source=(git+"${url}".git
	'dkms.conf')
sha256sums=('SKIP'
            'a7234c31281bb83c382a1d94b4d8843a55d681c6b894d033b2840d008ba84606')

pkgver() {
	cd "$srcdir/${_pkgbase}"
	printf "r%s.%s" "$(git rev-list --count HEAD)" "$(git rev-parse --short HEAD)"
}

package() {
	install -Dm644 dkms.conf "${pkgdir}"/usr/src/${_pkgbase}-${pkgver}/dkms.conf
	cd "${srcdir}"/"${_pkgbase}"

	# Set name and version
	sed -e "s/@_PKGBASE@/${_pkgbase}/" \
	    -e "s/@PKGVER@/${pkgver}/" \
	    -i "${pkgdir}"/usr/src/${_pkgbase}-${pkgver}/dkms.conf

	cp -r *.{c,h} Makefile "${pkgdir}"/usr/src/${_pkgbase}-${pkgver}/
}
