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
    public partial class Adminlogin : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_admin_login_Click(object sender, EventArgs e)
        {
            try
            { 
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from admin_login_tbl where username=@username and password=@password", con);
                cmd.Parameters.AddWithValue("@username ", txtadminid.Text.Trim());
                cmd.Parameters.AddWithValue("@password", txtadminpassword.Text.Trim());
                ////SqlDataAdapter sda = new SqlDataAdapter(cmd);
                ////DataTable dt = new DataTable();
                ////sda.Fill(dt);
                ////int i = cmd.ExecuteNonQuery();
                ////con.Close();
                ////if (dt.Rows.Count > 0)
                ////{
                ////    Response.Write("<script>alert('hello manish');</script>");
                ////    //Session["username"] = sdr.GetValue(8).ToString();
                ////    //Session["fullname"] = sdr.GetValue(0).ToString();
                ////    //Session["role"] = "admin";
                ////    //Session["status"] = sdr.GetValue(10).ToString();
                ////}
                ////else
                ////{
                ////    Response.Write("<script>alert('invalid details');</script>");
                ////}
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.HasRows)
                {
                    while (sdr.Read())
                    {
                        Response.Write("<script>alert'Welcome,Admin');</script>");
                        Session["username"] = sdr.GetValue(0).ToString();
                        Session["fullname"] = sdr.GetValue(2).ToString();
                        Session["role"] = "admin";
                        //Session["status"] = sdr.GetValue(10).ToString();

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
    }
}