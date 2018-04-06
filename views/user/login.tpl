<div class="container">
    <h1>Please login</h1>
    &nbsp;
    {{if .flash.error}}
        <h3>{{.flash.error}}</h3>
        &nbsp;
    {{end}}
    {{if .Errors}}
        {{range $rec := .Errors}}
            <h3>{{$rec}}</h3>
        {{end}}
        &nbsp;
    {{end}}
    <form method="POST">
        <table>
            <tr>
                <td>Endereço de Email:</td>
                <td><input name="email" type="text" autofocus /></td>
            </tr>
            <tr>      
                <td>Senha:</td>
                <td><input name="password" type="password" /></td>
            </tr>
            <tr><td>&nbsp;</td></tr>
            <tr>
                <td>&nbsp;</td><td><input type="submit" value="Entrar" /></td><td>Primeira vez? Cadastre-se <a href={{ urlfor "MainController.Register" }}>aqui</a></td>
            </tr>
        </table>
    </form>
</div>