package controllers

func (this *MainController) GetPedidoVenda() {
	this.activeContent("faturamento/index")
	this.Data["Title"] = "Pedido de Venda"
	this.Data["Message"] = "Essa é a rota para a página 'Pedido de Venda'."
}

func (this *MainController) GetEspelhoPedido() {
	this.activeContent("faturamento/index")
	this.Data["Title"] = "Espelho do Pedido"
	this.Data["Message"] = "Essa é a rota para a página 'Espelho do Pedido'."
}

func (this *MainController) GetStatusPedidosCompanny() {
	this.activeContent("faturamento/index")
	this.Data["Title"] = "Status Pedidos Companny"
	this.Data["Message"] = "Essa é a rota para a página 'Status Pedidos Companny'."
}

func (this *MainController) GetProcessamentoBarra() {
	this.activeContent("faturamento/index")
	this.Data["Title"] = "Processamento Barra"
	this.Data["Message"] = "Essa é a rota para a página 'Processamento Barra'."
}
