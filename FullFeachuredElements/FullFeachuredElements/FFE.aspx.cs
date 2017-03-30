using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FullFeachuredElements
{
    public partial class FFE : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            this.MultiView1.ActiveViewIndex = (this.MultiView1.ActiveViewIndex + 1) % 3;
        }
        protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox2.Text = "Button2";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "Button1";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            TextBox3.Text = "Button3";
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            if (AdRotator2.KeywordFilter == null)
                this.AdRotator2.KeywordFilter = "b1";
            else if (AdRotator2.KeywordFilter == "b1")
                this.AdRotator2.KeywordFilter = "b2";
            else
                this.AdRotator2.KeywordFilter = "";
        }

        String dates = "";
        enum StepIndex { PERSDATA = 0, SELECT = 1, SERVICE = 2, PAYTYPE = 3, CONFIRM = 5 };
        protected void Wizard1_ActiveStepChanged(object sender, EventArgs e)
        {

            String buf = "";
            foreach (ListItem li in this.CheckBoxList1.Items)
            {
                if (li.Selected) buf += li.Value;
            }
            
                foreach (DateTime dt in this.Calendar1.SelectedDates)
                {
                    dates += dt.ToLongDateString();
                }
            

            if (Wizard1.ActiveStepIndex.Equals((int)StepIndex.CONFIRM))
            {
               
                this.Finish.Text = TextBox4.Text + TextBox5.Text + TextBox6.Text
                              + "<br>" + RadioButtonList1.SelectedValue
                              + "<br>" + buf
                              + "<br>" + ListBox1.SelectedValue
                              + "<br>" + dates;

            }
        }

        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {

        }


        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            //if (Calendar1.SelectionMode == CalendarSelectionMode.Day)
            //    Response.Write("<br/>" + Calendar1.SelectedDate.ToLongDateString());
            //else if (Calendar1.SelectionMode == CalendarSelectionMode.DayWeek)
            //{
            //    foreach (DateTime d in Calendar1.SelectedDates)
            //    {
            //        Response.Write("<br/>" + d.ToLongDateString());
            //    }
            //}
            //else if (Calendar1.SelectionMode == CalendarSelectionMode.DayWeekMonth)
            //{
            //    foreach (DateTime d in Calendar1.SelectedDates)
            //    {
            //        Response.Write("<br/>" + d.ToLongDateString());
            //    }
            //}

        }

        protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
        {
            TreeNode tn = this.TreeView1.SelectedNode;

            String txt = tn.Value;
            if (tn.ShowCheckBox != null && (bool)tn.ShowCheckBox) txt += (tn.Checked ? " установлен " : " сброшен ");
            this.Response.Write(txt);
            bool? h;

        }

        protected void TreeView1_TreeNodeCheckChanged(object sender, TreeNodeEventArgs e)
        {

            TreeNode tn = this.TreeView1.SelectedNode;
            this.Response.Write(tn.Value + (tn.Checked ? " установлен " : " сброшен "));
        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {

            Menu mnu = (Menu)sender;
            Response.Write(mnu.SelectedItem.Text + " " + mnu.SelectedItem.Value);
        }
    }
}