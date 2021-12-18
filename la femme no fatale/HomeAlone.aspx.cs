using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace la_femme_no_fatale
{
    public partial class HomeAlone : System.Web.UI.Page
    {
        //protected void Page_Load(object sender, EventArgs e)
        //{
        //    TextBox1.ToolTip = "Логин";
        //    TextBox2.ToolTip = "Пароль";

        //    TextBox3.ToolTip = "Имя";
        //    TextBox4.ToolTip = "Логин";
        //    TextBox5.ToolTip = "Пароль";
        //}

        //SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\LaFemmeDatabase.mdf;Integrated Security=True");
        //SqlCommand com = new SqlCommand();
        //DataSet1 data = new DataSet1();

        ////Кнопка Войти
        //protected void ButtonX_Click(object sender, EventArgs e)
        //{
        //    if (Page.IsValid)
        //    {
        //        try
        //        {
        //            com.CommandText = "Select * From Users where login=' " + TextBox1.Text + " ' and password=' " + TextBox2.Text + " ' ";
        //            com.Connection = con;
        //            con.Open();
        //            SqlDataAdapter adp = new SqlDataAdapter(com.CommandText, con);
        //            adp.Fill(data, "Users");
        //            var rowCount = data.Tables["Users"].Rows.Count;

        //            if (rowCount != 0)
        //            {
        //                com.CommandText = "Select name From Users where login=' " + TextBox1.Text + " ' and password=' " + TextBox2.Text + " ' ";
        //                SqlCommand cmd = new SqlCommand(com.CommandText, con);


        //                string uname = cmd.ExecuteScalar().ToString();

        //                Label1.Text = "Добро пожаловать, " + uname + "!";
        //                con.Close();
        //                Response.Redirect("~/Home.aspx");

        //                /*HttpCookie login = new HttpCookie("login", TextBox1.Text);
        //                HttpCookie sign = new HttpCookie("sign", SignGenerator.GetSign(TextBox1.Text + "bytepp"));

        //                Response.Cookies.Add(login);
        //                Response.Cookies.Add(sign);

        //                Response.Redirect("Home.aspx");*/
        //            }
        //            else
        //            {
        //                Label1.Text = "Что-то не так!</br> Проверьте заполненные поля.";
        //            }
        //        }
        //        finally
        //        {
        //            con.Close();
        //        }
        //    }
        //}



        ////Кнопка регистрации
        //protected void ButtonY_Click(object sender, EventArgs e)
        //{
        //    if (Page.IsValid)
        //    {

        //        try
        //        {
        //            //Кнопка Войти
        //            com.CommandText = "Select * From Users where login=' " + TextBox4.Text + " ' ";

        //            com.Connection = con;
        //            con.Open();
        //            SqlDataAdapter adp = new SqlDataAdapter(com.CommandText, con);
        //            adp.Fill(data, "Users");
        //            var rowCount = data.Tables["Users"].Rows.Count;

        //            if (rowCount != 0)
        //            {
        //                Label1.Text = "Этот логин уже занят!</br> Введите другой e-mail.";
        //            }
        //            else
        //            {
        //                com.CommandText = "";
        //                Random rnd = new Random();
        //                data.EnforceConstraints = false;
        //                try
        //                {
        //                    com.CommandText = "Insert Into Users (id, name, login, password) values (' " + rnd.Next(2, 10000) + " ',' " + TextBox3.Text + " ', ' " + TextBox4.Text + " ',' " + TextBox5.Text + " ')";
        //                    com.ExecuteNonQuery();

        //                    Label1.Text = "Поздравляем!, " + TextBox1.Text + "!" + "</br>Ты теперь часть сообщества la femme не fatale. Не забудь войти.";
        //                    con.Close();
        //                    TextBox1.Text = TextBox4.Text;
        //                    TextBox2.Text = TextBox5.Text;
        //                }
        //                finally
        //                {
        //                    con.Close();
        //                }
        //            }
        //        }
        //        finally
        //        {
        //            con.Close();
        //        }
        //    }


        //}
    }
}