using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Huellitas1
{
    public partial class _06_Shop : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {




        }
        protected void Gender_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Redirect("06_ShopEsp.aspx");
        }
    }
}