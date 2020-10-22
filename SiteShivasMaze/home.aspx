<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="home.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="./assets/css/main.css"/>
	<link rel="stylesheet" href="assets/css/bootstrap.min.css"/>
    <link rel="shortcut icon" type="image/png" href="assets/img/imagemLogo0.png"/>
	<title> Shiva's Maze </title>
</head>
<body>
    <form  runat="server">
    

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
						<a href="avaliacao.aspx ">Avaliação</a>
					</li>
                    <li>
                        <a href="pesquisar.aspx">Pesquisar</a>
                    </li>
				</ul>
			</div>
		</div>

	</main>

	<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
		<ol class="carousel-indicators">
		  <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
		  <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
		  <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
		  <div class="carousel-item active">
			<img class="d-block w-100" src="./assets/img/slide/shivamazegame_print2.png" class="d-block w-100" alt="Propaganda 001"/>
		  </div>
		  <div class="carousel-item">
			<img class="d-block w-100" src="./assets/img/slide/shivamazegame_print3.png" class="d-block w-100" alt="Propaganda 002"/>
		  </div>
		  <div class="carousel-item">
			<img class="d-block w-100" src="./assets/img/slide/slide.png" class="d-block w-100" alt="Propaganda 003"/>
		  </div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
		  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		  <span class="sr-only">Previous</span>
		</a>
		<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
		  <span class="carousel-control-next-icon" aria-hidden="true"></span>
		  <span class="sr-only">Next</span>
		</a>
	  </div>


	  <script src="assets/js/jquery-3.3.1.slim.min.js"></script>
	  <script src="assets/js/popper.min.js"></script>
	  <script src="assets/js/bootstrap.min.js"></script>
  
	  <script>
			  $('.carousel').carousel()
	  </script>


	<br></br>
	<br></br>

	<div class="col-100">
		<div class="content texto-destaque">
			<h1>O Shiva's Maze</h1>
			<p>Seja bem-vindo(a)(e)! Estamos todos empolgados com sua presença
				aqui! E aí já testou nosso mais novo jogo, Shiva’s Maze? Não? Vá logo
				experimentar; é uma experiência única! Sim? Então está no lugar certo.
				Venha conferir as abas “O Jogo” para saber mais sobre o processo de
				criação e a história por trás, “Sobre Nós” para conhecer as mentes por trás do
				processo de criação e “Avaliação” para nos contar sua experiência com a
				versão beta de nosso jogo. Agradecemos seu carinho!</p>
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
