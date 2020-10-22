<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sobreNos.aspx.cs" Inherits="sobreNos" %>

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
            <p>Somos um grupo de estudantes de informática da Escola Técnica
                Professor Everardo Passos (ETEP), conhecidos como Iluminix. O grupo foi
                criado em 2018 e, embora passou por dificuldades e várias mudanças, ele se
                mantém forte e unido até hoje. Atualmente, o grupo é formado por Amaury
                Pereira, Beatriz Pinheiro, Raquel Augusto e Sarah Antunes.
                Trabalhamos em equipe para desenvolver o jogo na linguagem Python,
                seu site oficial em HTML/C# e toda a documentação necessária, tendo os
                melhores resultados possíveis. Temos muito orgulho de trabalhar juntos!</p>
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
