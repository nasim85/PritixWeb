using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PritiXWeb.Controller;

namespace PritiXWeb
{

  
    public partial class Dictoraries : System.Web.UI.Page
    {
        int userid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                checkLogin();
                bindGrid();
            }
        }


        protected void bindGrid()
        {
            DataAccess ds = new DataAccess();
            GridView1.DataSource = ds.Directories(userid);
            GridView1.DataBind();
        }


        protected void checkLogin()
        {
            if (Session["userID"] != null)
            {
                userid = Convert.ToInt32(Session["userID"]);
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridView2.DataBind();
        }
    }
}