using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace A24sep2018
{
    public partial class OrderManagementPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Context.User.IsInRole("Order"))
            {

                Response.Redirect("NotAuthorized.aspx");
            }

        }
    }
}