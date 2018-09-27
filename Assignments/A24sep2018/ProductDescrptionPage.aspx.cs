using System;
using System.Collections.Generic;
using DAL.Model;
using DAL.Repository;


namespace A24sep2018
{
    public partial class ProductDescrptionPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!Context.User.IsInRole("User"))
            //{

            //    Response.Redirect("NotAuthorized.aspx");
            //}
            ProductRepositoy r = new ProductRepositoy();
            List<Product> L = r.GetallProducts();
            int id = Convert.ToInt32(Request.QueryString["id"]);

            foreach (Product p in L)
            {
                if (id == p.PId)
                {

                    Image1.ImageUrl = p.PURL.ToString();
                    ProductName.Text = p.PName.ToString();
                    ProductPrice.Text = p.PPrice.ToString();
                    ProductDescrption.Text = p.PDescription.ToString();
                }
             
            }
        }
    }
}