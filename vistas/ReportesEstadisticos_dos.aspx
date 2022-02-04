<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReportesEstadisticos_dos.aspx.cs" Inherits="SistemasMultimediaBHO.vistas.ReportesEstadisticos_dos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    
    <link href="css/estilosreportes.css" rel="stylesheet"/>


    <title>Reportes - Diagrama Pasta BD</title>
    

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">

      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

          var data = google.visualization.arrayToDataTable(<%=obtenerDatos()%>);

        var options = {
            title: 'Precios de los platillos del menu:', /*Los precios de todos los platillos para mostrar conexion*/
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
    
    
    
    <link rel="icon" href="../vistas/img/hamburguesa.ico" style="width:32px; height:32px"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>



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
           <asp:Button ID="Button1" runat="server" Text="Atras" class="btn btn-outline-danger" OnClick="Button1_Click" />
           <asp:Button ID="btnGenerarPDF" runat="server" Text="Descargar PDF" class="btn btn-info" OnClick="btnGenerarPDF_Click" />
           


     </div>

    </section>
         
  

      

    </form>
</body>
</html>
