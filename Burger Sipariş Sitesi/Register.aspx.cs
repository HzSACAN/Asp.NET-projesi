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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonRegister_Click(object sender, EventArgs e)
        {
            SqlCommand commandRegister = new SqlCommand("Insert into TableUser (UserMail,UserPassword) values (@pmail,@ppassword)",SqlConnectionClass.connection);

            SqlConnectionClass.CheckConnection();

            string shaPass = Sha256Converter.ComputeSha256Hash(TextBoxPassword.Text);

            commandRegister.Parameters.AddWithValue("@pmail", TextBoxMail.Text);
            commandRegister.Parameters.AddWithValue("@ppassword", shaPass);

            commandRegister.ExecuteNonQuery();
        }
    }
}