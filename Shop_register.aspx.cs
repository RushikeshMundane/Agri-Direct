using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Shop_register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (FileUpload_shop.HasFile == true)
        {
            string xpath = Server.MapPath("photos");
            string path = xpath + "\\" + FileUpload_shop.FileName;
            FileUpload_shop.SaveAs(path);
        }
        else
        {
            lblmsg.Text = "File not uploaded";
        }
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        SqlCommand cmd = new SqlCommand();
        con.Open();
        cmd.Connection = con;
        cmd.CommandText = "insert into Add_Shop (shop_name,owner,contact,address,description,photo,username,pwd,cpwd,status) values (@shop,@owner,@contact,@address,@descr,@photo,@username,@pwd,@cpwd,@status)";
        cmd.Parameters.AddWithValue("@shop", txtname.Text);
        cmd.Parameters.AddWithValue("@owner", txtowner.Text);
        cmd.Parameters.AddWithValue("@contact", txtcontact.Text);
        cmd.Parameters.AddWithValue("@address", txtaddress.Text);
        cmd.Parameters.AddWithValue("@descr", txtdescrib.Text);
        cmd.Parameters.AddWithValue("@photo", FileUpload_shop.FileName.ToString());
        cmd.Parameters.AddWithValue("@username", txtuxername.Text);
        cmd.Parameters.AddWithValue("@pwd", txtpwd.Text);
        cmd.Parameters.AddWithValue("@cpwd", txtconfirm.Text);
        cmd.Parameters.AddWithValue("@status", "no");

        int i = cmd.ExecuteNonQuery();
        con.Close();

        txtdescrib.Text = "";
        txtname.Text = "";
        txtaddress.Text = "";
        txtcontact.Text = "";
        txtowner.Text = "";
        txtconfirm.Text = "";
        txtpwd.Text = "";
        txtuxername.Text = "";

        FileUpload_shop.Dispose();



        if (i == null)
        {
            lblmsg.Text = "Your shop is not added..Try again!!";
        }
        else
        {
            lblmsg.Text = "Youd shop is added..";
        }

    }
}