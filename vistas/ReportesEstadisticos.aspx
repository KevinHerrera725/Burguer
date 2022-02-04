<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReportesEstadisticos.aspx.cs" Inherits="SistemasMultimediaBHO.vistas.ReportesEstadisticos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    
    <link href="css/estilosreportes.css" rel="stylesheet"/>


    <title>Reportes - Diagrama de Pasta </title>
    
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Pacifico&display=swap');
</style>      


    <!-- Estilos csss-->    
    
    <link href="css/estilosreportes.css" rel="stylesheet"/>
	<link href="css/bbbb.css" rel="stylesheet"/>
	<link href="css/barralateral.css" rel="stylesheet"/>
    <link href="css/logitos.css" rel="stylesheet"/>
	
    
    <link rel="icon" href="../vistas/img/hamburguesa.ico" style="width:32px; height:32px"/>

    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="https://i.icomoon.io/public/temp/c9b2d8872c/UntitledProject/style.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
    

    
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">

        google.charts.load('current', { 'packages': ['corechart'] });
        google.charts.setOnLoadCallback(drawChart);

        function drawChart() {

            var data = google.visualization.arrayToDataTable(<%=obtenerDatos()%>);

            var options = {
                title: 'Precios de los prodcutos del restaurante:',
                is3D: true,

                ///*backgroundColor:*/
                ///*pieHole: 0.4;*/
                //legend: {
                //    position: { "labeled", textStyle: { color: "red", fontSize: 14 } }


            };

            var chart = new google.visualization.PieChart(document.getElementById('piechart'));

            chart.draw(data, options);
        }
    </script>



</head>

<body>
     
    <form id="form1" runat="server">

        
        <header class="full-width NavBarP">
		<div class="full-width NavBarP-Logo">Reporte - Diagrama Pasta</div>
		
		<i class="fa fa-bars visible-xs btn-menuMobile ShowMenuMobile" aria-hidden="true"></i>
	</header>
       <section class="banner">

       <div class="banner-content">
                
                 <div id="piechart" style="width: 900px; height: 500px;"></div>

           <asp:Button ID="Button1" runat="server" Text="Atras" class="btn btn-outline-danger" OnClick="Button1_Click" width="80px" Height="40px"/>
           
      
            </div>

    </section>
         
  

      

    </form>
</body>
</html>


