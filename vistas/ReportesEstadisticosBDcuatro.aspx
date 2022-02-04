<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReportesEstadisticosBDcuatro.aspx.cs" Inherits="SistemasMultimediaBHO.vistas.ReportesEstadisticosBDcuatro" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
   <httpHandlers>
  <add path="ChartImg.axd" verb="GET,HEAD" type="System.Web.UI.DataVisualization.Charting.ChartHttpHandler, System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31BF3856AD364E35" validate="false"/>
</httpHandlers>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>


<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    
    <link href="css/estilosreportes.css" rel="stylesheet"/>
    <title>Reporte Diagrama LineChart BD</title>
<link rel="icon" href="../vistas/img/hamburguesa.ico" style="width:32px; height:32px"/>
</head>

    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">

        google.charts.load('current', { 'packages': ['corechart'] });
        google.charts.setOnLoadCallback(drawChart);

        function drawChart() {

            var data = google.visualization.arrayToDataTable(<%=obtenerVentas()%>);

            var options = {
                title: 'Ganancias mensuales:',
                is3D: true,
                ///*backgroundColor:*/
                //pieHole: 0.4,
                //legend: {
                //position: { "labeled", textStyle: { color: "red", fontSize: 14 } }


            };

            var chart = new google.visualization.PieChart(document.getElementById('piechart'));

            chart.draw(data, options);
        }
    </script>


<body>
   <form id="form1" runat="server">

        
        <header class="full-width NavBarP">
		<div class="full-width NavBarP-Logo">Reporte - Diagrama Pasta</div>
		
		<i class="fa fa-bars visible-xs btn-menuMobile ShowMenuMobile" aria-hidden="true"></i>
	</header>
       <section class="banner">

       <div class="banner-content">
           <div id="piechart" style="width: 900px; height: 500px;"></div>
          <br /> 
           
         <asp:Button ID="Button1" runat="server" class="btn btn-outline-danger botonestilo" Text="Atras" OnClick="Button1_Click" />
           <asp:Button ID="btnGenerarPDF" runat="server" Text="Descargar PDF" class="btn btn-info" OnClick="btnGenerarPDF_Click" />
   </div>
           
    </section>
         
  

      

    </form>
</body>
</html>