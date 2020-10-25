# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit go-module

EGO_SUM=(
	"github.com/PuerkitoBio/goquery v1.5.1/go.mod"
	"github.com/alecthomas/assert v0.0.0-20170929043011-405dbfeb8e38"
	"github.com/alecthomas/assert v0.0.0-20170929043011-405dbfeb8e38/go.mod"
	"github.com/alecthomas/chroma v0.8.0"
	"github.com/alecthomas/chroma v0.8.0/go.mod"
	"github.com/alecthomas/colour v0.0.0-20160524082231-60882d9e2721"
	"github.com/alecthomas/colour v0.0.0-20160524082231-60882d9e2721/go.mod"
	"github.com/alecthomas/kong v0.2.4/go.mod"
	"github.com/alecthomas/repr v0.0.0-20180818092828-117648cd9897"
	"github.com/alecthomas/repr v0.0.0-20180818092828-117648cd9897/go.mod"
	"github.com/andybalholm/cascadia v1.1.0/go.mod"
	"github.com/danwakefield/fnmatch v0.0.0-20160403171240-cbb64ac3d964"
	"github.com/danwakefield/fnmatch v0.0.0-20160403171240-cbb64ac3d964/go.mod"
	"github.com/davecgh/go-spew v1.1.0/go.mod"
	"github.com/davecgh/go-spew v1.1.1"
	"github.com/davecgh/go-spew v1.1.1/go.mod"
	"github.com/disintegration/imaging v1.6.2"
	"github.com/disintegration/imaging v1.6.2/go.mod"
	"github.com/dlclark/regexp2 v1.2.0"
	"github.com/dlclark/regexp2 v1.2.0/go.mod"
	"github.com/gabriel-vasile/mimetype v1.1.1"
	"github.com/gabriel-vasile/mimetype v1.1.1/go.mod"
	"github.com/gdamore/encoding v1.0.0"
	"github.com/gdamore/encoding v1.0.0/go.mod"
	"github.com/gorilla/mux v1.7.4/go.mod"
	"github.com/kyokomi/emoji v2.2.2+incompatible"
	"github.com/kyokomi/emoji v2.2.2+incompatible/go.mod"
	"github.com/lib/pq v1.7.0"
	"github.com/lib/pq v1.7.0/go.mod"
	"github.com/lithammer/fuzzysearch v1.1.0"
	"github.com/lithammer/fuzzysearch v1.1.0/go.mod"
	"github.com/lucasb-eyer/go-colorful v1.0.3"
	"github.com/lucasb-eyer/go-colorful v1.0.3/go.mod"
	"github.com/mattn/go-colorable v0.1.6/go.mod"
	"github.com/mattn/go-isatty v0.0.12"
	"github.com/mattn/go-isatty v0.0.12/go.mod"
	"github.com/mattn/go-runewidth v0.0.9"
	"github.com/mattn/go-runewidth v0.0.9/go.mod"
	"github.com/mattn/go-sqlite3 v1.14.0"
	"github.com/mattn/go-sqlite3 v1.14.0/go.mod"
	"github.com/nu7hatch/gouuid v0.0.0-20131221200532-179d4d0c4d8d"
	"github.com/nu7hatch/gouuid v0.0.0-20131221200532-179d4d0c4d8d/go.mod"
	"github.com/petermattis/goid v0.0.0-20180202154549-b0b1615b78e5"
	"github.com/petermattis/goid v0.0.0-20180202154549-b0b1615b78e5/go.mod"
	"github.com/pkg/errors v0.8.1/go.mod"
	"github.com/pkg/errors v0.9.1"
	"github.com/pkg/errors v0.9.1/go.mod"
	"github.com/pmezard/go-difflib v1.0.0"
	"github.com/pmezard/go-difflib v1.0.0/go.mod"
	"github.com/rivo/uniseg v0.1.0"
	"github.com/rivo/uniseg v0.1.0/go.mod"
	"github.com/russross/blackfriday/v2 v2.0.1"
	"github.com/russross/blackfriday/v2 v2.0.1/go.mod"
	"github.com/sasha-s/go-deadlock v0.2.0"
	"github.com/sasha-s/go-deadlock v0.2.0/go.mod"
	"github.com/sergi/go-diff v1.0.0"
	"github.com/sergi/go-diff v1.0.0/go.mod"
	"github.com/shurcooL/sanitized_anchor_name v1.0.0"
	"github.com/shurcooL/sanitized_anchor_name v1.0.0/go.mod"
	"github.com/stretchr/objx v0.1.0"
	"github.com/stretchr/objx v0.1.0/go.mod"
	"github.com/stretchr/testify v1.2.2/go.mod"
	"github.com/stretchr/testify v1.3.0/go.mod"
	"github.com/stretchr/testify v1.6.1"
	"github.com/stretchr/testify v1.6.1/go.mod"
	"github.com/tidwall/gjson v1.6.0"
	"github.com/tidwall/gjson v1.6.0/go.mod"
	"github.com/tidwall/match v1.0.1"
	"github.com/tidwall/match v1.0.1/go.mod"
	"github.com/tidwall/pretty v1.0.0/go.mod"
	"github.com/tidwall/pretty v1.0.1"
	"github.com/tidwall/pretty v1.0.1/go.mod"
	"github.com/tidwall/sjson v1.1.1"
	"github.com/tidwall/sjson v1.1.1/go.mod"
	"github.com/zyedidia/clipboard v0.0.0-20200421031010-7c45b8673834"
	"github.com/zyedidia/clipboard v0.0.0-20200421031010-7c45b8673834/go.mod"
	"github.com/zyedidia/poller v1.0.1"
	"github.com/zyedidia/poller v1.0.1/go.mod"
	"go.etcd.io/bbolt v1.3.4"
	"go.etcd.io/bbolt v1.3.4/go.mod"
	"golang.org/x/crypto v0.0.0-20190308221718-c2843e01d9a2"
	"golang.org/x/crypto v0.0.0-20190308221718-c2843e01d9a2/go.mod"
	"golang.org/x/crypto v0.0.0-20200622213623-75b288015ac9"
	"golang.org/x/crypto v0.0.0-20200622213623-75b288015ac9/go.mod"
	"golang.org/x/image v0.0.0-20191009234506-e7c1f5e7dbb8/go.mod"
	"golang.org/x/image v0.0.0-20200430140353-33d19683fad8"
	"golang.org/x/image v0.0.0-20200430140353-33d19683fad8/go.mod"
	"golang.org/x/net v0.0.0-20180218175443-cbe0f9307d01/go.mod"
	"golang.org/x/net v0.0.0-20190404232315-eb5bcb51f2a3/go.mod"
	"golang.org/x/net v0.0.0-20200202094626-16171245cfb2/go.mod"
	"golang.org/x/net v0.0.0-20200324143707-d3edc9973b7e/go.mod"
	"golang.org/x/net v0.0.0-20200602114024-627f9648deb9"
	"golang.org/x/net v0.0.0-20200602114024-627f9648deb9/go.mod"
	"golang.org/x/net v0.0.0-20200822124328-c89045814202"
	"golang.org/x/net v0.0.0-20200822124328-c89045814202/go.mod"
	"golang.org/x/sys v0.0.0-20190215142949-d0b11bdaac8a/go.mod"
	"golang.org/x/sys v0.0.0-20190412213103-97732733099d/go.mod"
	"golang.org/x/sys v0.0.0-20200116001909-b77594299b42/go.mod"
	"golang.org/x/sys v0.0.0-20200202164722-d101bd2416d5/go.mod"
	"golang.org/x/sys v0.0.0-20200223170610-d5e6a3e2c0ae/go.mod"
	"golang.org/x/sys v0.0.0-20200323222414-85ca7c5b95cd/go.mod"
	"golang.org/x/sys v0.0.0-20200413165638-669c56c373c4/go.mod"
	"golang.org/x/sys v0.0.0-20200501145240-bc7a7d42d5c3"
	"golang.org/x/sys v0.0.0-20200501145240-bc7a7d42d5c3/go.mod"
	"golang.org/x/text v0.3.0/go.mod"
	"golang.org/x/text v0.3.2"
	"golang.org/x/text v0.3.2/go.mod"
	"golang.org/x/tools v0.0.0-20180917221912-90fa682c2a6e/go.mod"
	"gopkg.in/check.v1 v0.0.0-20161208181325-20d25e280405"
	"gopkg.in/check.v1 v0.0.0-20161208181325-20d25e280405/go.mod"
	"gopkg.in/toast.v1 v1.0.0-20180812000517-0a84660828b2"
	"gopkg.in/toast.v1 v1.0.0-20180812000517-0a84660828b2/go.mod"
	"gopkg.in/vansante/go-ffprobe.v2 v2.0.2"
	"gopkg.in/vansante/go-ffprobe.v2 v2.0.2/go.mod"
	"gopkg.in/yaml.v2 v2.3.0"
	"gopkg.in/yaml.v2 v2.3.0/go.mod"
	"gopkg.in/yaml.v3 v3.0.0-20200313102051-9f266ea9e77c"
	"gopkg.in/yaml.v3 v3.0.0-20200313102051-9f266ea9e77c/go.mod"
	"maunium.net/go/maulogger/v2 v2.1.1/go.mod"
	"maunium.net/go/mautrix v0.7.6"
	"maunium.net/go/mautrix v0.7.6/go.mod"
	"maunium.net/go/mauview v0.1.1"
	"maunium.net/go/mauview v0.1.1/go.mod"
	"maunium.net/go/mauview v0.1.2"
	"maunium.net/go/mauview v0.1.2/go.mod"
	"maunium.net/go/tcell v0.2.0"
	"maunium.net/go/tcell v0.2.0/go.mod"
)

go-module_set_globals

DESCRIPTION="A terminal based Matrix client written in Go"
HOMEPAGE="https://github.com/tulir/gomuks"
SRC_URI="https://github.com/tulir/${PN}/archive/v${PV}.tar.gz
	${EGO_SUM_SRC_URI}"

LICENSE="AGPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+encryption"

DEPEND="encryption? ( dev-libs/olm )"
RDEPEND="${DEPEND}"
BDEPEND=""

src_compile() {
	use encryption || export CGO_ENABLED=0
	go build . || die "go build failed"
}

src_install() {
	dobin ${PN}
}
