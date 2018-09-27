using System;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL.Model;
using DAL.Repository;


namespace A24sep2018
{
    public partial class ProductPreview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ProductRepositoy r = new ProductRepositoy();
            List<Product> L = r.GetallProducts();
            int id = Convert.ToInt32(Request.QueryString["id"]);

            foreach (Product p in L)
            {
                if (id == p.PId)
                {
                    Productid.Text = p.PId.ToString();
                    images.ImageUrl = p.PURL.ToString();
                    Name.Text = p.PName.ToString();
                    Price.Text = p.PPrice.ToString();
                    Description.Text = p.PDescription.ToString();
                   
                }

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProductManagementPage.aspx");
        }
    }
}