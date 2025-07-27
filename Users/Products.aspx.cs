using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Users_Products : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        try
        {
            string name = Request.Form["name"];
            string pass = Request.Form["Password"];
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
            SqlCommand cmd = new SqlCommand();
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = "select * from Registration where name=@name and pwd=@pwd";
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@pwd", pass);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                int id = dr.GetInt32(0);
                //Response.Redirect("Users/Default.aspx?id=" + id);
                Response.Redirect("Addtocart.aspx?pid=" + Session["pid"].ToString() + "&stk=" + Session["stock"].ToString());

            }

        }
        catch (Exception er)
        {
            Response.Write("<script>alert('login Fail...Enter correct Name or Password'); </script>");
            Response.Write("<script>window.location.href='Default.aspx';</script>");
        }

        //Response.Write("yes");
    }
}