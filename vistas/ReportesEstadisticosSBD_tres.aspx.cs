using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemasMultimediaBHO.vistas
{
    public partial class ReportesEstadisticosSBD_tres : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public string obtenerDatosrefrescos() {

            DataTable datitos = new DataTable();

            //Columnas de los datos
            datitos.Columns.Add(new DataColumn("Año", typeof(string)));
            datitos.Columns.Add(new DataColumn("Coca Cola", typeof(string)));
            datitos.Columns.Add(new DataColumn("Fanta", typeof(string)));
            datitos.Columns.Add(new DataColumn("Spryte", typeof(string)));
            datitos.Columns.Add(new DataColumn("Coca Zero", typeof(string)));
            datitos.Columns.Add(new DataColumn("Mineragua", typeof(string)));

            //Datos de las columnas (mostrar en el chart)
            datitos.Rows.Add(new Object[] { "new Date(2021, 7, 16)", 20, 16.4, 19, 10, 15.4});
            datitos.Rows.Add(new Object[] { "new Date(2021, 8, 16)", 30.3, 19.5, 10, 5, 16.8 });
            datitos.Rows.Add(new Object[] { "new Date(2021, 9, 16)", 25.5, 18.9, 12.3, 5.6, 12.4 });


            string refredatos;

            refredatos = "[";

            foreach (DataRow dr in datitos.Rows) {

                refredatos = refredatos + "[";
                refredatos = refredatos + dr[0] + "" + "," +
                dr[1].ToString().Replace(",", ".") + "," +
                dr[2].ToString().Replace(",", ".") + "," +
                dr[3].ToString().Replace(",", ".") + "," +
                dr[4].ToString().Replace(",", ".") + "," +
                dr[5].ToString().Replace(",", ".");
                refredatos = refredatos + "],";

                }

            refredatos = refredatos + "]";
            return refredatos;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("BurguerHappyOficial.aspx");
        }
    }
}