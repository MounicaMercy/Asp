using System;
using DAL.Model;
using DAL.Repository;

namespace A24sep2018
{
    public partial class ProductDelete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ProductRepositoy r = new ProductRepositoy();
            int id = Convert.ToInt32(Request.QueryString["id"]);
            Product P = r.GetProduct(id);
        
            ProductId.Text = P.PId.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int pid = Convert.ToInt32(ProductId.Text.ToString());
            ProductRepositoy PR = new ProductRepositoy();
            PR.Delete(pid);
            Response.Redirect("ProductManagementPage.aspx");
        }
    }
}