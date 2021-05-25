using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;

namespace Assessment.Helpers
{
    public class Helper
    {
        public static bool NumberValidation(string amt)
        {
            String NumRegex = @"^[1-9]\d*(\.\d+)?$";
            if (Regex.IsMatch(amt, NumRegex))
            {
                return true;
            }
            return false;
        }
        public static string generateID(string type = "number")
        {
            string uniqueID = Guid.NewGuid().ToString("N");
            return uniqueID;
        }
        public static void WriteLog(string strError)
        {
            try
            {
                string AppPath = AppDomain.CurrentDomain.BaseDirectory;
                string strLog = @"LOG\";
                string strFilePath = AppPath + strLog;

                if (!(Directory.Exists(strFilePath)))
                {
                    Directory.CreateDirectory(strFilePath);
                }
                string fn = string.Format("{0}{1}.txt", strFilePath, DateTime.Now.ToString("ddMMyyyy"));
                FileStream fs = new FileStream(fn, FileMode.Append, FileAccess.Write, FileShare.ReadWrite);

                StreamWriter writer = new StreamWriter(fs);
                writer.WriteLine(string.Format("[ {0} ] {1}", DateTime.Now.ToString("HH:mm:ss"), strError));
                writer.Close();
                fs.Close();
            }
            finally
            {
                //nothing
            }

        }
        public static string encrypt(string text, string password)
        {
            RijndaelManaged rijndaelCipher = new RijndaelManaged();

            rijndaelCipher.Mode = CipherMode.CBC;

            rijndaelCipher.Padding = PaddingMode.PKCS7;

            rijndaelCipher.KeySize = 128;

            rijndaelCipher.BlockSize = 128;

            byte[] pwdBytes = System.Text.Encoding.UTF8.GetBytes(password);

            byte[] keyBytes = new byte[16];

            int len = pwdBytes.Length;

            if (len > keyBytes.Length) len = keyBytes.Length;

            System.Array.Copy(pwdBytes, keyBytes, len);

            rijndaelCipher.Key = keyBytes;

            rijndaelCipher.IV = keyBytes;

            ICryptoTransform transform = rijndaelCipher.CreateEncryptor();

            byte[] plainText = Encoding.UTF8.GetBytes(text);

            byte[] cipherBytes = transform.TransformFinalBlock(plainText, 0, plainText.Length);

            return Convert.ToBase64String(cipherBytes);

        }

        public static string decrypt(string text, string password)
        {
            RijndaelManaged rijndaelCipher = new RijndaelManaged();

            rijndaelCipher.Mode = CipherMode.CBC;

            rijndaelCipher.Padding = PaddingMode.PKCS7;

            rijndaelCipher.KeySize = 128;

            rijndaelCipher.BlockSize = 128;

            byte[] encryptedData = Convert.FromBase64String(text);

            byte[] pwdBytes = System.Text.Encoding.UTF8.GetBytes(password);

            byte[] keyBytes = new byte[16];

            int len = pwdBytes.Length;

            if (len > keyBytes.Length) len = keyBytes.Length;

            System.Array.Copy(pwdBytes, keyBytes, len);

            rijndaelCipher.Key = keyBytes;

            rijndaelCipher.IV = keyBytes;
            //rijndaelCipher.Padding = PaddingMode.None ;
            ICryptoTransform transform = rijndaelCipher.CreateDecryptor();
            //t .Padding = PaddingMode.NONE
            byte[] plainText = transform.TransformFinalBlock(encryptedData, 0, encryptedData.Length);

            return Encoding.UTF8.GetString(plainText);

        }
    }
}