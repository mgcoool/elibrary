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
    public partial class Usersignup : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //signup page code
        protected void btnusersignup_Click(object sender, EventArgs e)
        {
            //Response.Write("<script>alert('Hello manish');</script>");
            //checking user already exist or not
            if (checkmemberExist())
            {
                Response.Write("<script>alert('Member already exist, try different id');</script>");
            }
            else
            { userSignup(); }
          
        }
        public void userSignup()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("insert into member_master_tbl (full_name,dob,contact_no,email,state,city,pincode,full_address,member_id,password,account_status) values(@full_name,@dob,@contact_no,@email,@state,@city,@pincode,@full_address,@member_id,@password,@account_status)", con);
                cmd.Parameters.AddWithValue("@full_name", txtfullname.Text.Trim());
                cmd.Parameters.AddWithValue("@dob", txtdob.Text.Trim());
                cmd.Parameters.AddWithValue("@contact_no", txtcontact.Text.Trim());
                cmd.Parameters.AddWithValue("@email", txtemail.Text.Trim());
                cmd.Parameters.AddWithValue("@state", dropdownliststate.Text.Trim());
                cmd.Parameters.AddWithValue("@city", txtcity.Text.Trim());
                cmd.Parameters.AddWithValue("@pincode", txtpincode.Text.Trim());
                cmd.Parameters.AddWithValue("@full_address", txtaddress.Text.Trim());
                cmd.Parameters.AddWithValue("@member_id", txtmuserid.Text.Trim());
                cmd.Parameters.AddWithValue("@password", txtuserpassword.Text.Trim());
                cmd.Parameters.AddWithValue("@account_status", "Pending");
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('sign in successfully, go to user login page to login');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        bool checkmemberExist()
        {
             try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from member_master_tbl where member_id='"+txtmuserid.Text.Trim()+"')", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if(dt.Rows.Count>=1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('sign in successfully, go to user login page to login');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
            return false;
        }
    }
}