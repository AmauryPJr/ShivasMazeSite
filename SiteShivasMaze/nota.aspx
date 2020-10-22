<%@ Page Language="C#" AutoEventWireup="true" CodeFile="nota.aspx.cs" Inherits="nota" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" type="text/css" href="./assets/css/main.css">
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="shortcut icon" type="image/png" href="assets/img/imagemLogo0.png"/>
	<title> Shiva's Maze</title>
    <style type="text/css">
        .auto-style2 {
            margin-left: 80px;
        }
        .auto-style3 {
            margin-left: 400px;
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
                        <a href="pesquisar.aspx">Pesquisar</a>&nbsp;
                    </li>
                </ul>
            </div>
        </div>
    </main>
        <div class="auto-style3">
            <asp:Label ID="lblSucesso" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="Lime"></asp:Label>
            <br />
        </div>
        
        
        <p class="auto-style2">
        
        
        Jogabilidade:
        
        
        </p>
        
        
        <div class="auto-style2">
            <asp:RadioButtonList ID="rblJogabilidade" runat="server" AutoPostBack="True" RepeatDirection="Horizontal">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
            </asp:RadioButtonList>
        </div>
        
        <p>
            Controles:
        </p>
        
        <div class="auto-style2">
            <asp:RadioButtonList ID="rblControles" runat="server" AutoPostBack="True" RepeatDirection="Horizontal">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
            </asp:RadioButtonList>
        </div>
        
        <p>
            Mapa:
        </p>
        
        <div class="auto-style2">
            <asp:RadioButtonList ID="rblMapa" runat="server" AutoPostBack="True" RepeatDirection="Horizontal">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
            </asp:RadioButtonList>
        </div>
        
        <p>
            Personagens:
        </p>
        
        <div class="auto-style2">
            <asp:RadioButtonList ID="rblPersonagens" runat="server" AutoPostBack="True" RepeatDirection="Horizontal">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
            </asp:RadioButtonList>
        </div>
        
        <p>
            Gráfico:
        </p>
        
        <div class="auto-style2">
            <asp:RadioButtonList ID="rblGrafico" runat="server" AutoPostBack="True" RepeatDirection="Horizontal">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
            </asp:RadioButtonList>
        </div>
        
        <p>
            Recomendações:
        </p>
        
        <div class="auto-style2">
            <asp:RadioButtonList ID="rblRecomendacoes" runat="server" AutoPostBack="True" RepeatDirection="Horizontal">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
            </asp:RadioButtonList>
        </div>
        <p>
            <asp:Button ID="btnAvaliar" runat="server" OnClick="btnAvaliar_Click" Text="AVALIAR" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnHome" runat="server" OnClick="btnHome_Click" Text="HOME" Width="79px" />
            &nbsp;
        </p>
        <p>
            <asp:SqlDataSource ID="sqlAvaliar" runat="server" ConnectionString="<%$ ConnectionStrings:siteshivasmazeConnectionString2 %>" InsertCommand="INSERT INTO avaliacao(id_usu, notaJogabilidade, notaControles, notaMapa, notaPersonagens, notaGrafico, notaRecomendacao) VALUES (@IDUSUARIO, @JOGABILIDADE, @CONTROLES, @MAPA, @PERSONAGENS, @GRAFICO, @RECOMENDACOES)" ProviderName="<%$ ConnectionStrings:siteshivasmazeConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM avaliacao">
                <InsertParameters>
                    <asp:SessionParameter Name="IDUSUARIO" SessionField="idusuario" />
                    <asp:ControlParameter ControlID="rblJogabilidade" Name="JOGABILIDADE" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="rblControles" Name="CONTROLES" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="rblMapa" Name="MAPA" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="rblPersonagens" Name="PERSONAGENS" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="rblGrafico" Name="GRAFICO" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="rblRecomendacoes" Name="RECOMENDACOES" PropertyName="SelectedValue" />
                </InsertParameters>
            </asp:SqlDataSource>
        </p>
    </form>
</body>
</html>
