<body>
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="{{ urlfor "MainController.Get" }}">Companny do Brasil</a>
            </div>
            {{if .InSession }}
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-left">
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                Faturamento
                                <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href={{ urlfor "MainController.GetPedidoVenda"}}>Pedido de Venda</a></li>
                                <li><a href={{ urlfor "MainController.GetEspelhoPedido"}}>Espelho do Pedido</a></li>
                                <li><a href={{ urlfor "MainController.GetStatusPedidosCompanny"}}>Status Pedidos Companny</a></li>
                                <li><a href={{ urlfor "MainController.GetProcessamentoBarra"}}>Processamento Barra</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                Compras
                                <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href={{ urlfor "MainController.GetPedidoCompra"}}>Pedido de Compra</a></li>
                                <li><a href={{ urlfor "MainController.GetAnaliseCusto"}}>Análise de Custo</a></li>
                                <li><a href={{ urlfor "MainController.GetEstoqueSeguranca"}}>Estoque de Segurança</a></li>
                                <li><a href={{ urlfor "MainController.GetDanfeOnline"}}>Danfe Online</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                Financeiro
                                <b class="caret"></b>
                            </a>
                        </li>
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                Estoque
                                <b class="caret"></b>
                            </a>
                        </li>
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                Gerencial
                                <b class="caret"></b>
                            </a>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li>Bem Vindo(a) {{ .First }}</li>
                        <li><a href="{{ urlfor "MainController.Profile" }}">Perfil</a></li>
                        <li><a href="{{ urlfor "MainController.Logout" }}">Sair</a></li>
                    </ul>
                </div>
            {{ else }}
                <ul class="nav navbar-nav navbar-right">
                    <li><a href={{ urlfor "MainController.Register" }}>Entrar</a></li>
                </ul>
            {{ end }}
        </div>
    </nav>
    <div class="jumbotron">
        <div class="container">
            <h1 class="logo">Companny do Brasil</h1>
        </div>
    </div>