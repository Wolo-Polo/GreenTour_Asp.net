using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace GUI
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            //số người onl
            Application["SONGUOIONLINE"] = 0;
            //số lượt truy cập
            Application.Lock();
            System.IO.StreamReader sr;
            sr = new System.IO.StreamReader(Server.MapPath("SL.txt"));
            string S = sr.ReadLine();
            sr.Close();
            Application.UnLock();
            Application["SOLUOTTRUYCAP"] = S;

        }

        protected void Session_Start(object sender, EventArgs e)
        {
            //số người onl
            var soNguoiOnline = Application["SONGUOIONLINE"];
            if (soNguoiOnline == null)
            {
                Application["SONGUOIONLINE"] = 1;
            }
            else
            {
                int s = int.Parse(Application["SONGUOIONLINE"].ToString());
                Application["SONGUOIONLINE"] = s + 1;
            }
            //số lượt truy cập
            Application["SOLUOTTRUYCAP"] = int.Parse(Application["SOLUOTTRUYCAP"].ToString()) + 1;
            System.IO.StreamWriter sw;
            sw = new System.IO.StreamWriter(Server.MapPath("SL.txt"));
            sw.Write(Application["SOLUOTTRUYCAP"].ToString());
            sw.Close();
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            var soNguoiOnline = Application["SONGUOIONLINE"];
            if (soNguoiOnline == null)
            {
                Application["SONGUOIONLINE"] = 0;
            }
            else
            {
                int s = int.Parse(Application["SONGUOIONLINE"].ToString());
                Application["SONGUOIONLINE"] = s - 1;
            }
        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}
