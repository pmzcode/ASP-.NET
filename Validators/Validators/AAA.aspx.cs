using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Validators
{
    public partial class AAA : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            try { args.IsValid = (int.Parse(args.Value) % 1 == 0 && int.Parse(args.Value) % int.Parse(args.Value) == 0); }
            catch { args.IsValid = false; }
        }
    }
}