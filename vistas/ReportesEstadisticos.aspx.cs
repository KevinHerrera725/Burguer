using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemasMultimediaBHO.vistas
{
    public partial class ReportesEstadisticos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }


        protected string obtenerDatos(){

            DataTable Datos = new DataTable();
            
            //Columnas de los datos
            Datos.Columns.Add(new DataColumn("Task", typeof(string)));
            Datos.Columns.Add(new DataColumn("Hour per Day", typeof(string)));


            //datos de las colummnas
            Datos.Rows.Add(new Object[] { "Hamburguesa Simple", 20 });
            Datos.Rows.Add(new Object[] { "Hamburguesa Doble", 16 });
            Datos.Rows.Add(new Object[] { "Hamburguesa Triple", 13 });
            Datos.Rows.Add(new Object[] { "Hamburguesa con huevo", 19 });
            Datos.Rows.Add(new Object[] { "Hamburguesa Vegetariana", 3 });
            Datos.Rows.Add(new Object[] { "Salchipapa", 17 });
            Datos.Rows.Add(new Object[] { "Salchicarne", 12 });
            Datos.Rows.Add(new Object[] { "PromoGuesas", 10 });
            Datos.Rows.Add(new Object[] { "Pollito Frito", 10 });





            string devueltadedatospapa;

            devueltadedatospapa = "[['Task','Hours per Day'],";
            foreach (DataRow dr in Datos.Rows)
            {

                devueltadedatospapa = devueltadedatospapa + "[";
                devueltadedatospapa = devueltadedatospapa + " ' "+dr[0]+" ' "+","+dr[1];
                devueltadedatospapa = devueltadedatospapa + "],";

            }

            devueltadedatospapa = devueltadedatospapa + "]";

            return devueltadedatospapa;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("BurguerHappyOficial.aspx");
        }

        protected void btnGenerarPDF_Click(object sender, EventArgs e)
        {

        }
    }
}
