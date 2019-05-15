using System;
using System.Net;
using System.Net.Mail;

public class sendEmail
{
    public sendEmail()
    {
    }

    public object MessageBox { get; private set; }

    public void AutoSendMail(string nguoinhan, string tieude, string noidung)
    {
        SmtpClient smtp = new SmtpClient();
        try
        {
            //ĐỊA CHỈ SMTP Server
            smtp.Host = "smtp.gmail.com";
            //Cổng SMTP
            smtp.Port = 587;
            //SMTP yêu cầu mã hóa dữ liệu theo SSL
            smtp.EnableSsl = true;
            //UserName và Password của mail
            smtp.UseDefaultCredentials = false;
            smtp.Credentials = new NetworkCredential("'nguyentienlen1997@gmail.com", "@prudential");
            MailAddress from = new MailAddress("nguyentienlen1997@gmail.com", "The Choco");
            MailMessage message = new MailMessage(from.ToString(), nguoinhan, tieude, noidung);
            message.IsBodyHtml = true;
            smtp.Send(message);
           
        }
        catch (Exception ex)
        {
            //MessageBox.Show(ex.Message);
        }
    }
}