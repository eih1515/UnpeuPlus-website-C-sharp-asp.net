using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Web.Security;
using System.Data;
using System.Net.Mail;
using System.Net;

public partial class _Default : System.Web.UI.Page
{
    public OleDbConnection cn = new OleDbConnection();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.ConnectionString = "provider=microsoft.Jet.Oledb.4.0; data Source=C:\\Users\\ismail\\Documents\\Visual Studio 2010\\WebSites\\UnPeuPlus\\librairie.mdb";
        cn.Open();

        string login = TextBox2.Text;
        string AdresseMail = TextBox1.Text;
        string password="";

        OleDbCommand cmd = new OleDbCommand();
        cmd.Connection = cn;
        cmd.CommandText = "select password from clients where login = '" + login + "'";

        OleDbDataReader rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            password = rd.GetString(0);
        }
        if (password == "")
        {
            Label3.Text = "Nom d'utilisateur n'existe pas";
        }
        else
        {
            try
            {
                SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                client.EnableSsl = true;
                client.Timeout = 10000;
                client.DeliveryMethod = SmtpDeliveryMethod.Network;
                client.UseDefaultCredentials = false;
                client.Credentials = new NetworkCredential("hamrini.ismail@gmail.com", "Ihamrini,1989");
                MailMessage msg = new MailMessage();
                msg.To.Add(AdresseMail);
                msg.From = new MailAddress("hamrini.ismail@gmail.com");
                msg.Subject = "Récupération mot de passe Compte utilisateur";
                msg.Body = "Votre mot de passe est : " + password;
                client.Send(msg);
                Label3.Text = "message envoyé";
                TextBox1.Text = "";
                TextBox2.Text = "";
                cn.Close();
            }
            catch (Exception ex)
            {
                Label3.Text = ex.Message;
            }
        }


    }
}