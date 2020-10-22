<%@ Page Language="C#" AutoEventWireup="true" CodeFile="avaliacao.aspx.cs" Inherits="avaliacao" %>

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
            margin-left: 104px;
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
&nbsp;
             Nome:&nbsp; <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
         </p>
         <p>
             &nbsp; Sobrenome: &nbsp;<asp:TextBox ID="txtSobrenome" runat="server"></asp:TextBox>
         </p>
         <p>
             &nbsp; Data de Nascimento: &nbsp;<asp:TextBox ID="txtDataNasc" runat="server"></asp:TextBox>
         </p>
         <p>
             &nbsp; Gênero:&nbsp;
                 <asp:RadioButtonList ID="rblGenero" runat="server" Width="257px" AutoPostBack="True" CssClass="auto-style1">
                 <asp:ListItem Value="h">Masculino</asp:ListItem>
                 <asp:ListItem Value="m">Feminino </asp:ListItem>
                 <asp:ListItem Value="nb">Não Binário</asp:ListItem>
             </asp:RadioButtonList>
                                                                                                 </p>
         <p>
             &nbsp;<asp:Button ID="btnNext" runat="server" OnClick="btnNext_Click" Text="PRÓXIMO" />
             <asp:SqlDataSource ID="sqlCadastroUsuario" runat="server" ConnectionString="<%$ ConnectionStrings:siteshivasmazeConnectionString2 %>" InsertCommand="INSERT INTO dadosusuario(nome_usu, sobrenome_usu, dtnasc_usu, genero_usu) VALUES (@NOME, @SOBRENOME, @DATANASC, @GENERO)" ProviderName="<%$ ConnectionStrings:siteshivasmazeConnectionString2.ProviderName %>" SelectCommand="select max(id_usu) as UltUSu from dadosusuario">
                 <InsertParameters>
                     <asp:ControlParameter ControlID="txtNome" Name="NOME" PropertyName="Text" />
                     <asp:ControlParameter ControlID="txtSobrenome" Name="SOBRENOME" PropertyName="Text" />
                     <asp:Parameter Name="DATANASC" />
                     <asp:ControlParameter ControlID="rblGenero" Name="GENERO" PropertyName="SelectedValue" />
                 </InsertParameters>
             </asp:SqlDataSource>
                                                                                                 </p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </form>
</body>
</html>
