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

public partial class Default2 : System.Web.UI.Page
{
    public OleDbConnection cn = new OleDbConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        
        // il faut changer le lien de la base de donnees 
        cn.ConnectionString = "provider=microsoft.Jet.Oledb.4.0; data Source=C:\\Users\\ismail\\Documents\\Visual Studio 2010\\WebSites\\UnPeuPlus\\librairie.mdb";
    
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string Nom = TextBox1.Text;
        string Prenom = TextBox2.Text;
        DateTime date_ins = DateTime.Now.Date;


        int NumClient;
        string username = TextBox3.Text;
        string mdp1 = TextBox4.Text;
        string mdp2 = TextBox5.Text;


        cn.Open();
        OleDbCommand cmd1 = new OleDbCommand();
        cmd1.Connection = cn;
        cmd1.CommandText = "select Max(NumClient)  from clients ";

        OleDbDataReader rd = cmd1.ExecuteReader();
        int counter = 0;
        while (rd.Read())
        {
            counter=rd.GetInt32(0);
        }
        NumClient = counter+1;

      

       
        if (mdp1 == mdp2)
        {


            OleDbCommand cmd2 = new OleDbCommand();

            cmd2.Connection = cn;
            cmd2.CommandText = "insert into clients  values ('" + NumClient + "','" + Nom + "','" + Prenom + "','" + date_ins + "','" + username + "','" + mdp1 + "')";
            cmd2.ExecuteNonQuery();
             //Response.Redirect("~/login.aspx");
            Label6.Text = "Client ajouté";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";

        }
        else
        {
            Label6.Text = "mot de passe non identique";
        }
        cn.Close();
    }



protected void  Button2_Click(object sender, EventArgs e)
{
     TextBox1.Text = ""; TextBox2.Text = ""; TextBox3.Text = ""; TextBox4.Text = ""; TextBox5.Text = "";
}

}
