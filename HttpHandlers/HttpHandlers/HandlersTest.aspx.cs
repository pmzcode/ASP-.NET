using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HttpHandlers
{
    public partial class HandlersTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpWebRequest rq = (HttpWebRequest)HttpWebRequest.Create("http://172.16.0.86:40307/lr2/qw.pes?ParmA=q&ParmB=3");
            rq.Method = "GET";
            rq.GetResponse();
            HttpWebResponse rs = (HttpWebResponse)rq.GetResponse();
            StreamReader rdr = new StreamReader(rs.GetResponseStream());
            Label1.Text = rdr.ReadToEnd();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string URLAuth = "http://172.16.0.86:49309/lr2/qw.pes";
            string postString = string.Format("ParmA=post&ParmB=egor");

            const string contentType = "application/x-www-form-urlencoded";
            System.Net.ServicePointManager.Expect100Continue = false;

            HttpWebRequest webRequest = WebRequest.Create(URLAuth) as HttpWebRequest;
            webRequest.Method = "POST";
            webRequest.ContentType = contentType;
            webRequest.ContentLength = postString.Length;
      
            StreamWriter requestWriter = new StreamWriter(webRequest.GetRequestStream());
            requestWriter.Write(postString);
            requestWriter.Close();

            StreamReader responseReader = new StreamReader(webRequest.GetResponse().GetResponseStream());

            Label1.Text = responseReader.ReadToEnd();
            responseReader.Close();
            webRequest.GetResponse().Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string URLAuth = "http://172.16.0.86:40307/lr2/qw.pes";
            string postString = string.Format("ParmA=put&ParmB=egor");

            const string contentType = "application/x-www-form-urlencoded";
            System.Net.ServicePointManager.Expect100Continue = false;

            HttpWebRequest webRequest = WebRequest.Create(URLAuth) as HttpWebRequest;
            webRequest.Method = "PUT";
            webRequest.ContentType = contentType;
            webRequest.ContentLength = postString.Length;
        
            StreamWriter requestWriter = new StreamWriter(webRequest.GetRequestStream());
            requestWriter.Write(postString);
            requestWriter.Close();

            StreamReader responseReader = new StreamReader(webRequest.GetResponse().GetResponseStream());

            Label1.Text = responseReader.ReadToEnd();
            responseReader.Close();
            webRequest.GetResponse().Close();

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            try 
            {
                HttpWebRequest rq = (HttpWebRequest)HttpWebRequest.Create("http://172.16.0.86:40307/lr2/qw.pese");
                rq.Method = "GET";
                rq.GetResponse();
                HttpWebResponse rs = (HttpWebResponse)rq.GetResponse();
                StreamReader rdr = new StreamReader(rs.GetResponseStream());
                Label1.Text = rdr.ReadToEnd();
            }
            catch(WebException we)
            {
                Label1.Text = String.Format("{0} {1} {2} {3}", we.Status, we.Message, we.TargetSite, we.Source);
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {

        }
    }
}