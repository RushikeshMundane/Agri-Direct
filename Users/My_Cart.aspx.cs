using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
public partial class Users_My_Cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnremove_Click(object sender, EventArgs e)
    {

        //Response.Write("Remove");
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        SqlCommand cmd = new SqlCommand();
        con.Open();
        cmd.Connection = con;
        cmd.CommandText = "Select * from Temp where user_id=" + Session["user_id"].ToString();
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            int pid = dr.GetInt32(0);
            string pname = dr.GetString(dr.GetOrdinal("pname"));
            string prate = dr.GetInt32(dr.GetOrdinal("prate")).ToString();
            string desc = dr.GetString(dr.GetOrdinal("describe"));
            string photo = dr.GetString(dr.GetOrdinal("photo"));
            string mrp = dr.GetString(dr.GetOrdinal("mrp"));
            int shopo_id = dr.GetInt32(dr.GetOrdinal("shopid"));

            int p_stock = dr.GetInt32(dr.GetOrdinal("stock"));
            int stock_new = p_stock - 1;

            /*update stock in add_prduct table*/

            SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
            SqlCommand cmd1 = new SqlCommand();
            con1.Open();
            cmd1.Connection = con1;
            cmd1.CommandText = "update Add_Product set stock=@stock where pid=@pid";
            cmd1.Parameters.AddWithValue("@stock", stock_new);
            cmd1.Parameters.AddWithValue("@pid", pid);
            cmd1.ExecuteNonQuery();

            //SqlConnection con2 = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
            //SqlCommand cmd2 = new SqlCommand();
            //con2.Open();
            //cmd2.Connection = con2;
            //cmd2.CommandText = "Delete from Temp where user_id=" + Session["user_id"].ToString();
            //cmd2.ExecuteNonQuery();
            //con2.Close();
            con1.Close();

            /*bbok order code*/
            SqlConnection con3 = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
            SqlCommand cmd3 = new SqlCommand();
            con3.Open();
            cmd3.Connection = con3;
            cmd3.CommandText = "insert into order_product (pid,user_id,pname,prate,describe,photo,mrp,shopid) values (@pid,@user,@pname,@prate,@describe,@photo,@mrp,@shopid)";
            cmd3.Parameters.AddWithValue("@pid", pid);
            cmd3.Parameters.AddWithValue("@user", Session["user_id"].ToString());
            cmd3.Parameters.AddWithValue("@pname", pname);
            cmd3.Parameters.AddWithValue("@prate", prate);
            cmd3.Parameters.AddWithValue("@describe", desc);
            cmd3.Parameters.AddWithValue("@photo", photo);
            cmd3.Parameters.AddWithValue("@mrp", mrp);
            cmd3.Parameters.AddWithValue("@shopid", shopo_id);
            cmd3.ExecuteNonQuery();
            con3.Close();



        }
        con.Close();



        Response.Redirect("Payment.aspx");



    }
}