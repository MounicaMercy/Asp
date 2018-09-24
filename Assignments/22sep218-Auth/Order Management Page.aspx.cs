using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _22sep218_Auth
{
    public partial class Order_Management_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           if(!Context.User.IsInRole("Order"))
            {
                
                Response.Redirect("NotAuthorized.aspx");
            }

        }
    }
}