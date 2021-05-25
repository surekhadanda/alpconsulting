using Assessment.Helpers;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assessment
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        string OTP = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["DB_Connection"].ConnectionString;
            con = new SqlConnection(strcon);
        }


        protected void showmsg(string Name)
        {
            ClientScriptManager csm = Page.ClientScript;
            csm.RegisterStartupScript(this.GetType(), Name, "<script type='text/javascript' language='javascript'>alert('" + Name + "');</script>");
        }




        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string struserid = txtUser.Text.Trim();
            string strpass = txtPwd.Text.Trim();

            try
            {
                if (struserid == "")
                {
                    showmsg("User Id is required");
                    txtUser.Focus();
                    return;
                }
                if (strpass == "")
                {
                    showmsg("password is required");
                    txtPwd.Focus();
                    return;
                }
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
               
                SqlCommand cmd = new SqlCommand("SP_Login", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@userid", struserid);
                cmd.Parameters.AddWithValue("@Password", strpass);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
               
               
                

                if (dt.Rows.Count > 0)
                {
                    Session["UserID"] = struserid;
                    Response.Redirect("HomePage.aspx");
                }
                else
                {
                    Label1.Text = "Your username or Password is incorrect";
                    Label1.ForeColor = System.Drawing.Color.Red;

                }
            }
            catch (Exception exe)
            {
                //    showmsg("The UserId or Password you entered is incorrect.");

                throw exe;
            }

        }
            protected void btnClear_Click(object sender, EventArgs e)
        {
            txtUser.Text = "";
            txtPwd.Text = "";
            txtUser.Focus();
        }
    }
}