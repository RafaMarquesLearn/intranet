<div id="content">
    <h1>Excluir Usuário</h1>
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
    <p><font size="3">Atenção: todos os dados relacionados serão perdidos. Deseja prosseguir?</font></p>
    <form method="POST">
        <table>
            <tr>      
                <td>Senha:</td>
                <td><input name="current" type="password" /></td>
            </tr>
            <tr><td>&nbsp;</td></tr>
            <tr>
                <td>&nbsp;</td><td><input type="submit" value="Excluir" /></td><td><a href={{ urlfor "MainController" }}>Cancelar</a></td>
            </tr>
        </table>
    </form>
</div>