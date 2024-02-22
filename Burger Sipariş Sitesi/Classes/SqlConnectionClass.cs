using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
namespace Burger_Sipariş_Sitesi.Classes
{
    public class SqlConnectionClass
    {
        public static SqlConnection connection = new SqlConnection("Data Source=LAPTOP-0D04V7T3\\SQLEXPRESS;Initial Catalog=BurgerDB;Integrated Security=True");

        public static void CheckConnection()
        {
            if (connection.State == System.Data.ConnectionState.Closed)
            {
                connection.Open();
            }
            else
            {

            }
        }

    }
}