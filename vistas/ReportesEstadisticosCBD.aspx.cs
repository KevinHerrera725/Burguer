using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text;
using iTextSharp.text.pdf;

namespace SistemasMultimediaBHO.vistas
{
    public partial class ReportesEstadisticosCBD : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected string obtenerDatos()
        {


            SqlConnection conexionSQL = new SqlConnection("data source = DESKTOP-K3U2C8V\\JESUA; initial catalog = BurguerHappy; user id = sa; password = 12345");

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Select Hamburguesas.Descripcion, SUM (Cant_Hamburguesas) AS cantidad from Hamburguesas, Facturacion where Facturacion.cod_hamburguesa = Hamburguesas.cod_hamburguesa group by Hamburguesas.Descripcion";
            cmd.Connection = conexionSQL;
            conexionSQL.Open();

            DataTable Datos = new DataTable();
            Datos.Load(cmd.ExecuteReader());
            conexionSQL.Close();

            string devueltadedatospapa;

            devueltadedatospapa = "[['Task','Hours per Day'],";
            foreach (DataRow dr in Datos.Rows)
            {

                devueltadedatospapa = devueltadedatospapa + "[";
                devueltadedatospapa = devueltadedatospapa + " ' " + dr[0] + " ' " + "," + dr[1];
                devueltadedatospapa = devueltadedatospapa + "],";

            }

            devueltadedatospapa = devueltadedatospapa + "]";

            return devueltadedatospapa;
        }


        public DataTable dtmaximavendidaGuesa()
        {

            DataTable dt = new DataTable();
            using (SqlConnection conexionSQL = new SqlConnection("data source = DESKTOP-K3U2C8V\\JESUA; initial catalog = BurguerHappy; user id = sa; password = 12345"))
            {

                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "Select Hamburguesas.Descripcion, SUM (Cant_Hamburguesas) AS cantidad from Hamburguesas, Facturacion where Facturacion.cod_hamburguesa = Hamburguesas.cod_hamburguesa group by Hamburguesas.Descripcion";
                cmd.Connection = conexionSQL;
                conexionSQL.Open();

                SqlDataAdapter datita = new SqlDataAdapter(cmd);
                datita.Fill(dt);
                datita.Dispose();


            }

            return dt;



        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("BurguerHappyOficial.aspx");
        }

        protected void bdtgenerarPDF_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            Document documento = new Document();
            PdfWriter writer = PdfWriter.GetInstance(documento, HttpContext.Current.Response.OutputStream);
            dt = dtmaximavendidaGuesa();
            if (dt.Rows.Count > 0)
            {
                documento.Open();
                Font fontTitle = FontFactory.GetFont(FontFactory.COURIER_BOLD, 25);
                Font fontri = FontFactory.GetFont(FontFactory.TIMES, 9);

                PdfPTable table = new PdfPTable(dt.Columns.Count);
                documento.Add(new Paragraph(20, "Reporte Hamburguesa mas vendida", fontTitle));
                documento.Add(new Chunk("\n"));

                float[] widths = new float[dt.Columns.Count];
                for (int i = 0; i < dt.Columns.Count; i++)
                    widths[i] = 4f;

                table.SetWidths(widths);
                table.WidthPercentage = 90;


                PdfPCell cell = new PdfPCell(new Phrase("columns"));
                cell.Colspan = dt.Columns.Count;

                foreach (DataColumn c in dt.Columns)
                {
                    table.AddCell(new Phrase(c.ColumnName, fontri));
                }
                foreach (DataRow r in dt.Rows)
                {
                    if (dt.Rows.Count > 0)
                    {
                        for (int h = 0; h < dt.Columns.Count; h++)
                        {
                            table.AddCell(new Phrase(r[h].ToString(), fontri));

                        }
                    }


                }

                documento.Add(table);
            }

            documento.Close();
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=HamburguesaMasVendida" + ".pdf");
            HttpContext.Current.Response.Write(documento);
            Response.Flush();
            Response.End();

        }
    }
}