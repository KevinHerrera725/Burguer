<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReportesEstadisticosSBD.aspx.cs" Inherits="SistemasMultimediaBHO.vistas.ReportesEstadisticosSBD" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    
    <link href="css/estilosreportes.css" rel="stylesheet"/>
    <title>Diagraman de Gantt </title>


    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">

        google.charts.load('current', {'packages':['gantt']});
    google.charts.setOnLoadCallback(drawChart);

    function toMilliseconds(minutes) {
      return minutes * 60 * 1000;
    }

    function drawChart() {

      var otherData = new google.visualization.DataTable();
      otherData.addColumn('string', 'Task ID');
      otherData.addColumn('string', 'Task Name');
      otherData.addColumn('string', 'Resource');
      otherData.addColumn('date', 'Start');
      otherData.addColumn('date', 'End');
      otherData.addColumn('number', 'Duration');
      otherData.addColumn('number', 'Percent Complete');
      otherData.addColumn('string', 'Dependencies');

      otherData.addRows([
        ['toTrain', 'Enero', 'walk', null, null, toMilliseconds(5), 100, null],
        ['music', 'Febrero', 'music', null, null, toMilliseconds(70), 100, null],
        ['wait', 'Marzo', 'wait', null, null, toMilliseconds(10), 100, 'toTrain'],
        ['train', 'Abril', 'train', null, null, toMilliseconds(45), 75, 'wait'],
        ['toWork', 'Mayo', 'walk    ', null, null, toMilliseconds(10), 0, 'train'],
        ['work', 'Junio', null, null, null, toMilliseconds(2), 0, 'toWork'],

      ]);

      var options = {
                    height: 275,
        gantt: {
                    defaultStartDateMillis: new Date(2021, 07, 30)
        }
      };

      var chart = new google.visualization.Gantt(document.getElementById('chart_div'));

      chart.draw(otherData, options);
    }
        </script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>

    <link rel="icon" href="../vistas/img/hamburguesa.ico" style="width:32px; height:32px"/>

</head>
<body>
    <form id="form1" runat="server">
       <header class="full-width NavBarP">
		<div class="full-width NavBarP-Logo">Reporte - Diagrama de Gannt</div>
		
		<i class="fa fa-bars visible-xs btn-menuMobile ShowMenuMobile" aria-hidden="true"></i>
	</header>
       <section class="banner">

       
            
           <div id="chart_div"></div>
           <asp:Button ID="Button1" runat="server" Text="Atras" class="btn btn-outline-danger" OnClick="Button1_Click" />

    </section>
         
  

      

    </form>
</body>
</html>
