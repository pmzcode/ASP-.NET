using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EventsAndSystemParams
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            Label1.Text += "Page Init->";
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text += "Page load->";
        }

        protected void Page_Prerender(object sender, EventArgs e)
        {
            Label1.Text += "Page Prerender->";
        }

        protected void Page_Unload(object sender, EventArgs e)
        {
            Label1.Text += "Page Unload->";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text += "Button Click->";
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            Label1.Text += "Checked->";
        }

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {
            Label1.Text += "Checked with Apb->";
        }
    }
}