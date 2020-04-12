
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Esthetic </title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Health medical template project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css" href="styles/main_styles.css">
<link rel="stylesheet" type="text/css" href="styles/responsive.css">
</head>
<body>

<div class="super_container">

	<!-- Menu -->

	<div class="menu trans_500">
		<div class="menu_content d-flex flex-column align-items-center justify-content-center text-center">
			<div class="menu_close_container"><div class="menu_close"></div></div>
			<ul>
				<li class="menu_item"><a href="index.html">Inicio</a></li>
				<li class="menu_item"><a href="#">Nosotros</a></li>
				<li class="menu_item"><a href="#">Servicios</a></li>
				<li class="menu_item"><a href="contact.html">Contactanos</a></li>
                           
			        <div class="container">
                                    <botton class="btn btn-xl btn-outline-light " style=" cursor:pointer" type="button" data-toggle="modal" data-target="#myModal"> Inicio de Sesion </botton>  
                                        <a href="#Registro" scroll-behavior: smooth class="btn btn-xl  btn-outline-light " style=" cursor:pointer"> Registrarse </a>  
                                </div>
			</ul>
		</div>
		<div class="menu_social">
			<ul>
				<li><i class="fa fa-pinterest" aria-hidden="true"></i></li>
				<li><i class="fa fa-facebook" aria-hidden="true"></i></li>
				<li><i class="fa fa-twitter" aria-hidden="true"></i></li>
				<li><i class="fa fa-dribbble" aria-hidden="true"></i></li>
				<li><i class="fa fa-behance" aria-hidden="true"></i></li>
				<li><i class="fa fa-linkedin" aria-hidden="true"></i></li>
			</ul>
		</div>
	</div>
	
	<!-- Home -->

	<div class="home">
		<div class="background_image" style="background-image:url(images/index_hero.jpg)"></div>

		<!-- Header -->

		<header class="header" id="header">
			<div>
				<div class="header_top">
					<div class="container">
						<div class="row">
							<div class="col">
								<div class="header_top_content d-flex flex-row align-items-center justify-content-start">
									<div class="logo">
										<a href="#">Esthetic<span>+</span></a>	
									</div>
									<div class="header_top_extra d-flex flex-row align-items-center justify-content-start ml-auto">
										<div class="header_top_nav">
											<ul class="d-flex flex-row align-items-center justify-content-start">
												
                                                                                            <div class="container">
                                                                                            <botton class="btn btn-xl text-white" style="background-color: #32c69a; cursor:pointer" type="button" data-toggle="modal" data-target="#myModal"> Inicio de Sesión </botton>  
                                                                                            </div>
                                                                                            <a href="#Registro" data-ancla="registro" class="btn btn-xl text-white " style="background-color: #32c69a; cursor:pointer"> Registrarse </a>  
											</ul>
										</div>
										<div class="header_top_phone">
											<i class="fa fa-phone" aria-hidden="true"></i>
											<span>+57 310 455 5836</span>
										</div>
									</div>
									<div class="hamburger ml-auto"><i class="fa fa-bars" aria-hidden="true"></i></div>
								</div>
							</div>  
						</div>
					</div>
				</div>
				<div class="header_nav" id="header_nav_pin">
					<div class="header_nav_inner">
						<div class="header_nav_container">
							<div class="container">
								<div class="row">
									<div class="col">
										<div class="header_nav_content d-flex flex-row align-items-center justify-content-start">
											<nav class="main_nav">
												<ul class="d-flex flex-row align-items-center justify-content-start">
													<li class="active"><a href="index.html">Inicio</a></li>
													<li><a href="about.html">Nosotros</a></li>
													<li><a href="services.html">Servicios</a></li>
													<li><a href="news.html">Productos</a></li>
													<li><a href="contact.html">Contactanos</a></li>
												</ul>
											</nav>
											
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>	
			</div>
		</header>

                <!-- Inicio del modal-->
                <div class="modal fade" id="myModal">
                    <div class="modal-dialog">
                        <div class="modal-content">
      
                            <!-- Modal Header -->
                                <div class="modal-header">
                                    <h2 class="modal-title" > Inicio de Sesión </h2>
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                </div>

                            <!-- Modal body -->
                                <div class="modal-body">
                                       <form method="post" action="GeneraInformes">
                                           <div class="control-group">
                                               <div class="form-group flotting-label-form-group controls mb-0 pb-2">
                                            <label> Digite su usuario: </label>
                                            <input class="form-control"  placeholder="&#128272; Usuario" style="color: gray" type="text" required="" name="txtUsuario">
                                               </div>
                                               <div class="form-group flotting-label-form-group controls mb-0 pb-2">
                                               <label>Digite su contraseña: </label>
                                            <input class="form-control" placeholder="&#128273 Contraseña" style="color: gray" type="password" required="" name="txtPassword">
                                            <small><a href="#"> ¿Olvidó su contraseña? </a>  </small>
                                           </div>
                                          </div>
                                           <h5 style="color:red">                                                                               
                                           <% if(null!=request.getAttribute("errorMessage")) {
                                               out.println(request.getAttribute("errorMessage"));
                                              }
                                               %>
                                           </h5>
                                               
                                    <div class="modal-footer">
                                        <button class="btn btn-xl text-white" style="background-color: #32c69a; cursor:pointer"> Ingresar </button>
                                    </div>
                                    </form>
                                
                                </div>

                            <!-- Modal footer -->
                                
                        </div>
                    </div>
                </div>
                <!--Fin del modal-->
                
                
		<div class="home_container">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="home_content">
							<div class="home_title">Clínica Estética</div>
							<div class="home_text"> Todo lo que necesitas saber sobre tratamientos estéticos lo encuentras aquí, puedes agendar tu cita y conocer a nuestros profesionales. </div>
							<div class="button home_button"><a href="#"><span> Leer más </span><span> Leer más </span></a></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

       
	<!-- Info Boxes -->
 <a id="Registro" ></a>
	<div class="info">
		<div class="container">
			<div class="row row-eq-height">

				<!-- Info Box -->
				<div class="col-lg-4 info_box_col">
					<div class="info_box">
						<div class="info_image"><img  src="images/spa.jpg" alt=""></div>
						<div class="info_content">
							<div class="info_title"> Tratamientos </div>
							<div class="info_text"> Ofrecemos los mejores tratamientos que ayudan a mantener, cuidar y resaltar la piel, apariencia corporal, atendiendo los criterios de estética, belleza y salud, ofreciendo atención especializada de la más alta calidad científica y humana a través de diversos tratamientos médicos mínimamente invasivos.    </div>
							<div class="button info_button"><a href="#"><span> Leer más</span><span> Leer más</span></a></div>
						</div>
					</div>
				</div>

				<!-- Info Box -->
				<div class="col-lg-4 info_box_col">
					<div class="info_box">
                                            <div class="info_image"><img src="images/women.jpg" alt=""></div>
						<div class="info_content">
							<div class="info_title"> Productos </div>
							<div class="info_text"> Los productos que ofrecemos son de alta calidad, brindándole a tu cuerpo el mejor cuidado y protección. Puedes encontrar productos de todas las marcas profesionales, productos para tu cuidado diario en el hogar y equipos portatiles profesionales que ayudarán a que tu piel se vea más tonificada. </div>
							<div class="button info_button"><a href="#"> <span> Leer más </span><span> Leer más</span></a></div>
						</div>
					</div>
				</div>

				<!-- Info Form -->
                               
				<div class="col-lg-4 info_box_col">
					<div class="info_form_container">
						<div class="info_form_title"> Registrarse </div>
                                    <form action="InsertaUsuario.jsp" class="info_form" name="usuarionuevo" id="info_form" method="post">
							<select name="ddlTipocedula" id="info_form_dep" class="info_form_dep info_input info_select">
								<option>Tipo de documento</option>
								<option value="1">Cédula de ciudadanía</option>
								<option value="2">Cédula de extranjería</option>
							</select>
                                                        <input type="text" name="txtnumerodoc" class="info_input" placeholder="Número documento" required="required">
                                                        <input type="text" name="txtnombre1" class="info_input" placeholder="Primer nombre" required="required">
                                                        <input type="text" name="txtnombre2" class="info_input" placeholder="Segundo nombre">
                                                        <input type="text" name="txtapellido1" class="info_input" placeholder="Primer apellido" required="required">
                                                        <input type="text" name="txtapellido2" class="info_input" placeholder="Segundo apellido">
							<input type="text" name="txttelefono" class="info_input" placeholder="Teléfono" required="required">
                                                        <hr>
                                                        <input type="text" name="txtusuario" class="info_input" placeholder="Usuario" required="required">
							<input type="password" name="txtpassword" class="info_input" placeholder="Contraseña" required="required">
                                                        <input type="password" name="txtconpassword" class="info_input" placeholder="Confirmar contraseña" required="required">
                                                        
                                                        <button class="info_form_button" onclick="comprobarClave()"> Registrar</button>
                                                        <br>
                                                        <br>                                                  
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- CTA -->

	<div class="cta">
		<div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="images/cta_1.jpg" data-speed="0.8"></div>
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="cta_container d-flex flex-xl-row flex-column align-items-xl-start align-items-center justify-content-xl-start justify-content-center">
						<div class="cta_content text-xl-left text-center">
							<div class="cta_title"> Programa una cita con uno de nuestros médicos profesionales.</div>
							<div class="cta_subtitle"> Nuestros servicios de estética te esperan, solicita tu cita ahora. </div>
						</div>
						<div class="button cta_button ml-xl-auto"><a href="#"><span> Agendar </span><span> Agendar </span></a></div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Services -->

	<div class="services">
		<div class="container">
			<div class="row">
				<div class="col text-center">
					<div class="section_title"> Nuestros Servicios</div>
				</div>
			</div>
			<div class="row icon_boxes_row">
				
				<!-- Icon Box -->
				<div class="col-xl-4 col-lg-6">
					<div class="icon_box">
						<div class="icon_box_title_container d-flex flex-row align-items-center justify-content-start">
							<div class="icon_box_icon"><img src="images/estetica.svg" alt=""></div>
							<div class="icon_box_title">Tratamientos Faciales </div>
						</div>
						<div class="icon_box_text"> Una piel joven se caracteriza por verse lisa, firme y con adecuado volumen. Aquí encontraras los mejores tratamientos para tu belleza.</div>
					</div>
				</div>

				<!-- Icon Box -->
				<div class="col-xl-4 col-lg-6">
					<div class="icon_box">
						<div class="icon_box_title_container d-flex flex-row align-items-center justify-content-start">
							<div class="icon_box_icon"><img src="images/nariz.svg" alt=""></div>
							<div class="icon_box_title">Tratamientos para Manchas </div>
						</div>
						<div class="icon_box_text"> ¡No más marcas en la piel! Te tenemos los mejores tratamientos para eliminar las estrías y ese acné indeseado.</div>
					</div>
				</div>

				<!-- Icon Box -->
				<div class="col-xl-4 col-lg-6">
					<div class="icon_box">
						<div class="icon_box_title_container d-flex flex-row align-items-center justify-content-start">
							<div class="icon_box_icon"><img src="images/abdominoplastia.svg" alt=""></div>
							<div class="icon_box_title">Tratamientos Corporales </div>
						</div>
						<div class="icon_box_text"> Eliminar la celulitis, remodelar, reafirma la piel y conseguir un cuerpo perfecto sin pasar por el quirófano.</div>
					</div>
				</div>

				<!-- Icon Box -->
				<div class="col-xl-4 col-lg-6">
					<div class="icon_box">
						<div class="icon_box_title_container d-flex flex-row align-items-center justify-content-start">
							<div class="icon_box_icon"><img src="images/cirugia-estetica.svg" alt=""></div>
							<div class="icon_box_title">Tratamientos de Rejuvenecimiento </div>
						</div>
						<div class="icon_box_text"> Verse un aspecto más joven y natural sin pasar por el quirófano, ese sigue siendo el objetivo de la mayoría de mujeres.</div>
					</div>
				</div>

				<!-- Icon Box -->
				<div class="col-xl-4 col-lg-6">
					<div class="icon_box">
						<div class="icon_box_title_container d-flex flex-row align-items-center justify-content-start">
							<div class="icon_box_icon"><img src="images/cardiograma.svg" alt=""></div>
							<div class="icon_box_title">Tratamientos Antioxidantes </div>
						</div>
						<div class="icon_box_text"> Tratamientos antioxidantes, energizantes e hidratantes que combaten las alteraciones y los signos del estres en la piel.</div>
					</div>
				</div>

				<!-- Icon Box -->
				<div class="col-xl-4 col-lg-6">
					<div class="icon_box">
						<div class="icon_box_title_container d-flex flex-row align-items-center justify-content-start">
							<div class="icon_box_icon"><img src="images/depilacion.svg" alt=""></div>
							<div class="icon_box_title">Tratamientos para Piel Frágil</div>
						</div>
						<div class="icon_box_text"> ¿Piel extrafragíl? ¡No tienes de que preocuparte!, tenemos a los mejores expertos que te ayudarán con tu belleza. </div>
					</div>
				</div>

			</div>
			<div class="row">
				<div class="col">
					<div class="button services_button ml-auto mr-auto"><a href="#"><span> Leer más </span><span> Leer más</span></a></div>
				</div>
			</div>
		</div>
	</div>

	<!-- Departments -->

	<div class="departments">
		<div class="container">
			<div class="row">
				<div class="col text-center">
					<div class="section_title">Nuestros Productos</div>
				</div>
			</div>
			<div class="row dept_row">
				<div class="col">
					<div class="dept_slider_container_outer">
						<div class="dept_slider_container">

							<!-- Slider -->
							<div class="owl-carousel owl-theme dept_slider">
								
								<!-- Slide -->
								<div class="owl-item dept_item">
									<div class="dept_image"><img src="images/corporal.jpg" alt=""></div>
									<div class="dept_content">
										<div class="dept_title"> Cremas Corporales </div>
										<div class="dept_link"><a href="#"> Leer más</a></div>
									</div>
								</div>

								<!-- Slide -->
								<div class="owl-item dept_item">
									<div class="dept_image"><img src="images/gel.jpg" alt=""></div>
									<div class="dept_content">
										<div class="dept_title"> Geles </div>
										<div class="dept_link"><a href="#">Leer más</a></div>
									</div>
								</div>

								<!-- Slide -->
								<div class="owl-item dept_item">
									<div class="dept_image"><img src="images/aceite.jpg" alt=""></div>
									<div class="dept_content">
										<div class="dept_title"> Aceites </div>
										<div class="dept_link"><a href="#">Leer más</a></div>
									</div>
								</div>

								<!-- Slide -->
								<div class="owl-item dept_item">
									<div class="dept_image"><img src="images/exfo.jpg" alt=""></div>
									<div class="dept_content">
										<div class="dept_title"> Exfoliantes </div>
										<div class="dept_link"><a href="#">Leer más</a></div>
									</div>
								</div>

							</div>
							
						</div>

						<!-- Dept Slider Nav -->
						<div class="dept_slider_nav"><i class="fa fa-chevron-right" aria-hidden="true"></i></div>

					</div>
						
				</div>
			</div>
		</div>
	</div>

	<!-- Footer -->

	<footer class="footer">
		<div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="images/otro.jpg" data-speed="0.8"></div>
		<div class="footer_content">
			<div class="container">
				<div class="row">

					<!-- Footer About -->
					<div class="col-lg-3 footer_col">
						<div class="footer_about">
							<div class="logo">
								<a href="#">Estethic<span>+</span></a>	
							</div>
							<div class="footer_about_text text-white"> Puedes seguir conociendonos en nuestras redes sociales, recuerda el cambio está en ti.</div>
							<div class="footer_social">
								<ul class="d-flex flex-row align-items-center justify-content-start">
									<li><a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-behance" aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
								</ul>
							</div>
                                                        <div class="copyright text-white"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | X y F <i class="fa fa-heart-o" aria-hidden="true"></i> 


