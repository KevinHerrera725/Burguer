<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReportesEstadisticosSBD_tres.aspx.cs" Inherits="SistemasMultimediaBHO.vistas.ReportesEstadisticosSBD_tres" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    
    <link href="css/estilosreportes.css" rel="stylesheet"/>
    <title>Diagrama LineChart</title>
    
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">

        google.charts.load('current', { 'packages': ['corechart'] });
        google.charts.setOnLoadCallback(drawChart);

        function drawChart() {

            var data = new google.visualization.DataTable();


            data.addColumn('date', 'AÑO');
            data.addColumn('number', 'Coca Cola');
            data.addColumn('number', 'Fanta');
            data.addColumn('number', 'Sprite');
            data.addColumn('number', 'Coca Zero');
            data.addColumn('number', 'Mineragua');

            //data.addRows([
            //    [new Date(2021, 7, 16), 20, 16.4, 19, 10, 15.4],
            //    [new Date(2021, 8, 16), 30.3, 19.5, 10, 5, 16.8],
            //    [new Date(2021, 9, 16), 25.5, 18.9, 12.3, 5.6, 12.4],


            //]);

            data.addRows(<%=this.obtenerDatosrefrescos()%>);

            

            

            var options = {
                "title": 'Popularidad de los refrescos de los meses de Julio, Agosto, Septiembre:',
                "fontSize": 12,
                "legend": {
                    "position": "right",
                    "textStyle": {
                        "color": "#000000",
                        "fontSize":14

                    }
                },
                "colors":["#1f386b","#DC3912","#FF9900","#109618","#990099"],
                hAxis: {
                    title:"Fecha"

                },
                vAxis: {
                    title: "Popularidad",
                    minValue: 0,
                    minValue: 50,
                    format:'##,##%'

                }



                //is3D: true,

                ///*backgroundColor:*/
                ///*pieHole: 0.4;*/
                //legend: {
                //    position: { "labeled", textStyle: { color: "red", fontSize: 14 } }


            };

            var chart = new google.visualization.LineChart(document.getElementById('piechart'));

            var formato = new google.visualization.NumberFormat({ pattern: '##,##%' })
            formato.format(data, 1);


            chart.draw(data, options);
        }
    </script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
    <link rel="icon" href="../vistas/img/hamburguesa.ico" style="width:32px; height:32px"/>
</head>
<body>
    <form id="form1" runat="server">
    <header class="full-width NavBarP">
		<div class="full-width NavBarP-Logo">Reporte - Diagrama LineChart</div>
		
		<i class="fa fa-bars visible-xs btn-menuMobile ShowMenuMobile" aria-hidden="true"></i>
	</header>
       <section class="banner">

       <div class="banner-content">
            
           <div id="piechart" style="width: 900px; height: 500px;"></div>
           <asp:Button ID="Button1" runat="server" Text="Atras" class="btn btn-outline-danger" OnClick="Button1_Click" />
          
   </div>

    </section>
         
  

      

    </form>
</body>
</html>