using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class LoginShopper : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
       
           
        string name = Request.QueryString["Name"];
        string pass = Request.QueryString["Password"];

           // Response.Write(name + " "+pass);

        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        SqlCommand cmd = new SqlCommand();
        con.Open();
        cmd.Connection = con;
        cmd.CommandText = "select * from Add_Shop where username=@name and pwd=@pwd";
        cmd.Parameters.AddWithValue("@name", name);
        cmd.Parameters.AddWithValue("@pwd", pass);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            int id = dr.GetInt32(0);
            Response.Redirect("Shopper/Default.aspx?id=" + id);

            }
          
        }
        catch (Exception er)
        {
            Response.Write("<script>alert('login Fail...Enter correct Name or Password'); </script>");
            Response.Write("<script>window.location.href='Default.aspx';</script>");
        }
        
        }

           

        
    }