</div>
						</div>
					</div>
					
					<!-- Footer Contact -->
					<div class="col-lg-5 footer_col">
						<div class="footer_contact">
							<div class="footer_contact_title"> Contáctanos </div>
							<div class="footer_contact_form_container">
								<form action="#" class="footer_contact_form" id="footer_contact_form">
									<div class="d-flex flex-xl-row flex-column align-items-center justify-content-between">
										<input type="text" class="footer_contact_input" placeholder="Nombre" required="required">
										<input type="email" class="footer_contact_input" placeholder="E-mail" required="required">
									</div>
									<textarea class="footer_contact_input footer_contact_textarea" placeholder="Mensaje" required="required"></textarea>
									<button class="footer_contact_button"> Enviar mensaje</button>
								</form>
							</div>
						</div>
					</div>

					<!-- Footer Hours -->
					<div class="col-lg-4 footer_col">
						<div class="footer_hours">
							<div class="footer_hours_title">Horario de Atención </div>
							<ul class="hours_list">
								<li class="d-flex flex-row align-items-center justify-content-start">
									<div>Lunes – Jueves</div>
									<div class="ml-auto">8.00 – 19.00</div>
								</li>
								<li class="d-flex flex-row align-items-center justify-content-start">
									<div>Viernes </div>
									<div class="ml-auto">8.00 - 18.30</div>
								</li>
								<li class="d-flex flex-row align-items-center justify-content-start">
									<div>Sábados </div>
									<div class="ml-auto">9.30 – 17.00</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="footer_bar">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="footer_bar_content d-flex flex-sm-row flex-column align-items-lg-center align-items-start justify-content-start">
							<nav class="footer_nav">
								<ul class="d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-start">
									<li class="active"><a href="index.html">Inicio </a></li>
									<li><a href="about.html">Nosotros</a></li>
									<li><a href="services.html">Servicios</a></li>
                                                                        <li><a href="contact.html">Productos </a></li>
									<li><a href="contact.html">Contactanos </a></li>
								</ul>
							</nav>
						
							<div class="footer_phone ml-lg-auto">
								<i class="fa fa-phone" aria-hidden="true"></i>
								<span>+57 310 455 5836</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
</div>
                              
                                               
<script src="js/jquery-3.3.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="plugins/parallax-js-master/parallax.min.js"></script>
<script src="js/custom.js"></script>
<script>
function comprobarClave(){
    clave1 = document.usuarionuevo.txtpassword.value
    clave2 = document.usuarionuevo.txtconpassword.value

    if (clave1 == clave2)
       alert("Las dos claves son iguales...\nRealizaríamos las acciones del caso positivo");
    else
       alert("Las dos claves son distintas...\nRealizaríamos las acciones del caso negativo");
}  
<%
      if(null!= request.getAttribute("errorMessage")){
       out.println("$('#myModal').modal('show');");
    }
      %>

</script> 

</body>
</html>
