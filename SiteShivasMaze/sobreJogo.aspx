<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sobreJogo.aspx.cs" Inherits="sobreJogo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" type="text/css" href="./assets/css/main.css">
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="shortcut icon" type="image/png" href="assets/img/imagemLogo0.png"/>
	<title> Shiva's Maze </title>
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

    <br></br>

    <div class="col-100">
        <div class="content texto-destaque">
            <h1>Um pouco mais sobre...</h1>
            <p>Shiva’s Maze é um jogo eletrônico baseado no clássico dos anos 1980,
                “Pac-Man”, desenvolvido por Toru Iwatani. Esse remake visa criar um ambiente
                mais confortável ao público infanto-juvenil devido aos seus personagens
                coloridos e mapa recreativo.
                A protagonista, Shiva, é uma ave avermelhada que foi capturada por três
                abutres famintos, cada um diferenciado por suas cores. O objetivo é que Shiva
                capture todas as sementes espalhadas pelo mapa para escapar das garras de
                seus sequestradores. Caso ela seja pega por um dos abutres, fim de jogo.
                A gameplay dá suporte tanto para joystick, seja este de PS ou XBOX,
                quando para as setas do teclado, o que dá um ar de atualidade e deixa o
                usuário livre para escolher qual forma é mais confortável para jogar. Além
                disso, o público também é convidado para avaliar a versão beta exposto na
                feira ExpoETEP em nossa aba de “Avaliação”.
                Então, o que está esperando? Ajude Shiva a alcançar sua liberdade!</p>
        </div>
    </div>

    <br></br>

    <div class="rodape">
        <ul>
            <p>Site realizado pelo grupo Iluminix com os integrantes Amaury, Beatriz, Raquel e Sarah da Turma: 4IA</p>
        </ul>
    </div>

    </form>
</body>
</html>
