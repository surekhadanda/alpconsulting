using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Assessment
{
    public partial class DefaultHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                lblUser.Text = Session["UserID"].ToString();
            }
            catch (Exception ex)
            {
               
                throw ex;
            }
        }
    }
}