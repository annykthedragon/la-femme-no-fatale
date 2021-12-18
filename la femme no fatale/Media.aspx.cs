using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace la_femme_no_fatale
{
    public partial class Media : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*//ограничение на вход на страницу
            HttpCookie login = Request.Cookies["login"];
            HttpCookie sign = Request.Cookies["sign"];

            if (login != null && sign != null)
            {
                if (sign.Value != SignGenerator.GetSign(login.Value + "bytepp"))
                {
                    return;
                }
            }
            Response.Redirect("Enter.aspx");*/
        }
    }
}