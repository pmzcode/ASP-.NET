using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EventsAndSystemParams
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.Response.Write("<br><b> Имя компьютера:</b>" + System.Environment.MachineName);
            this.Response.Write("<br><b> Версия ОС:</b>" + System.Environment.OSVersion);
            this.Response.Write("<br><b> Объем памяти:</b>" + System.Environment.WorkingSet);
            this.Response.Write("<br><b> Версия ASP.NET:</b>" + System.Environment.Version.ToString());
            this.Response.Write("<br><b> IP:</b>" + HttpContext.Current.Request.ServerVariables["LOCAL_ADDR"]);
            this.Response.Write("<br><b> Временный каталог:</b>" + System.Environment.GetEnvironmentVariable("TEMP"));
            this.Response.Write("<br><b> Запрос:</b>" + (Request.IsLocal? " локальный ":"не защищенный")+","+
            (Request.IsSecureConnection? " защищенный ": " не защищенный "));
            this.Response.Write("<br><b> Браузер:</b>" + Request.Browser.Version + "," + Request.Browser.MajorVersion + ","+
            Request.Browser.MinorVersion);
        }
    }
}