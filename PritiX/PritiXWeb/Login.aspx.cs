using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PritiXWeb.Controller;

namespace PritiXWeb
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Session.Abandon();
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            int userID;
            DataAccess da = new DataAccess();
            userID= da.LoginUser(inputEmail.Value, inputPassword.Value);

            if (userID != 0)
            {
                Session["userID"] = userID;
                Response.Redirect("Dictionaries.aspx");
            }
            else
            {
                message.Visible = true;
            }
           
        }
    }
}