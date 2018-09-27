using System;
using DAL.Model;
using DAL.Repository;

using System.Collections.Generic;
using System.Web.UI.WebControls;

namespace A24sep2018
{
    public partial class ProductNew : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            
          
            String Pname = ProductName.Text;
            int price = Convert.ToInt32(Productprice.Text.ToString());
            String URL = ProductImgUrl.Text;
            String Dec = Description.Text;
            int BrandId =Convert.ToInt32( DropDownList1.SelectedValue);
            ProductRepositoy PR = new ProductRepositoy();
            PR.Insert( Pname, price, URL, Dec, BrandId);
            
            Response.Redirect("ProductManagementPage.aspx");
        }

       

        protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }      
}
