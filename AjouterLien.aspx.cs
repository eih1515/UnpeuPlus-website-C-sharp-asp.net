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
        cn.ConnectionString = "provider=microsoft.Jet.Oledb.4.0; data Source=C:\\Users\\ismail\\Documents\\Visual Studio 2010\\WebSites\\UnPeuPlus\\librairie.mdb";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int Numlien;
        string NomSite=TextBox1.Text;
        string LienSite=TextBox2.Text;
        string description=TextBox3.Text;

        cn.Open();
        OleDbCommand cmd1 = new OleDbCommand();
        cmd1.Connection = cn;
        cmd1.CommandText = "select Max(Numliens)  from liens ";

        OleDbDataReader rd = cmd1.ExecuteReader();
        int counter = 0;
        while (rd.Read())
        {
            counter = rd.GetInt32(0);
        }
        Numlien = counter + 1;


        OleDbCommand cmd2 = new OleDbCommand();

        cmd2.Connection = cn;
        cmd2.CommandText = "insert into liens  values ('" + Numlien + "','" + NomSite + "','" + LienSite + "','" + description + "')";
        cmd2.ExecuteNonQuery();
        Label4.Text = "Lien ajouter";
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
    }
}