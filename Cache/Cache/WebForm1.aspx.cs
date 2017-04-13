using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cache
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private static string GetDate(HttpContext context)
        {
            return "<b>" + DateTime.Now.ToString() + "</b>";
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}