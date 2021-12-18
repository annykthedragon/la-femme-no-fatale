using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Data.SqlClient;

namespace la_femme_no_fatale
{
    public partial class Create : System.Web.UI.Page
    {



        protected void Page_Load(object sender, EventArgs e)
        {
            //подтверждение
            string script = "return confirm('Статья отправлена на проверку модератору.');";
            Button1.Attributes.Add("onclick", script);
        }

        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\LaFemmeDatabase.mdf;Integrated Security=True");
        SqlCommand com = new SqlCommand();
        DataSet1 data = new DataSet1();

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                com.CommandText = "Select * From Articles where a_author=' " + TextBox1.Text + " ' and a_name=' " + TextBox2.Text + " ' ";

                com.Connection = con;
                con.Open();
                SqlDataAdapter adp = new SqlDataAdapter(com.CommandText, con);
                adp.Fill(data, "Articles");
                var rowCount = data.Tables["Articles"].Rows.Count;

                if (rowCount != 0)
                {
                    Label1.Text = "Этот логин уже занят!</br> Введите другой e-mail.";
                }
                else
                {
                    com.CommandText = "";
                    Random rnd = new Random();
                    data.EnforceConstraints = false;
                    try
                    {
                        DateTime myDateTime = DateTime.Now;
                        string sqlFormattedDate = myDateTime.ToString("yyyy-MM-dd HH:mm:ss.fff");
                        com.CommandText = "Insert Into Articles (a_id, a_author, a_name, a_time) values (' " + rnd.Next(2, 10000) + " ',' " + TextBox1.Text + " ', ' " + TextBox2.Text + " ', ' " + sqlFormattedDate + " ')";
                        com.ExecuteNonQuery();
                        con.Close();

                        try
                        {
                            MailMessage msg = new MailMessage();
                            string name = TextBox1.Text;
                            msg.From = new MailAddress("EmailChecking@yandex.ru");
                            msg.To.Add("42needsaquestion@gmail.com");
                            msg.Subject = "Авторство | " + TextBox2.Text;
                            msg.Body = "Пользователем la femme не fatale " + name + " была написана статья: \n" + TextArea1.InnerText;
                            SmtpClient sc = new SmtpClient("smtp.yandex.ru");
                            sc.Port = 25;
                            sc.Credentials = new NetworkCredential("emailchecking@yandex.ru", "123checking");
                            sc.EnableSsl = true;
                            sc.Send(msg);

                        }

                        catch (Exception ex)
                        {
                            Response.Write(ex.Message);
                        }
                    }
                    finally
                    {
                        con.Close();
                    }
                }
            }
            finally
            {
                con.Close();
            }
        }


    }
}