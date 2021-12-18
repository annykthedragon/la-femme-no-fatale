using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;

namespace la_femme_no_fatale
{
    public partial class Leave : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.ToolTip = "Логин";
            TextBox2.ToolTip = "Пароль";


        }

        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\LaFemmeDatabase.mdf;Integrated Security=True");
        SqlCommand com = new SqlCommand();
        DataSet1 data = new DataSet1();

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                try
                {
                    string login = this.TextBox1.Text.Trim();
                    string password = this.TextBox2.Text.Trim();

                    com.CommandText = "Select * From Users where login=' " + TextBox1.Text + " ' and password=' " + TextBox2.Text + " ' ";
                    com.Connection = con;
                    con.Open();
                    SqlDataAdapter adp = new SqlDataAdapter(com.CommandText, con);
                    adp.Fill(data, "Users");
                    var rowCount = data.Tables["Users"].Rows.Count;

                    if (rowCount != 0)
                    {
                        com.CommandText = "Delete From Users where login=' " + TextBox1.Text + " ' and password=' " + TextBox2.Text + " ' ";
                        com.ExecuteNonQuery();
                        TextBox1.Text = "";
                        TextBox2.Text = "";
                        Label1.Text = "Вы больше не зарегистрированы. До новых встреч! ";
                        //Response.Redirect("Home.aspx");
                        try
                        {
                            MailMessage msg = new MailMessage();
                            string name = TextBox1.Text;
                            msg.From = new MailAddress("EmailChecking@yandex.ru");
                            msg.To.Add("42needsaquestion@gmail.com");
                            msg.Subject = "Обратная связь | Удаление аккаунта";
                            msg.Body = "Пользователь удалил свой аккаунт по следующей причине: \n" + TextArea1.InnerText;
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
                    else
                    {
                        Label1.Text = "Что-то не так! Проверьте заполненные поля.";
                    }
                }
                finally
                {
                    //TextBox1.Text = "";
                    //TextBox2.Text = "";
                    con.Close();
                }
            }
        }
    }
}