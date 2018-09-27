using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL.Model;
using DAL.Repository;

namespace A24sep2018
{
    public partial class ProductManagementPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Context.User.IsInRole("Product"))
            {

                Response.Redirect("NotAuthorized.aspx");
            }


            Table T = new Table();
            ProductRepositoy r = new ProductRepositoy();
            List<Product> L = r.GetallProducts();
            foreach (Product p in L)
            {
                TableRow TR = new TableRow();
                T.Rows.Add(TR);
                TableCell TC = new TableCell();
                Image im = new Image();
                im.ImageUrl = "~/" + p.PURL.ToString();
                im.Width = 161;
                im.Height = 217;

                HyperLink HLPreview = new HyperLink();
                HLPreview.Text = "Pre-View";
                HLPreview.ID = "Hyperlink_file";
                HLPreview.NavigateUrl = "ProductPreview.aspx?id=" + p.PId;

                HyperLink HLUpdate = new HyperLink();
                HLUpdate.Text = "Update";
                HLUpdate.ID = "Hyperlink_file";
                HLUpdate.NavigateUrl = "ProductUpdate.aspx?id=" + p.PId;

                HyperLink HLDelete = new HyperLink();
                HLDelete.Text = "Delete";
                HLDelete.ID = "Hyperlink_file";
                HLDelete.NavigateUrl = "ProductDelete.aspx?id=" + p.PId;

                PlaceHolder1.Controls.Add(im);
                PlaceHolder1.Controls.Add(HLPreview);
                PlaceHolder1.Controls.Add(HLUpdate);
                PlaceHolder1.Controls.Add(HLDelete);
                TR.Cells.Add(TC);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProductNew.aspx");
        }
    }
}