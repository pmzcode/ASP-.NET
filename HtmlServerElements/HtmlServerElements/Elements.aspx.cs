using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace HtmlServerElements
{
    public partial class Elements : System.Web.UI.Page
    {

        HtmlTable t = new HtmlTable();
        HtmlTableRow r;
        HtmlTableCell c;


        protected void Page_Load(object sender, EventArgs e)
        {
            t.Border = 1;
            t.CellPadding = 3;
            t.CellSpacing = 3;
            t.Align = "center";
            t.BorderColor = "grey";
            r = new HtmlTableRow();
            c = new HtmlTableCell(); c.InnerHtml = "html Control"; r.Cells.Add(c);
            c = new HtmlTableCell(); c.InnerHtml = "onserverclick"; r.Cells.Add(c);
            c = new HtmlTableCell(); c.InnerHtml = "onserverchange"; r.Cells.Add(c);
            t.Rows.Add(r);
            Controls.Add(t);
        }

        protected void Submit1_ServerClick(object sender, EventArgs e)
        {
            r = new HtmlTableRow();
            c = new HtmlTableCell(); c.InnerHtml = "HtmlInputSubmit"; r.Cells.Add(c);
            c = new HtmlTableCell(); c.InnerHtml = "YES"; r.Cells.Add(c);
            c = new HtmlTableCell(); c.InnerHtml = "NO"; r.Cells.Add(c);
            t.Rows.Add(r);
        }

        protected void Text1_ServerChange(object sender, EventArgs e)
        {
            r = new HtmlTableRow();
            c = new HtmlTableCell(); c.InnerHtml = "HtmlInputText"; r.Cells.Add(c);
            c = new HtmlTableCell(); c.InnerHtml = "NO"; r.Cells.Add(c);
            c = new HtmlTableCell(); c.InnerHtml = "YES"; r.Cells.Add(c);
            t.Rows.Add(r);
        }

        protected void Checkbox1_ServerChange(object sender, EventArgs e)
        {
            r = new HtmlTableRow();
            c = new HtmlTableCell(); c.InnerHtml = "HtmlInputCheckBox"; r.Cells.Add(c);
            c = new HtmlTableCell(); c.InnerHtml = "NO"; r.Cells.Add(c);
            c = new HtmlTableCell(); c.InnerHtml = "YES"; r.Cells.Add(c);
            t.Rows.Add(r);
        }

        protected void Radio1_ServerChange(object sender, EventArgs e)
        {
            r = new HtmlTableRow();
            c = new HtmlTableCell(); c.InnerHtml = "HtmlInputRadioButton 1"; r.Cells.Add(c);
            c = new HtmlTableCell(); c.InnerHtml = "NO"; r.Cells.Add(c);
            c = new HtmlTableCell(); c.InnerHtml = "YES"; r.Cells.Add(c);
            t.Rows.Add(r);
        }


        protected void TextArea1_ServerChange(object sender, EventArgs e)
        {
            r = new HtmlTableRow();
            c = new HtmlTableCell(); c.InnerHtml = "HtmlInputTextArea"; r.Cells.Add(c);
            c = new HtmlTableCell(); c.InnerHtml = "NO"; r.Cells.Add(c);
            c = new HtmlTableCell(); c.InnerHtml = "YES"; r.Cells.Add(c);
            t.Rows.Add(r);
        }

        protected void Select1_ServerChange(object sender, EventArgs e)
        {
            r = new HtmlTableRow();
            c = new HtmlTableCell(); c.InnerHtml = "HtmlInputSelect"; r.Cells.Add(c);
            c = new HtmlTableCell(); c.InnerHtml = "NO"; r.Cells.Add(c);
            c = new HtmlTableCell(); c.InnerHtml = "YES"; r.Cells.Add(c);
            t.Rows.Add(r);
        }

     
        protected void Button1_ServerClick(object sender, EventArgs e)
        {
            r = new HtmlTableRow();
            c = new HtmlTableCell(); c.InnerHtml = "HtmlInputButton"; r.Cells.Add(c);
            c = new HtmlTableCell(); c.InnerHtml = "YES"; r.Cells.Add(c);
            c = new HtmlTableCell(); c.InnerHtml = "NO"; r.Cells.Add(c);
            t.Rows.Add(r);
        }

        protected void Reset1_ServerClick(object sender, EventArgs e)
        {
            r = new HtmlTableRow();
            c = new HtmlTableCell(); c.InnerHtml = "HtmlInputReset"; r.Cells.Add(c);
            c = new HtmlTableCell(); c.InnerHtml = "YES"; r.Cells.Add(c);
            c = new HtmlTableCell(); c.InnerHtml = "NO"; r.Cells.Add(c);
            t.Rows.Add(r);
        }

        protected void File1_ServerClick(object sender, EventArgs e)
        {
            r = new HtmlTableRow();
            c = new HtmlTableCell(); c.InnerHtml = "HtmlInputFile"; r.Cells.Add(c);
            c = new HtmlTableCell(); c.InnerHtml = "YES"; r.Cells.Add(c);
            c = new HtmlTableCell(); c.InnerHtml = "NO"; r.Cells.Add(c);
            t.Rows.Add(r);
        }

        protected void File1_ServerChange(object sender, EventArgs e)
        {
            r = new HtmlTableRow();
            c = new HtmlTableCell(); c.InnerHtml = "HtmlInputFile"; r.Cells.Add(c);
            c = new HtmlTableCell(); c.InnerHtml = "NO"; r.Cells.Add(c);
            c = new HtmlTableCell(); c.InnerHtml = "YES"; r.Cells.Add(c);        
            t.Rows.Add(r);
        }

        protected void Password1_ServerChange(object sender, EventArgs e)
        {
            r = new HtmlTableRow();
            c = new HtmlTableCell(); c.InnerHtml = "HtmlInputPassword"; r.Cells.Add(c);
            c = new HtmlTableCell(); c.InnerHtml = "NO"; r.Cells.Add(c);
            c = new HtmlTableCell(); c.InnerHtml = "YES"; r.Cells.Add(c);
            t.Rows.Add(r);
        }
    }
}