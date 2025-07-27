using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Add_cart : System.Web.UI.Page
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

         //int stock_int =Convert.ToInt32 (Request.QueryString["stk"]);
        //int stock_now = stock_int - 1;

        //if (stock_int == 0)
        //{
        //    lblmsg.Text = "Product is Out of stock..";
        //}
        //else
        //{
        //    if (stock_now < 0)
        //    {
        //        lblmsg.Text = "Product is Out of stock..";
        //    }
        //    else
        //    {

        //        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        //        SqlCommand cmd = new SqlCommand();
        //        con.Open();
        //        cmd.Connection = con;
        //        cmd.CommandText = "update Add_Product set stock=@stock where pid=@pid";
        //        cmd.Parameters.AddWithValue("@stock", stock_now);
        //        cmd.Parameters.AddWithValue("@pid", Request.QueryString["pid"].ToString());
        //        int i = cmd.ExecuteNonQuery();
        //        con.Close();
        //        if (i > 0)
        //        {
        //            lblmsg.Text = "your order placed successfully!!";
        //            Response.Redirect("Add-cart.aspx?pid="+Request.QueryString["pid"]+"&stk="+stock_now);
        //        }
        //        else
        //        {
        //            lblmsg.Text = "There are some issues to check out..Plz try  Again!!";
        //        }
        //    }
        //}

        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        SqlCommand cmd = new SqlCommand();
        con.Open();
        cmd.Connection = con;
        cmd.CommandText = "Select * from Temp";
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            int pid = dr.GetInt32(0);
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
            SqlConnection con2 = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
            SqlCommand cmd2 = new SqlCommand();
            con2.Open();
            cmd2.Connection = con2;
            cmd2.CommandText = "Delete from Temp";
            cmd2.ExecuteNonQuery();
            con2.Close();
            con1.Close();

        }
        con.Close();

        Response.Redirect("Default.aspx");



    }
}