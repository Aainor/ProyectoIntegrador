<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Proyecto Integrador</title>
    <link rel="shortcut icon" href="../assets/img/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="../css/t-style.css">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Cabin&display=swap');
    </style>
</head>
<body>
<header>
        <div class="logo">
        <img src="../assets/img/codoacodo.png" alt="Logo de Codo a Codo">
        <h3 class="titulo">Conf Bs As</h3>
        </div>

        <nav>
        <a href="../index.html">La conferencia</a>
        <a href="../index.html">Los oradores</a>
        <a href="../index.html">El lugar y la fecha</a>
        <a class="active" href="../index.html">Convi�rtete en orador</a>
        <a href="./tickets.html" id="ticket">Comprar tickets</a>
        </nav>
        
    </header>

    <main>
        <div class="row">
        <section id="tarjetas">
            <div class="t-estudiante col-sm-10 col-md-6 col-lg-4 col-xl-4">
                <article id="t-texto">
                    <h4>Estudiante</h4>
                    <p>Tienen un descuento</p>
                    <h5>80%</h5>
                    <h6>*presentar documentaci�n</h6>
                </article>
            </div>

            <div class="t-trainee col-sm-10 col-md-6 col-lg-4 col-xl-4">
                <article id="t-texto">
                    <h4>Trainee</h4>
                    <p>Tienen un descuento</p>
                    <h5>50%</h5>
                    <h6>*presentar documentaci�n</h6>
                </article>
            </div>

            <div class="t-junior col-sm-10 col-md-6 col-lg-4 col-xl-4">
                <article id="t-texto">
                    <h4>Junior</h4>
                    <p>Tienen un descuento</p>
                    <h5>15%</h5>
                    <h6>*presentar documentaci�n</h6>
                </article>
            </div>
        </section>
    </div>

        <section class="t-main">
        <div class="titulo-t">
        <h5>VENTA</h5>
        <h2>VALOR DE TICKET $200</h2>
        </div>

        <div class="t-form">
            <form id="ticketForm" action="cargaForm.jsp">
                <div class="columnas-1">
                <div class="t-form__group">
                <input type="text" name="name" value="<%= request.getParameter("nombre") %>" class="t-nombre t-form__input required" id="name" placeholder="Nombre" required pattern="^[A-Za-z������������\s]+$">
                </div>  

                <div class="t-form__group">
                <input type="text" name="surname" value="<%= request.getParameter("apellido") %>" class="t-apellido t-form__input required" id="surname" placeholder="Apellido" required pattern="^[A-Za-z������������\s]+$">
                </div>
            </div>

                
                    <input type="email" name="mail" value="<%= request.getParameter("mail") %>" class="t-correo t-form__input required" id="mail" placeholder="Correo" required>
              

                <div class="columnas-2">
                <div class="t-form__group">
                    <h5 class="c">Cantidad</h5>
                    <input type="number" name="quantity" value="<%= request.getParameter("cantidad") %>" inputmode="numeric" min="1" max="100" class="t-cantidad t-form__input required" id="miInput" placeholder="Cantidad" required>
                </div>

                <div class="t-form__group">
                    <h5 class="c">Categor�a</h5>
                    <select name="categoria" value="<%= request.getParameter("categoria") %>" class="t-categoria t-form__input required" id="descuento">
                        <option value="1">Sin categor�a</option>
                        <option value="2">Estudiante</option>
                        <option value="3">Trainee</option>
                        <option value="4">Junior</option>
                    </select>
                </div>
            </div>

            <p id="Total">Total a Pagar: $<span id="precioTotal">0.00</span></p>

                <div class="columnas-3">
                <input class="b-borrar button" type="reset" value="Borrar">
                <button type="button" class="b-resumen button" id="calcularPrecioTotal">Resumen</button>
                <button type="submit" class="button">Comprar</button>
                </div> 
            </form>
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