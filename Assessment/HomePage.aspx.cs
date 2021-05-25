using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Assessment
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                Response.Redirect("sessionExpired.aspx", true);
            }
            lblUser1.Text = Session["UserID"].ToString();
        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {
            try
            {
                Session.Abandon();
                Response.Redirect("Login.aspx", false);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}