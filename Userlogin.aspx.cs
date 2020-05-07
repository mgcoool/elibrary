using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
namespace InventorySystem
{
    public partial class Userlogin : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        string username, pwd;
        int count;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsignup_Click(object sender, EventArgs e)
        {
            Response.Redirect("Usersignup.aspx");
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            //userlogin();
            //if(txtmemberid.Text=="manish"&& txtpassword.Text=="manish")
            //{
            //    Response.Write("<script>alert('Hello Visitor');</script>");
            //}
            try
            {
                username = txtmemberid.Text.Trim();
                pwd = txtpassword.Text.Trim();
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from member_master_tbl where member_id=@member_id and password=@password", con);
                cmd.Parameters.AddWithValue("@member_id", txtmemberid.Text.Trim());
                cmd.Parameters.AddWithValue("@password", txtpassword.Text.Trim());
                ////SqlDataAdapter sda = new SqlDataAdapter(cmd);
                ////DataTable dt = new DataTable();
                ////sda.Fill(dt);
                ////int i = cmd.ExecuteNonQuery();
                //con.Close();
                //if(dt.Rows.Count>0)
                //{
                //    Response.Write("<script>alert('hello manish');</script>");
                //   // Session["username"] = sda.Fill("manish").ToString();
                //}
                //else
                //{
                //    Response.Write("<script>alert('invalid details');</script>");
                //}

                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.HasRows)
                {
                    while (sdr.Read())
                    {
                        Response.Write("<script>alert('Login Successfully');</script>");
                        Session["username"] = sdr.GetValue(8).ToString();
                        Session["fullname"] = sdr.GetValue(0).ToString();
                        Session["role"] ="user";
                        Session["status"] = sdr.GetValue(10).ToString();
                    }
                    Response.Redirect("homepage.aspx");
                    sdr.Close();
                }
                else
                {
                    Response.Write("<script>alert('invalid details');</script>");
                }

                 
                 con.Close();
                //con.Close();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        //public void userlogin()
        //{
        //    try
        //    {
        //        username = txtmemberid.Text.Trim();
        //        pwd = txtpassword.Text.Trim();
        //        SqlConnection con = new SqlConnection(strcon);
        //        if (con.State == ConnectionState.Closed)
        //        {
        //            con.Open();
        //        }
        //        SqlCommand cmd = new SqlCommand("select count(*) from member_master_tbl where member_id='" + username + "' AND password='"+pwd+"')", con);
        //       // SqlDataReader sdr = cmd.ExecuteReader();
        //        count = (int)cmd.ExecuteScalar();

        //        if (count >= 1)
        //        {
        //            Response.Write("<script>alert('good');</script>");
        //        }
        //        else { Response.Write("<script>alert('invalid details');</script>"); }

        //        //if(sdr.HasRows)
        //        //{
        //        //    while(sdr.Read())
        //        //    {
        //        //        Response.Write("<script>alert('"+sdr.GetValue(8).ToString()+"');</script>");
        //        //    }
        //        //}
        //        //else
        //        //{
        //        //    Response.Write("<script>alert('invalid details');</script>");
        //        //}


        //        // con.Close();
        //        con.Close();

        //    }
        //    catch (Exception ex)
        //    {
        //        Response.Write("<script>alert('" + ex.Message + "');</script>");
        //    }
        //}
    }
}