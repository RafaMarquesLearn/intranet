<div class="container">
    <h1>Cadastro de Usuário</h1>
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
                <td>Nome:</td>
                <td><input name="first" type="text" autofocus /></td>
            </tr>
            <tr>
                <td>Sobrenome:</td>
                <td><input name="last" type="text" /></td>
            </tr>
            <tr>
                <td>Endereço de email:</td>
                <td><input name="email" type="text" /></td>
            </tr>
            <tr>      
                <td>Senha (precisa ter pelo menos 6 caracteres):</td>
                <td><input name="password" type="password" /></td>
            </tr>
            <tr>      
                <td>Confirme a senha:</td>
                <td><input name="password2" type="password" /></td>
            </tr>
            <tr><td>&nbsp;</td></tr>
            <tr>
                <td>&nbsp;</td><td><input type="submit" value="Cadastrar" /></td>
            </tr>
        </table>
    </form>
</div>