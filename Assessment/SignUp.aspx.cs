using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assessment
{
    public partial class SignUp : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
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
        protected void btnSignup_Click(object sender, EventArgs e)
        {
            try
            {
                
                if (txtUserId.Text.Trim() == "")
                {
                    showmsg("User ID is required.");
                    txtUserId.Focus();
                    return;
                }
                if (txtFName.Text.Trim() == "")
                {
                    showmsg("First name is required.");
                    txtFName.Focus();
                    return;
                }
                if (txtLName.Text.Trim() == "")
                {
                    showmsg("Last name is required.");
                    txtLName.Focus();
                    return;
                }
                if (txtMail.Text.Trim() == "")
                {
                    showmsg("Email is required.");
                    txtMail.Focus();
                    return;
                }
                if (txtNewPwd.Text.Trim() == "")
                {
                    showmsg("Password is required.");
                    txtNewPwd.Focus();
                    return;
                }
                if (txtCNewPwd.Text.Trim() == "")
                {
                    showmsg("Confirm password is required.");
                    txtCNewPwd.Focus();
                    return;
                }
                string[] items = new string[]
                {
                txtNewPwd.Text
                };

                foreach (string item in items)
                {
                    txtNewPwd.Text = item.TrimEnd(' ');
                }

                string[] items1 = new string[]
                {
                txtNewPwd.Text
                };

                foreach (string item in items1)
                {
                    txtNewPwd.Text = item.TrimStart(' ');//, '~', '!', '@', '#', '$', '%', '^', '&', '*', '(', ')', '_', '-', '=', '+', '{', '}', '[', ']', ';', ':', '"', '<', '>', '?', '/');
                }

                //confirm password 
                string[] items2 = new string[]
                {
                txtCNewPwd.Text
                };

                foreach (string item in items2)
                {
                    txtCNewPwd.Text = item.TrimEnd(' ');
                }

                string[] items3 = new string[]
                {
                txtCNewPwd.Text
                };

                foreach (string item in items3)
                {
                    txtCNewPwd.Text = item.TrimStart(' ');
                }
                if (txtNewPwd.Text != txtCNewPwd.Text)
                {
                    showmsg("New Password and Confirm Password should be same");
                    txtCNewPwd.Focus();
                    return;
                }
                string strNewPwd = "";
                strNewPwd = ReplaceFun(txtNewPwd.Text);
                bool flag = IsValidEmailAddress(txtMail.Text.Trim());
                if (!flag)
                {
                    showmsg("Please enter valid Email Id.");
                    txtMail.Focus();
                    return;
                }

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                string Query = " insert into SignUp values ('" + txtUserId.Text.ToUpper().Trim() + "','" + txtFName.Text.Trim() + "','" + txtLName.Text.Trim() + "','" + txtMail.Text.Trim() + "','" + strNewPwd + "')";
                cmd = new SqlCommand(Query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                //ClientScriptManager csm = Page.ClientScript;
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Surekha", "<script type='text/javascript' language='javascript'>alert('Signup is successful.');window.location.href='Login.aspx';</script>");
                ClearControls();
            }
            catch (Exception exe)
            {
                throw exe;
            }
        }
        private string ReplaceFun(string strString)
        {
            return strString.Replace("'", "''");
        }
        protected bool IsValidEmailAddress(string sEmail)
        {
            if (sEmail == null)
            {
                return false;
            }

            int nFirstAT = sEmail.IndexOf('@');
            int nLastAT = sEmail.LastIndexOf('@');

            if ((nFirstAT > 0) && (nLastAT == nFirstAT) &&
            (nFirstAT < (sEmail.Length - 1)))
            {
                // address is ok regarding the single @ sign
                return (Regex.IsMatch(sEmail, @"(\w+)@(\w+)\.(\w+)"));
            }
            else
            {
                return false;
            }
        }
        void ClearControls()
        {
         
            txtUserId.Text = "";
            txtFName.Text = "";
            txtLName.Text = "";
            txtMail.Text = "";
            txtNewPwd.Text = "";
            txtCNewPwd.Text = "";
            txtUserId.Focus();
        }
        protected void btnClear_Click(object sender, EventArgs e)
        {
            ClearControls();
        }
    }
}