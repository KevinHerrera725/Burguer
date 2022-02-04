<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BurguerHappyOficial.aspx.cs" Inherits="SistemasMultimediaBHO.Views.BurguerHappyOficial" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
   
<head runat="server">
    <meta charset="utf-8"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
   

    <title>Restaurante Burguer Happy</title>
     <style>
    @import url('https://fonts.googleapis.com/css2?family=Pacifico&display=swap');
    </style>   


    <meta content="" name="description"/>
    <meta content="" name="keywords"/> 



  
  
    

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Playfair+Display:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500;1,600;1,700|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet"/>

  <!-- Vendor CSS Files -->
  <link href="vendor/animate.css/animate.min.css" rel="stylesheet"/>
  <link href="vendor/aos/aos.css" rel="stylesheet"/>
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
  <link href="vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet"/>
  <link href="vendor/boxicons/css/boxicons.min.css" rel="stylesheet"/>
  <link href="vendor/glightbox/css/glightbox.min.css" rel="stylesheet"/>
  <link href="vendor/swiper/swiper-bundle.min.css" rel="stylesheet"/>


    <!-- Estilos csss-->
  <link href="css/style.css" rel="stylesheet"/>
      <%--<link href="css/liena.css" rel="stylesheet"/>--%>
  
    <link rel="icon" href="../vistas/img/hamburguesa.ico" style="width:32px; height:32px"/>

</head>



<body>
    <form id="form1" runat="server">
        
        <div>
            <!-- ======= Header ======= -->
      <header id="header" class="fixed-top d-flex align-items-cente">
    <div class="container-fluid container-xl d-flex align-items-center justify-content-lg-between">
       
         <div class="much">
          <img src="img/hamburguesalogo.gif" width="130px" height="130px"/>
             
         </div>
                
         <h1 class="titulo"> <a href="BurguerHappyOficial.aspx"/> BURGUER HAPPY </h1>

        <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
         
          
            <li><a class="nav-link scrollto" href="#Contactos">Contactos</a></li>
            
            <li class="dropdown"><a href="#"><span>Informaciones</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
                <li class="dropdown"><a href="#"><span>Reportes 1</span> <i class="bi bi-chevron-right"></i></a>
                <ul>
                  <li><a href="ReportesEstadisticos.aspx">Reportes precios Hamburguesa</a></li>
                  <li><a href="ReportesEstadisticosSBD.aspx">Ganancias</a></li>
                  <li><a href="ReportesEstadisticosSBD_tres.aspx">Reporte popularidad refrescos</a></li>
                  </ul>
                    <li class="dropdown"><a href="#"><span>Reportes 2</span> <i class="bi bi-chevron-right"></i></a>
                <ul>
                  <li><a href="ReportesEstadisticos_dos.aspx">Precios</a></li>
                  <li><a href="ReportesEstadisticosCBD.aspx">Reporte de Hamburguesa</a></li>
                  <li><a href="ReportesEstadisticosCBD_tres.aspx">Reporte de Platillos</a></li>
                    <li><a href="ReportesEstadisticosBDcuatro.aspx">Reporte Ganancias</a></li>
                  </ul>

     
          

      </nav>
        <!-- .navbar -->

      <a href="Menu.aspx" class="book-a-table-btn scrollto d-none d-lg-flex">MENÚ</a>
            
    </div>
  </header><!-- End Header -->

           
        </div>
        <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex align-items-center">
    <div class="container position-relative text-center text-lg-start" data-aos="zoom-in" data-aos-delay="100">
      <div class="row">
        <div class="col-lg-8">
          <h1>Bienvenido a tu <span>Restaurante Favorito</span></h1>
          <h2>Porque lo hacemos como a ti te gusta!!</h2>

          <div class="btns">
            <a href="Menu.aspx" class="btn-menu animated fadeInUp scrollto">Nuestro Menu</a>
           </div>
        </div>
        <div class="col-lg-4 d-flex align-items-center justify-content-center position-relative" data-aos="zoom-in" data-aos-delay="200">
          <a href="https://www.youtube.com/watch?v=jn6y4_7kNFg" class="glightbox play-btn"></a>
        </div>

      </div>
    </div>
  </section><!-- End Hero -->

  <main id="main">



      <section id="Contactos" class="Contactos">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Contactos</h2>
          <p>Encuentranos en :</p>
        </div>
      </div>

      <div data-aos="fade-up">
        <iframe style="border:0; width:100%; height:350px;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3825.405575945306!2d-68.1322932854813!3d-16.505609888612646!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x915f2064e7f7f247%3A0xefd8e71bb81a9120!2sJ.J.Perez%2C%20La%20Paz!5e0!3m2!1ses!2sbo!4v1627677806322!5m2!1ses!2sbo" frameborder:"0" allowfullscreen></iframe>
      </div>

      

          <div class="col-lg-8 mt-5 mt-lg-0">

    

          </div>


    </section><!-- End Contact Section -->



        
    </form>

     <!-- Vendor JS Files -->
  <script src="vendor/aos/aos.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="vendor/glightbox/js/glightbox.min.js"></script>
  <script src="vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="vendor/php-email-form/validate.js"></script>
  <script src="vendor/swiper/swiper-bundle.min.js"></script>

  <!-- Template Main JS File -->
  <script src="js/main.js"></script>
   
</body>
</html>
