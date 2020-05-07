using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace InventorySystem
{
    public partial class AuthorManagement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        string str;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            bookdata.DataBind();
        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            // try
            //{
            //    if (checkauthorExist())
            //    {
            //        Response.Write("<script>alert('Author with this id already exist, try different id');</script>");
            //    }
            //    else
            //    {
            //    addnewauthor();
            //        bookdata.DataBind();
            //    }
            //}
            //catch(Exception ex)
            //{
            //    Response.Write("<script>alert('" +ex.ToString()+"');</script>");
            //}
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("insert into author_master_tbl (authro_id,authroname) values(@author_id,@author_name)", con);
                cmd.Parameters.AddWithValue("@author_id", txtauthorid.Text);
                cmd.Parameters.AddWithValue("@author_name", txtauthorname.Text);
                cmd.ExecuteNonQuery();
                cmd.Dispose();
                ShowMessage("Author added successfully");

                Response.Write("<script>alert('Author Added Successfully')</script>");
                bookdata.DataBind();
                con.Close();
            }
            catch(SqlException ex)
            {
                ShowMessage(ex.Message);
            }
            
        }
        void ShowMessage(string msg)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "Validation", "<script language='javascript'>alert('" + msg + "');</script>");
        }
        //void namecheck()
        //{
        //    SqlConnection con = new SqlConnection(strcon);
        //    con.Open();
        //    str = "select count(*) from author_master_tbl where author_id='" + txtauthorid.Text + "'";
        //    cmd = new SqlCommand(str, con);
        //    int count = Convert.ToInt32(cmd.ExecuteScalar());
        //    con.Close();
        //    if (count > 0)
        //    {
        //        Response.Write("<script>alert('this id already exist, try different');</script>");
        //    }
        //    else
        //    {
        //        con.Open();
        //        str = "INSERT INTO author_master_tbl(author_id,author_name) values('" + txtauthorid.Text + "','" + txtauthorname.Text + "')";
        //        cmd = new SqlCommand(str, con);
        //        cmd.ExecuteNonQuery();
        //        con.Close();
        //    }
        //}
        public void addnewauthor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("insert into author_master_tbl (authro_id,authroname) values(@author_id,@author_name)", con);
                cmd.Parameters.AddWithValue("@author_id", txtauthorid.Text.Trim());
                cmd.Parameters.AddWithValue("@author_name", txtauthorname.Text.Trim());
                cmd.ExecuteNonQuery();


                Response.Write("<script>alert('Author Added Successfully')</script>");
                bookdata.DataBind();
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }
        bool checkauthorExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("Select * from author_master_tbl where author_id='" + txtauthorid.Text.Trim() + "';", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
                return false;
            }
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}