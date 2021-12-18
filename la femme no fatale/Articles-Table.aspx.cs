using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace la_femme_no_fatale
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        DataClasses1DataContext data = new DataClasses1DataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Последнее обновление " + DateTime.Now.ToLongTimeString();
            string script = "return confirm('Вы уверены, что хотите обновить страницу?');";
            ButtonQ.Attributes.Add("onclick", script);
        }

        protected IEnumerable<Articles> GetData() 
        {
            var row = (from line in data.Articles
                       select line).ToArray();
            return row;
        }

        protected void ButtonQ_Click(object sender, EventArgs e)
        {
            Label1.Text = "Последнее обновление " + DateTime.Now.ToLongTimeString();
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            Label1.Text = "Последнее обновление " + DateTime.Now.ToLongTimeString();
        }
    }
}