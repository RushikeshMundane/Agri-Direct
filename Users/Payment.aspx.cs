using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Net.Mail;
using System.Net;
using System.Text;

public partial class Users_Payment : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        double total = 0;
        if (!IsPostBack)
        {
            
            /*Calculate Total*/
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
            SqlCommand cmd = new SqlCommand();
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = "select * from Temp where user_id=" + Session["user_id"].ToString();
            SqlDataReader drr = cmd.ExecuteReader();
            while (drr.Read())
            {
                double rate =Convert.ToDouble(drr.GetInt32(drr.GetOrdinal("prate")));
                total = total + rate;
                
            }
            con.Close();
            lbltotal.Text = total.ToString();
           // Session.Add("total", total);
           
           // lbltotal.Text = Session["total"].ToString();
        }


      
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (rbCOD.Checked == true)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
            SqlCommand cmd = new SqlCommand();
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = "insert into book_order (user_id,r_name,address,contact,total,status,tdate)values (@user_id,@r_name,@address,@contact,@total,@status,@tdate)";
            cmd.Parameters.AddWithValue("@user_id", Session["user_id"].ToString());
            cmd.Parameters.AddWithValue("@r_name", txtname.Text);
            cmd.Parameters.AddWithValue("@address", txtaddress.Text);
            cmd.Parameters.AddWithValue("@contact", txtcontact.Text);
            cmd.Parameters.AddWithValue("@total", lbltotal.Text);
            cmd.Parameters.AddWithValue("@status", "Pending");
            cmd.Parameters.AddWithValue("@tdate", "Pending");
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                lblmsg.Text = "Your order is place successfully...";
            }
            else
            {
                lblmsg.Text = "Your is not placed properly...Try again!!";
            }
            con.Close();

            ClearTempCart();
        }

        if (rbOnlineCard.Checked == true)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
            SqlCommand cmd = new SqlCommand();
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = "insert into book_order (user_id,r_name,address,contact,total,status,tdate)values (@user_id,@r_name,@address,@contact,@total,@status,@tdate)";
            cmd.Parameters.AddWithValue("@user_id", Session["user_id"].ToString());
            cmd.Parameters.AddWithValue("@r_name", txtname.Text);
            cmd.Parameters.AddWithValue("@address", txtaddress.Text);
            cmd.Parameters.AddWithValue("@contact", txtcontact.Text);
            cmd.Parameters.AddWithValue("@total", lbltotal.Text);
            cmd.Parameters.AddWithValue("@status", "Pending");
            cmd.Parameters.AddWithValue("@tdate", System.DateTime.Now.ToShortDateString());
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                lblmsg.Text = "Your order is place successfully...";
            }
            else
            {
                lblmsg.Text = "Your is not placed properly...Try again!!";
            }
            con.Close();

            ClearTempCart();
            Response.Redirect("PaymentGatway.aspx");
        }



    }

    public void ClearTempCart()
    {
        SqlConnection con2 = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        SqlCommand cmd2 = new SqlCommand();
        con2.Open();
        cmd2.Connection = con2;
        cmd2.CommandText = "Delete from Temp where user_id=" + Session["user_id"].ToString();
        cmd2.ExecuteNonQuery();
        con2.Close();

        txtaddress.Text = "";
        txtcontact.Text = "";
        txtname.Text = "";
        lbltotal.Text = "";
    }
}






    

    



   
    
