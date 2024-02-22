using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using Burger_Sipariş_Sitesi.Classes;

namespace Burger_Sipariş_Sitesi
{
    public partial class Content : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToBoolean(Session["IsUserOnline"]) == true)
            {

            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void ButtonSend_Click(object sender, EventArgs e)
        {
            SqlCommand commandAdd = new SqlCommand("Insert into TableContact (ContactName,ContactMail,ContactMassage) values (@pname,@pmail,@pmsg)", SqlConnectionClass.connection);

            SqlConnectionClass.CheckConnection();

            commandAdd.Parameters.AddWithValue("@pname", TextBoxName.Text);
            commandAdd.Parameters.AddWithValue("@pmail", TextBoxMail.Text);
            commandAdd.Parameters.AddWithValue("@pmsg", TextBoxMessage.Text);

            commandAdd.ExecuteNonQuery();


        }
    }
}