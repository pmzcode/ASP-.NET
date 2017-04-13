using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UserElements
{
    public partial class WebUserControl1 : System.Web.UI.UserControl
    {

        public String Name { get; set; }
        public String Surname { get; set; }
        public String SecondName { get; set; }
        public String Date { get; set; }
        public String Sex { get; set; }
        public String Faculty { get; set; }
        public String Group { get; set; }
        public String Year { get; set; }
        public String Btn1 { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Btn1 != null)
                this.Button1.Text = Btn1;
        }
    }
}