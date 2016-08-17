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

public partial class _Default : System.Web.UI.Page
{
    public OleDbConnection cn = new OleDbConnection();


    protected void Page_Load(object sender, EventArgs e)
    {
        Label8.Text = (string)Session["login"];
        


        // il faut changer le lien de la base de donnees 
        cn.ConnectionString = "provider=microsoft.Jet.Oledb.4.0; data Source=C:\\Users\\ismail\\Documents\\Visual Studio 2010\\WebSites\\UnPeuPlus\\librairie.mdb";
        cn.Open();
       
        cn.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string username= (string)Session["login"];

        
        int Numlivre=Convert.ToInt32(TextBox1.Text);;
        DateTime date_cmd = DateTime.Now.Date;
        DateTime date_liv=Calendar1.SelectedDate;
        int Qte = Convert.ToInt32(TextBox2.Text); ;



        cn.Open();
        OleDbCommand cmd = new OleDbCommand();
        cmd.Connection = cn;
        cmd.CommandText = "select NumClient from clients where login = '" + username + "'";

        OleDbDataReader rd = cmd.ExecuteReader();

        int counter = 0;
        while (rd.Read())
        {
            counter = rd.GetInt32(0);
        }
        cn.Close();


        cn.Open();
        //OleDbCommand cmd1 = new OleDbCommand();
        //cmd1.Connection = cn;
        //cmd1.CommandText = "select Max(N°) from commandes ";

        //OleDbDataReader rd1 = cmd1.ExecuteReader();
        //int idcmd = 0;
        //while (rd1.Read())
        //    idcmd = (int)rd1.GetInt32(0);    // numero de commande

        //idcmd++;
        //id = count + 1;
       





        OleDbCommand cmd2 = new OleDbCommand();

        cmd2.Connection = cn;
        cmd2.CommandText = "insert into commandes (NumLivre,NumClient,dateCommande,dateLivraison,quantites) values ('" + Numlivre + "','" + counter + "','" + date_cmd + "','" + date_liv + "','" + Qte + "')";
        cmd2.ExecuteNonQuery();

        Label7.Text = "commande ajouter";
        cn.Close();
    }
}