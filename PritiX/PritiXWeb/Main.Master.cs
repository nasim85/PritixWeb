using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PritiXWeb.Controller;

namespace PritiXWeb
{
    public partial class Main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userID"] != null)
            {
                DataAccess da = new DataAccess();
                displayName.InnerText = da.getUserDisplayName(Convert.ToInt32(Session["userID"]));
                
            }
            else
            {
                displayName.InnerText = "Guest";
                
            }
        }
    }
}