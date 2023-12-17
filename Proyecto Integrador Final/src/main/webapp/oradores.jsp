<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Proyecto Integrador</title>
    <link rel="shortcut icon" href="./assets/img/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="./css/style.css">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Cabin&display=swap');
    </style>
</head>
<body>
    
    <header>
        <div class="logo">
        <img src="./assets/img/codoacodo.png" alt="Logo de Codo a Codo">
        <h3 class="titulo">Conf Bs As</h3>
        </div>

        <nav>
        <a class="active" href="#">La conferencia</a>
        <a href="#oradores">Los oradores</a>
        <a href="#lugar">El lugar y la fecha</a>
        <a href="#conviertete-en-orador">Convi�rtete en orador</a>
        <a href="./pages/tickets.html" id="ticket">Comprar tickets</a>
        </nav>
        
    </header>

    <main>
        <section class="principal">
        <div class="container">
                <div class="wrapper">
            <img id="slide" src="./assets/img/ba1.jpg" alt="Imagen del Museo Argentino del Agua y de la Historia Sanitaria">
            <img id="slide" src="./assets/img/ba2.jpg" alt="Imagen del Edificio de la Agencia de Viajes Vinzamo Tour (Leto.uz)">
            <img id="slide" src="./assets/img/ba3.jpg" alt="Imagen del Obelisco Argentino">
                </div>

                <div class="slider-nav">    
                    <a href="#slide-1"></a>
                    <a href="#slide-2"></a>
                    <a href="#slide-3"></a>
                </div>
            

            <div class="content-principal">
            <h1>Conf Bs As</h1>
            <p>Bs As llega por primera vez a Argentina. Un evento para compartir con<br>nuestra comunidad el conocimiento y experiencia de los expertos que<br>est�n creando el futuro de Internet. Ven a conocer a miembros del<br>evento, a otros estudiantes de Codo a Codo y los oradores de primer<br>nivel que tenemos para ti. Te esperamos!</p>
            <a href="#conviertete-en-orador">Quiero ser Orador</a>
            <a class="btn-color" href="./pages/tickets.html">Comprar Tickets</a>
            </div>
        </div>

        </section>

        <section id="oradores">
            <h5>CONOCE A LOS</h5>
            <h2>ORADORES</h2>

        <div class="site-container">
            <div class="article-container">
            <article class="article-card">
                    <figure class="article-image">
            <img src="./assets/img/steve.jpg" alt="Imagen de Steve Jobs">
                    </figure>
                    <div class="article-content">
                        <a class="card-category1" href="#oradores">JavaScript</a>
                        <a class="card-category2" href="#oradores">React</a>
            <h3 class="card-title">Steve Jobs</h3>
            <p class="card-excerpt">Lorem ipsum dolor sit amet, consectetur adipisicing elit.<br> Odit delectus in exercitationem qui similique nam consequuntur officiis<br> sapiente eaque voluptas eum vitae, dolorem possimus cupiditate<br> necessitatibus perspiciatis ducimus soluta? Tempora!</p>
            </div>
             </article>

             <article class="article-card">
                <figure class="article-image">
        <img src="./assets/img/bill.jpg" alt="Imagen de Bill Gates">
                </figure>
                <div class="article-content">
                    <a class="card-category1" href="#oradores">JavaScript</a>
                        <a class="card-category2" href="#oradores">React</a>
        <h3 class="card-title">Bill Gates</h3>
        <p class="card-excerpt">Lorem ipsum dolor sit amet, consectetur adipisicing elit.<br> Odit delectus in exercitationem qui similique nam consequuntur officiis<br> sapiente eaque voluptas eum vitae, dolorem possimus cupiditate<br> necessitatibus perspiciatis ducimus soluta? Tempora!</p>
        </div>
         </article>

         <article class="article-card">
            <figure class="article-image">
    <img src="./assets/img/ada.jpeg" alt="Imagen de Ada Lovelace">
            </figure>
            <div class="article-content">
                <a class="card-category3" href="#oradores">Negocios</a>
                        <a class="card-category4" href="#oradores">Startups</a>
    <h3 class="card-title">Ada Lovelace</h3>
    <p class="card-excerpt">Lorem ipsum dolor sit amet, consectetur adipisicing elit.<br> Odit delectus in exercitationem qui similique nam consequuntur officiis<br> sapiente eaque voluptas eum vitae, dolorem possimus cupiditate<br> necessitatibus perspiciatis ducimus soluta? Tempora!</p>
    </div>
     </article>

        </section>
        <section id="lugar">
            <img class="playa" src="./assets/img/honolulu.jpg" alt="">
            <div>
            <h3>Bs As - Octubre</h3>
            <p>Buenos Aires es la provincia y localidad m�s grande del estado de Argentina, en los Estados Unidos. Honolulu es la<br>m�s sure�a de entre las principales ciudades estadounidenses. Aunque el nombre de Honolulu se refiere al �rea<br>urbana en la costa sureste de la isla de Oahu, la ciudad y el condado de Honolulu han formado una ciudad-<br>condado consolidada que cubre toda la ciudad (aproximadamente 600km� de superficie).</p>
            <a href="#">Conoc� m�s</a>
            </div>
        </section>

        <section class="formulario" id="conviertete-en-orador">
            <h5>CONVI�RTETE EN UN</h5>
            <h2>ORADOR</h2>
            <p>An�tate como orador para dar una  <u>charla ignite.</u>  �Cu�ntanos de qu� quieres hablar!</p>

            <div class="form">
            <form action="cargaForm2.jsp">
                <div class="form__group">
                <input type="text" name="name" value="<%= request.getParameter("Nombre") %>" class="nombre" id="form__input" placeholder=" " required>
                <label for="name" class="form__label">Nombre</label>
                </div>  

                <div class="form__group">
                <input type="text" name="surname" value="<%= request.getParameter("Aombre") %>" class="apellido" id="form__input" placeholder=" " required>
                <label for="surname" class="form__label" id="apellidoo">Apellido</label>
                </div>
                <textarea name="text" value="<%= request.getParameter("Tema") %>" placeholder="�Sobre qu� quieres hablar?" required></textarea>
                <h6>Recuerda incluir un t�tulo para tu charla.</h6>
                <input class="boton" type="submit" value="Enviar">
            </form>
            
            
        </div>
        </section>
    </main>

    <footer>
        <div class="footerNav">
        <ul>
     <li><a href="#">Preguntas<br>frecuentes</a></li>
     <li><a href="#">Cont�ctanos</a></li>
     <li><a href="#">Prensa</a></li>
     <li><a href="#">Conferencias</a></li>
     <li><a href="#">T�rminos y<br>condiciones</a></li>
     <li><a href="#">Privacidad</a></li>
     <li class="excepcion"><a href="#">Estudiantes</a></li>
        </ul>
        </div>
    </footer>
</body>
</html>