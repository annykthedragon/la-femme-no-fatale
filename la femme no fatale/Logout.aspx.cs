using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace la_femme_no_fatale
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie login = new HttpCookie("login", string.Empty);
            HttpCookie sign = new HttpCookie("sign", string.Empty);


            login.Expires = DateTime.Now.AddDays(-1);
            sign.Expires = DateTime.Now.AddDays(-1);
            
            //кукисы, которые есть у пользователя заменяются на просроченные и удаляются
            Response.Cookies.Add(login);
            Response.Cookies.Add(login);

            Response.Redirect("Home.aspx");

        }
    }
}