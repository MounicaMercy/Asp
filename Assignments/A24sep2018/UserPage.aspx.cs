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
    public partial class UserPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            Table T = new Table();
            ProductRepositoy r = new ProductRepositoy();
            List<Product> L = r.GetallProducts();
            foreach (Product p in L)
            {
                TableRow TR = new TableRow();
                T.Rows.Add(TR);
                TableCell TC = new TableCell();
                Image im = new Image();
                im.ImageUrl = "~//" + p.PURL.ToString();
                im.Width = 161;
                im.Height = 217;
            
                HyperLink HL = new HyperLink();
                HL.Text = p.PName.ToString();
                HL.ID = "Hyperlink_file";
                HL.NavigateUrl = "ProductDescrptionPage.aspx?id=" + p.PId;
                PlaceHolder1.Controls.Add(im);
                PlaceHolder1.Controls.Add(HL);
                TR.Cells.Add(TC);
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name=UserSearch.Text;
            ProductRepositoy r = new ProductRepositoy();
            r.Search(name);

        }
    }
}
