using Burger_Sipariş_Sitesi.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Burger_Sipariş_Sitesi
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            SqlCommand commandLogin = new SqlCommand("Select UserID,UserMail,UserPassword from TableUser where  UserMail=@pmail and UserPassword=@ppassword", SqlConnectionClass.connection);

            SqlConnectionClass.CheckConnection();

            string shaPass = Sha256Converter.ComputeSha256Hash(TextBoxPassword.Text);

            commandLogin.Parameters.AddWithValue("@pmail",TextBoxMail.Text);
            commandLogin.Parameters.AddWithValue("@ppassword",shaPass);
            int userID = Convert.ToInt32(commandLogin.ExecuteScalar());

            DataTable dt = new DataTable();

            SqlDataAdapter da = new SqlDataAdapter(commandLogin);

            da.Fill(dt);

           

            if (dt.Rows.Count > 0)
            {
                if (TextBoxMail.Text == "asklanhazret51@gmail.com")
                {
                    Session["IsUserAdmin"] = true;
                    Session["UserMail"] = "asklanhazret51@gmail.com";
                    Response.Redirect("AdminDeneme.aspx");
                }
                else
                {
                    Session["UserID"] = userID;
                    Session["UserMail"] = dt.Rows[0].ToString();
                    Session["IsUserOnline"] = true;
 
                    Response.Redirect("Menu.aspx");
                }
            }
            else
            {
                Response.Write("Mail adresi veya Şifre hatalı");
            }

        }
    }
}