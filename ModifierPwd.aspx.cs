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
        Label5.Text = (string)Session["login"];

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string login = (string)Session["login"];
        string nom= NVnom.Text;
        string prenom = NVprenom.Text;
        string password = TextBox1.Text;
        string NVpassword = TextBox2.Text;
        string Nvpassword2 = TextBox3.Text;

        cn.ConnectionString = "provider=microsoft.Jet.Oledb.4.0; data Source=C:\\Users\\ismail\\Documents\\Visual Studio 2010\\WebSites\\UnPeuPlus\\librairie.mdb";
        cn.Open();

        OleDbCommand cmd = new OleDbCommand();
        cmd.Connection = cn;
        cmd.CommandText = "select NumClient from clients where login = '" + login + "' and '" + password + "'";

        OleDbDataReader rd = cmd.ExecuteReader();

        int NumclientID = 0;
        while (rd.Read())
        {
            NumclientID = rd.GetInt32(0);
        }
        
        if (NumclientID == 0)
        {
            Label4.Text = "Mot de passe incorrecte";
        }
            
        else
        {
            if (NVpassword == Nvpassword2)
            {
                
                try
                {
                    OleDbCommand cmd1 = new OleDbCommand();
                    cmd1.Connection = cn;
                    string query = "update clients set nom = '" + nom + "', prenom = '" + prenom + "', password='" + TextBox2.Text + "' where login ='" + login + "'";
                    //string query = "update clients set nom = '" + nom + "', prenom = '" + prenom + "',password= where login ='" + login + "'";
                    Label4.Text = query;
                    cmd1.CommandText = query;
                    ////Label4.Text = query;
                    cmd1.ExecuteNonQuery();
                    Label4.Text = "ligne modifier";

                    //Response.Redirect("~/login.aspx");
                }
                catch (Exception ex)
                {
                    Label4.Text = ex.Message;
                }
               

            }
            else
            {
                Label4.Text = "Mot de passe non identique";
            }
        }
        cn.Close();
       
    }
}