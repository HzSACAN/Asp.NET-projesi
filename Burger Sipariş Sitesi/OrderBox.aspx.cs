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
    public partial class OrderBox : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToBoolean(Session["IsUserOnline"]) == true)
            {

                int BurgerID = Convert.ToInt32(Request.QueryString["BurgerID"]);
                
                SqlCommand command = new SqlCommand("insert into TableOrderBox (UserID,BurgerID) values (@pUserID,@pBurgerID)", SqlConnectionClass.connection);
                
                SqlConnectionClass.CheckConnection();

                command.Parameters.AddWithValue("@pUserID", Session["UserID"]);
                command.Parameters.AddWithValue("@pBurgerID",BurgerID);

                command.ExecuteNonQuery();

                SqlDataAdapter adapter = new SqlDataAdapter("Select * from TableOrderBox where UserID=@pUserID",SqlConnectionClass.connection);

                SqlConnectionClass.CheckConnection();

                adapter.SelectCommand.Parameters.AddWithValue("@pUserID", Session["UserID"]);


                DataTable dataTable = new DataTable();

                dataTable.Columns.Add("ID", typeof(int));
                dataTable.Columns.Add("OrderID", typeof(int));


                adapter.Fill(dataTable);

                int[] ikinciSutunDizisi = new int[dataTable.Rows.Count];
                int index = 0;

                foreach (DataRow row in dataTable.Rows)
                {
                    object orderIDValue = row["OrderID"];
                    int ikinciSutunDegeri;

                    if (orderIDValue != DBNull.Value && int.TryParse(orderIDValue.ToString(), out ikinciSutunDegeri))
                    {
                        // orderIDValue değeri DBNull.Value değilse ve başarıyla bir int'e dönüştürülebiliyorsa işlemleri gerçekleştir
                    }
                    else
                    {
                        ikinciSutunDegeri = 0; // Varsayılan değer
                    }
                    // Dizinin ilgili indeksine atar
                    ikinciSutunDizisi[index] = ikinciSutunDegeri;
                    index++;
                }

                for (int i = 0; i < ikinciSutunDizisi.Length; i++)
                {

                    SqlDataAdapter da = new SqlDataAdapter("Select * from TableMenu where BurgerID = @pBurgerID", SqlConnectionClass.connection);

                    da.SelectCommand.Parameters.AddWithValue("@pBurgerID", ikinciSutunDizisi[i]);

                    DataTable dt = new DataTable();

                    da.Fill(dt);

                    tekrar.DataSource = dt;
                    tekrar.DataBind();
                }
            }
            else
            {
                Response.Redirect("Login.aspx");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand commandSelect = new SqlCommand("Select * from TableOrderBox where ", SqlConnectionClass.connection);


        }
    }
}