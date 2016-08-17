using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        
        try
        {
            SmtpClient client= new SmtpClient("smtp.gmail.com",587);
            client.EnableSsl = true;
            client.Timeout = 10000;
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            client.UseDefaultCredentials = false;
            client.Credentials = new NetworkCredential("hamrini.ismail@gmail.com", "Ihamrini,1989");
            MailMessage msg = new MailMessage();
            msg.To.Add(YourEmail.Text);
            msg.From = new MailAddress("hamrini.ismail@gmail.com");
            msg.Subject = YourSubject.Text;
            msg.Body = Comments.Text;
            client.Send(msg);
            DisplayMessage.Text = "message envoyé";
            YourName.Text = "";
            YourEmail.Text = "";
            YourSubject.Text = "";
            Comments.Text = "";
        }
        catch (Exception ex) {
            DisplayMessage.Text =ex.Message;
        }
    }
    
}