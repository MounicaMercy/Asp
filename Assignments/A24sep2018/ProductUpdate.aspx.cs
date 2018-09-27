using System;
using DAL.Model;
using DAL.Repository;
using System.Collections.Generic;


namespace A24sep2018
{
    public partial class ProductUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ProductRepositoy r = new ProductRepositoy();
                BrandRepository br = new BrandRepository();
                int id = Convert.ToInt32(Request.QueryString["id"]);
                Product P = r.GetProduct(id);
                List<Brand> L = br.GetBrand();

                ProductIdtxt.Text = P.PId.ToString();
                ProdcutImgUrltxt.Text = P.PURL.ToString();
                ProductNametxt.Text = P.PName.ToString();
                ProductPricetxt.Text = P.PPrice.ToString();
                Decriptiontxt.Text = P.PDescription.ToString();
                foreach (Brand b in L)
                {
                    DropDownList1.SelectedValue = b.BrandId.ToString();
                }
            }
        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            int pid=Convert.ToInt32(ProductIdtxt.Text);
            String Pname= ProductNametxt.Text;
            String URL= ProdcutImgUrltxt.Text;
            int price=Convert.ToInt32(ProductPricetxt.Text);
            
            String Dec= Decriptiontxt.Text;
            int BrandId = Convert.ToInt32(DropDownList1.SelectedValue);

            ProductRepositoy PR = new ProductRepositoy();
            PR.Update(pid,Pname, price, URL,Dec,BrandId);
            Response.Redirect("ProductManagementPage.aspx");

        }
    }
}