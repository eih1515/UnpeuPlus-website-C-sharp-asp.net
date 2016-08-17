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
        cn.ConnectionString = "provider=microsoft.Jet.Oledb.4.0; data Source=C:\\Users\\ismail\\Documents\\Visual Studio 2010\\WebSites\\UnPeuPlus\\librairie.mdb";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
           int NumeroClient;
           string login = TextBox1.Text;





           cn.Open();
           OleDbCommand cmd = new OleDbCommand();
           cmd.Connection = cn;
           cmd.CommandText = "select NumClient from clients where login = '" + login + "'";

           OleDbDataReader rd = cmd.ExecuteReader();

           int counter = 0;
           while (rd.Read())
           {
               counter = rd.GetInt32(0);
           }
           NumeroClient = counter;
           cn.Close();
           if (NumeroClient == 0)
           {
               Label2.Text = "Nom d'utilisateur n'existe pas";
           }
           else
           {

               cn.Open();
               OleDbCommand cmd1 = new OleDbCommand();
               cmd1.Connection = cn;
               cmd1.CommandText = "select N° from commandes where NumClient = " + NumeroClient ;

               OleDbDataReader rd1 = cmd1.ExecuteReader();
               
               int count = 0;
               while (rd1.Read())
               {
                   count++;
               }
               cn.Close();
               if (count == 0)
               {
                   cn.Open();
                   OleDbCommand cmd2 = new OleDbCommand();

                   cmd2.Connection = cn;
                   cmd2.CommandText = "delete from clients where login=" + login;
                   cmd2.ExecuteNonQuery();
                   Label2.Text = "Client supprimer";
                   TextBox1.Text = "";

                   cn.Close();
               }
               else 
               {
                   Label2.Text = "le clients a des Commandes, annuler ses commandes avant de le supprimer";
               }
           }
       

    }
}