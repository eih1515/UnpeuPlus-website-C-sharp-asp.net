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

        // il faut changer le lien de la base de donnees 
        cn.ConnectionString = "provider=microsoft.Jet.Oledb.4.0; data Source=C:\\Users\\ismail\\Documents\\Visual Studio 2010\\WebSites\\UnPeuPlus\\librairie.mdb";
    
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string login = username.Text;
        Session["login"] = login;
        

        cn.Open();
        OleDbCommand cmd = new OleDbCommand();
        cmd.Connection = cn;
        cmd.CommandText = "select * from clients where login = '" +login + "' and password='" + password.Text + "'";

        OleDbDataReader rd = cmd.ExecuteReader();
        int count = 0;
        while (rd.Read())
        {
            count++;
        }

        if (count != 0)
        {
            if (login == "admin")
            {
                Response.Redirect("~/AdminCompte.aspx");
            }
            else
            {
                Response.Redirect("~/compte.aspx");
            }
        }
        else
        {
            Label3.Text = "Essayer a nouveau";

        }
        cn.Close();
    }
}