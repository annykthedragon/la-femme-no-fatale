using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

namespace la_femme_no_fatale
{
    public partial class Feedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string script = "return confirm('Сообщение отправлено. Ждите ответа!');";
            Button1.Attributes.Add("onclick", script);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                MailMessage msg = new MailMessage();
                string name = TextBox1.Text;
                msg.From = new MailAddress("EmailChecking@yandex.ru");
                msg.To.Add("42needsaquestion@gmail.com");
                msg.Subject = "Обратная связь | " + TextBox2.Text;
                msg.Body = "Сообщение от  " + name + ": \n" + TextArea1.InnerText;
                SmtpClient sc = new SmtpClient("smtp.yandex.ru");
                sc.Port = 25;
                sc.Credentials = new NetworkCredential("emailchecking@yandex.ru", "123checking");
                sc.EnableSsl = true;
                sc.Send(msg);
                //Response.Write("Mail Sent");

            }

            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

    }
}