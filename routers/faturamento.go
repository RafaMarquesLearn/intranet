package routers

import (
	"github.com/RafaMarquesLearn/intranet/controllers"
	"github.com/astaxie/beego"
)

func init() {
	beego.Router("/faturamento/pedido-venda", &controllers.MainController{}, "get:GetPedidoVenda")
	beego.Router("/faturamento/espelho-pedido", &controllers.MainController{}, "get:GetEspelhoPedido")
	beego.Router("/faturamento/status-pedidos-company", &controllers.MainController{}, "get:GetStatusPedidosCompanny")
	beego.Router("/faturamento/processamento-barra", &controllers.MainController{}, "get:GetProcessamentoBarra")
}
