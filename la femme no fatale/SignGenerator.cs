using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Security.Cryptography;

namespace la_femme_no_fatale
{
    public static class SignGenerator //кукисы
    {
        public static string GetSign(string s)  //цифровая подпись
        {
            MD5CryptoServiceProvider provider = new MD5CryptoServiceProvider(); //экземпляр класса

            byte[] hash = provider.ComputeHash(Encoding.Default.GetBytes(s));  //массив байтов

            return BitConverter.ToString(hash).ToLower().Replace("-", "");  //вернём пользователю цифровую подпись в виде строки
        }
    }
}