package routers

import (
	"github.com/RafaMarquesLearn/intranet/controllers"
	"github.com/astaxie/beego"
)

func init() {
	beego.Router("/compras/pedido-compra", &controllers.MainController{}, "get:GetPedidoCompra")
	beego.Router("/compras/analise-custo", &controllers.MainController{}, "get:GetAnaliseCusto")
	beego.Router("/compras/estoque-seguranca", &controllers.MainController{}, "get:GetEstoqueSeguranca")
	beego.Router("/compras/danfe-online", &controllers.MainController{}, "get:GetDanfeOnline")
}
