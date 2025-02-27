module github.com/free5gc/ausf

go 1.14

require (
	github.com/antihax/optional v1.0.0
	github.com/antonfisher/nested-logrus-formatter v1.3.0
	github.com/bronze1man/radius v0.0.0-20190516032554-afd8baec892d
	github.com/cpuguy83/go-md2man/v2 v2.0.0 // indirect
	github.com/free5gc/UeauCommon v1.0.0
	github.com/free5gc/http2_util v1.0.0
	github.com/free5gc/http_wrapper v1.0.0
	github.com/free5gc/logger_conf v1.0.0
	github.com/free5gc/logger_util v1.0.0
	github.com/free5gc/openapi v1.0.0
	github.com/free5gc/path_util v1.0.0
	github.com/free5gc/version v1.0.0
	github.com/gin-gonic/gin v1.6.3
	github.com/google/gopacket v1.1.19
	github.com/google/uuid v1.1.2
	github.com/russross/blackfriday/v2 v2.1.0 // indirect
	github.com/sirupsen/logrus v1.7.0
	github.com/urfave/cli v1.22.5
	gopkg.in/yaml.v2 v2.4.0
)

replace (
	github.com/free5gc/openapi v1.0.0 => /home/jay/thesis/openapi
)
