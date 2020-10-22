<%@ Page Language="C#" AutoEventWireup="true" CodeFile="pesquisar.aspx.cs" Inherits="pesquisar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" type="text/css" href="./assets/css/main.css"/>
	<link rel="stylesheet" href="assets/css/bootstrap.min.css"/>
    <link rel="shortcut icon" type="image/png" href="assets/img/imagemLogo0.png"/>
	<title> Shiva's Maze</title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 80px;
        }
    </style>
</head>
<body>
       <form runat="server">
       <header class="menu-principal">
        <main>
            <div class="header-1">
                <div class="logo">
                    <img src="./assets/img/logoSite.png" />
                </div>

                <div class="redes-sociais">
                    <ul>
                        <li> <a href=""><img src="./assets/img/LogoOfc.png"></a></li>
                    </ul>
                </div>
            </div>
        </main>
    </header>
    <main class="col-100 menu-urls">
        <div class="header-2">
            <div class="menu">
                <ul>
                    <li>
                        <a href="home.aspx">Home</a>
                    </li>
                    <li>
                        <a href="sobreJogo.aspx">Sobre o Jogo</a>
                    </li>
                    <li>
                        <a href="sobreNos.aspx">Sobre Nós</a>
                    </li>
                    <li>
                        <a href="avaliacao.aspx">Avaliação</a>
                    </li>
                    <li>
                        <a href="pesquisar.aspx">Pesquisar</a>
                    </li>
                </ul>
            </div>
        </div>
    </main>
    <p>
        &nbsp;</p>
    <p>
        Digite o Nome do Usuário:&nbsp;
        &nbsp;
        <asp:TextBox ID="txtPesq" runat="server"></asp:TextBox>
&nbsp;&nbsp;
        <asp:Button ID="btnOk" runat="server" OnClick="btnOk_Click" Text="OK" />
    </p>
    
           <div class="auto-style1">
               <asp:GridView ID="gvExibir" runat="server" AutoGenerateColumns="False" DataKeyNames="id_aval" DataSourceID="sqlPesquisar">
                   <Columns>
                       <asp:TemplateField>
                           <ItemTemplate>
                               <asp:CheckBox ID="chkOP" runat="server" />
                           </ItemTemplate>
                       </asp:TemplateField>
                       <asp:BoundField DataField="id_aval" HeaderText="Código" InsertVisible="False" ReadOnly="True" SortExpression="id_aval" />
                       <asp:BoundField DataField="nome_usu" HeaderText="Usuário" SortExpression="nome_usu" />
                       <asp:BoundField DataField="notaJogabilidade" HeaderText="Jogabilidade" SortExpression="notaJogabilidade" />
                       <asp:BoundField DataField="notaControles" HeaderText="Controles" SortExpression="notaControles" />
                       <asp:BoundField DataField="notaMapa" HeaderText="Mapa" SortExpression="notaMapa" />
                       <asp:BoundField DataField="notaPersonagens" HeaderText="Personagens" SortExpression="notaPersonagens" />
                       <asp:BoundField DataField="notaGrafico" HeaderText="Grafico" SortExpression="notaGrafico" />
                       <asp:BoundField DataField="notaRecomendacao" HeaderText="Recomendacao" SortExpression="notaRecomendacao" />
                   </Columns>
               </asp:GridView>
           </div>
    
    <p>
        <asp:SqlDataSource ID="sqlPesquisar" runat="server" ConnectionString="<%$ ConnectionStrings:siteshivasmazeConnectionString2 %>" ProviderName="<%$ ConnectionStrings:siteshivasmazeConnectionString2.ProviderName %>" SelectCommand="SELECT avaliacao.id_aval, avaliacao.notaJogabilidade, avaliacao.notaControles, avaliacao.notaMapa, avaliacao.notaPersonagens, avaliacao.notaGrafico, avaliacao.notaRecomendacao, dadosusuario.nome_usu FROM avaliacao INNER JOIN dadosusuario ON avaliacao.id_usu = dadosusuario.id_usu WHERE (dadosusuario.nome_usu LIKE @NOME)">
            <SelectParameters>
                <asp:Parameter Name="NOME" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
           <asp:SqlDataSource ID="sqlExcluir" runat="server" ConnectionString="<%$ ConnectionStrings:siteshivasmazeConnectionString2 %>" DeleteCommand="DELETE FROM avaliacao WHERE (id_aval = @IDAVALIACAO)" ProviderName="<%$ ConnectionStrings:siteshivasmazeConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM avaliacao">
               <DeleteParameters>
                   <asp:Parameter Name="IDAVALIACAO" />
               </DeleteParameters>
           </asp:SqlDataSource>
           <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Button ID="btnExcluir" runat="server" OnClick="btnExcluir_Click" Text="EXCLUIR" />
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
