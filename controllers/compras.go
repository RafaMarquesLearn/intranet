package controllers

func (this *MainController) GetPedidoCompra() {
	this.activeContent("compras/index")
	this.Data["Title"] = "Pedido de Compra"
	this.Data["Message"] = "Essa é a rota para a página 'Pedido de Compra'."
}

func (this *MainController) GetAnaliseCusto() {
	this.activeContent("compras/index")
	this.Data["Title"] = "Análise de Custo"
	this.Data["Message"] = "Essa é a rota para a página 'Análise de Custo'."
}

func (this *MainController) GetEstoqueSeguranca() {
	this.activeContent("compras/index")
	this.Data["Title"] = "Estoque de Segurança"
	this.Data["Message"] = "Essa é a rota para a página 'Estoque de Segurança'."
}

func (this *MainController) GetDanfeOnline() {
	this.activeContent("compras/index")
	this.Data["Title"] = "Danfe Online"
	this.Data["Message"] = "Essa é a rota para a página 'Danfe Online'."
}
