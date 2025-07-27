using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Adminlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string name = Request.QueryString["Name"].ToString();
        string pwd = Request.QueryString["Password"].ToString();

        if (name == "admin" && pwd == "super")
        {
            //Response.Redirect("Admin/View_product.aspx");
            Response.Redirect("Admin/Default.aspx");
        }
        else
        {
            Response.Redirect("loginfail.aspx");

        }
    }
}