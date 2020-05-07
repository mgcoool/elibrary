using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InventorySystem
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //try
            //{
            //    //if(Session["role"].Equals(""))
            //    //{
            //        userlogin.Visible = true;
            //        signup.Visible = true;
            //        logout.Visible = false;
            //        loggermsg.Visible = false;
            //        adminlogin.Visible = true;
            //        authormgmt.Visible = false;
            //        publishermgmt.Visible = false;
            //        bookinvt.Visible = false;
            //        bokissue.Visible = false;
            //       membermanagement.Visible = false;

            //    //}
            //}
           
            //catch(Exception ex)
            //{

            //}
            try
            {
                if (Session["role"].Equals(""))
                {
                    userlogin.Visible = true;
                    signup.Visible = true;
                    logout.Visible = false;
                    loggermsg.Visible = false;
                    adminlogin.Visible = true;
                    authormgmt.Visible = false;
                    publishermgmt.Visible = false;
                    bookinvt.Visible = false;
                    bokissue.Visible = false;
                    membermanagement.Visible = false;

                }
                else if (Session["role"].Equals("user"))
                {
                    userlogin.Visible = false;
                    signup.Visible = false;
                    logout.Visible = true;
                    loggermsg.Visible = true;
                    loggermsg.Text = "Hello " + Session["username"].ToString();
                    adminlogin.Visible = true;
                    authormgmt.Visible = false;
                    publishermgmt.Visible = false;
                    bookinvt.Visible = false;
                    bokissue.Visible = false;
                    membermanagement.Visible = false;
                }
                else if (Session["role"].Equals("admin"))
                {
                    userlogin.Visible = false;
                    signup.Visible = false;
                    logout.Visible = true;
                    loggermsg.Visible = true;
                    loggermsg.Text = "Hello Admin";
                    adminlogin.Visible = true;
                    authormgmt.Visible = true;
                    publishermgmt.Visible = true;
                    bookinvt.Visible = true;
                    bokissue.Visible = true;
                    membermanagement.Visible = true;
                }
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.ToString() + "'");
            }

        }

        protected void userlogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Userlogin.aspx");
        }

        protected void adminlogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminlogin.aspx");
        }

        protected void signup_Click(object sender, EventArgs e)
        {
            Response.Redirect("Usersignup.aspx");
        }

        protected void authormgmt_Click(object sender, EventArgs e)
        {
            Response.Redirect("AuthorManagement.aspx");
        }

        protected void publishermgmt_Click(object sender, EventArgs e)
        {
            Response.Redirect("PublisherManagement.aspx");
        }

        protected void loggermsg_Click(object sender, EventArgs e)
        {
            Response.Redirect("Userprofile.aspx");
        }

        protected void bokissue_Click(object sender, EventArgs e)
        {
            Response.Redirect("Bookissuing.aspx");
        }

        protected void bookinvt_Click(object sender, EventArgs e)
        {
            Response.Redirect("Bookinventory.aspx");
        }

        protected void membermanagement_Click(object sender, EventArgs e)
        {
            Response.Redirect("Membermanagement.aspx");
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session["username"] ="";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] = "";
            userlogin.Visible = true;
            signup.Visible = true;
            logout.Visible = false;
            loggermsg.Visible = false;
            adminlogin.Visible = true;
            authormgmt.Visible = false;
            publishermgmt.Visible = false;
            bookinvt.Visible = false;
            bokissue.Visible = false;
            membermanagement.Visible = false;
            //Session["status"] = sdr.GetValue(10).ToString();
        }
    }
}