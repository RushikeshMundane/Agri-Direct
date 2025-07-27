using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        string name = Request.QueryString["Name"].ToString();
        string email = Request.QueryString["Email"].ToString();
        string pwd = Request.QueryString["Password"].ToString();
        string cpwd = Request.QueryString["Confirm Password"].ToString();




       SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        SqlCommand cmd = new SqlCommand();
        con.Open();
        cmd.Connection = con;
        cmd.CommandText = "insert into Registration (name,email,pwd,cpwd) values(@name,@email,@pwd,@cpwd)";
        cmd.Parameters.AddWithValue("@name", name);
        cmd.Parameters.AddWithValue("@email", email);
        cmd.Parameters.AddWithValue("@pwd", pwd);
        cmd.Parameters.AddWithValue("@cpwd", cpwd);
        int i = cmd.ExecuteNonQuery();
        if (i != null)
        {
           Response.Redirect("Default.aspx");
           // Response.Write("<script>alert('Registration Successfull..Now you can login..'); </script>");
           //Response.Write("<script>window.location.href='Default.aspx';</script>");
        }
        else
        {
            //Response.Write("error");
            Response.Write("<script>alert('Registration not Successfull..try again..'); </script>");
            Response.Write("<script>window.location.href='Default.aspx';</script>");
        }
    }
}