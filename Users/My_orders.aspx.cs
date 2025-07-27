using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Users_My_orders : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        //SqlCommand cmd = new SqlCommand();
        //con.Open();
        //cmd.Connection = con;
        //cmd.CommandText = "select * from order_product where user_id=" + Session["user_id"].ToString();
        //SqlDataReader dr = cmd.ExecuteReader();
        //while (dr.Read())
        //{
        //    int pid = dr.GetInt32(1);
        //    SqlDataSource_pview.SelectCommand = "select * from Add_Product where pid=" + pid;
        //}
        //con.Close();
    }
}