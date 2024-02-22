using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using Burger_Sipariş_Sitesi.Classes;
using System.Reflection.Emit;

namespace Burger_Sipariş_Sitesi
{
    public partial class Menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToBoolean(Session["IsUserOnline"])== true)
            {
                SqlCommand commandList = new SqlCommand("Select * from TableMenu", SqlConnectionClass.connection);

                SqlConnectionClass.CheckConnection();

                SqlDataReader dr = commandList.ExecuteReader();

                DataList1.DataSource = dr;

                DataList1.DataBind();

                dr.Close();

            }
            else
            {
                Response.Redirect("Login.aspx");
            }

        }
    }
}