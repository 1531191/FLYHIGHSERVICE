<html>
    <head>
        <title>RESERVA DE VUELOS</title>
        <link rel="stylesheet" href="css/estilosfin.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
        <link rel="stylesheet" href="css/nivo-slider_1.css">
	<link rel="stylesheet" href="css/mi-slider_1.css">

	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js" type="text/javascript"></script>
	<script src="js/jquery.nivo.slider.js"></script>

	<script type="text/javascript"> 
		$(window).on('load', function() {
		    $('#slider').nivoSlider();}); 
	</script>
    </head>
    <body> 
        <header>
            <nav>
                <%--<a href="#" class="logo-web"><img src="imagenes/logo1.jpg" alt=" " class="imagen"></a>--%>
                <ul>
                    <li><a href="pag_principal.jsp"> Inicio </a></li>
                    <li><a href="#">Destinos <span class="fa fa-angle-down"></span></a>
                    <ul>
                        <li><a href="Costa.jsp">Costa</a></li>
                        <li><a href="Sierra.jsp">Sierra</a></li>
                        <li><a href="Selva.jsp">Selva</a></li>
                    </ul></li> 
                    <li><a href="login.jsp">Reservas </a></li>                 
                    <li><a href="login.jsp"> Cerrar Sesi�n </a></li>
                </ul>
                </nav>
            
        </header>
            <div class="slider-wrapper theme-mi-slider">
		<div id="slider" class="nivoSlider">   
                    <img src="imagenes/portada.jpg" alt="" title="#htmlcaption0" />  
		    <img src="imagenes/arequipa_1.jpg" alt="" title="#htmlcaption1" />    
		    <img src="imagenes/ayacucho_2.jpg" alt="" title="#htmlcaption2" />    
		    <img src="imagenes/chiclayo_3.jpg" alt="" title="#htmlcaption3" />
                    <img src="imagenes/cuzco_4.jpg" alt="" title="#htmlcaption4" />     
                    <img src="imagenes/huanuco_6.jpg" alt="" title="#htmlcaption6" />   
                    <img src="imagenes/tacna_8.jpeg" alt="" title="#htmlcaption8" />   
		</div> 
		<div id="htmlcaption1" class="nivo-html-caption">     
		    <h1>Arequipa</h1>
		    <p>Catedral bas�lica de Santa Mar�a: es uno de los primeros monumentos religiosos 
                       del siglo XVII en Arequipa. Se reconstruyeron las torres, debido al terremoto del 2001.</p>
		</div>
		<div id="htmlcaption2" class="nivo-html-caption">     
		    <h1>Ayacucho</h1>
                    <p>Catedral de Ayacucho: construida con piedra rosada en su parte central y gris en sus
                        torres. Es una de las m�s hermosas del Per� por sus interiores decorados.</p>
		</div>
		<div id="htmlcaption3" class="nivo-html-caption">     
		    <h1>Chiclayo</h1>
                    <p>Catedral de Santa Mar�a: templo cat�lico de estilo neocl�sico. Es una de las atracciones 
                        m�s populares de Chiclayo, ubicada en el Parque Principal de Chiclayo.</p>
		</div>
                <div id="htmlcaption4" class="nivo-html-caption">     
		    <h1>Cuzco</h1>
                    <p>Catedral Bas�lica de la Virgen de la Asunci�n: es el principal templo de la ciudad del Cuzco
                        en el Per�, y alberga la sede de la Di�cesis del Cuzco.</p>
		</div>
                <div id="htmlcaption6" class="nivo-html-caption">     
		    <h1>Hu�nuco</h1>
                    <p>Iglesia San Sebasti�n:  tiene un dise�o arquitect�nico colonial y posee una 
                        escultura de la imagen de San Sebasti�n con manchas de viruela en el cuerpo.</p>
		</div>
                <div id="htmlcaption8" class="nivo-html-caption">     
		    <h1>Tacna</h1>
                    <p> Arco Parab�lico: monumento en honor a los h�roes de la Guerra
                        del Pac�fico, el Almirante Miguel Grau y el Coronel Francisco Bolognesi.</p>
		</div>
                </div>
        <%-- <section class="main">
            <section class="articulos">
                <article>
                    <h2>Visi�n:</h2>
                    <p>Texto del art. 1</p>
                </article>
                <article>
                    <h2>Misi�n:</h2>
                    <p>Texto del art. 2</p>
                </article>
            </section>
            <aside>
                <h3>�Qui�nes somos?</h3><br>
                <p><b>Fly-High Service</b> somos una empresa integrada por un grupo de profesionales con experiencia 
                    en asesoramiento de viajes, ya sea de negocios, vacacional, corporativo o estudiantes. 
                    <br><br>Nuestra empresa lo ofrece las mejores herramietas para la planificaci�n y gesti�n de viajes a
                    nivel Nacional, por lo que hemos dise�ado una variedad de funciones que facilitan a los viajeros
                    toda la informaci�n que necesiten para elegir el mejor vuelo, hotel o paquetes vacacionales.
                    
                </p>
            </aside>
        </section>--%>
        
         <footer>
            <pre>

<a href="Somos.jsp">Qui�nes somos</a>            <a href="VisioMision.jsp">Visi�n y Misi�n</a>            <a href="Contactanos.jsp">Cont�ctanos</a>            <a href="compafiliadas.jsp">Compa��as afiliadas</a>            <a href="principal.jsp">Ir al Backend</a> 


<p>�Viajas con la familia y buscas hoteles econ�micos u hoteles familiares? Haz tu pr�xima reserva de hotel a trav�s de Fly-High Service y no pierdas la oportunidad de encontrar el mejor precio.<p>
            </pre>
             
       </footer>
    </body>
</html>
