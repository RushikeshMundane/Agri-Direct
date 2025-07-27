using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Addtocart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        SqlCommand cmd = new SqlCommand();
        con.Open();
        cmd.Connection = con;
        cmd.CommandText = "select * from Add_Product where pid=@pid";
        cmd.Parameters.AddWithValue("@pid", Request.QueryString["pid"]);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            int stock = dr.GetInt32(7);
            if (stock > 0)
            {
                SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
                SqlCommand cmd1 = new SqlCommand();
                con1.Open();
                cmd1.Connection = con1;
                cmd1.CommandText = "insert into Temp(pid,shopid,pname,prate,describe,photo,mrp,stock,user_id) values (@pid,@shopid,@pname,@prate,@describe,@photo,@mrp,@stock,@user_id)";
                cmd1.Parameters.AddWithValue("@pid", Request.QueryString["pid"]);
                cmd1.Parameters.AddWithValue("@shopid", dr.GetInt32(1));
                cmd1.Parameters.AddWithValue("@pname", dr.GetString(2));
                cmd1.Parameters.AddWithValue("@prate", dr.GetInt32(3));
                cmd1.Parameters.AddWithValue("@describe", dr.GetString(4));
                cmd1.Parameters.AddWithValue("@photo", dr.GetString(5));
                cmd1.Parameters.AddWithValue("@mrp", dr.GetString(6));
                cmd1.Parameters.AddWithValue("@stock", dr.GetInt32(7));
                cmd1.Parameters.AddWithValue("@user_id", Session["user_id"].ToString());
                cmd1.ExecuteNonQuery();
                con1.Close();
                Response.Redirect("Add-cart.aspx");
                con.Close();
            }
            else
            {
                Response.Write("<script>alert('Product is out of stock...'); </script>");
                Response.Write("<script>window.location.href='Default.aspx';</script>");
            }

        }
        //con.Close();

      

    }
}