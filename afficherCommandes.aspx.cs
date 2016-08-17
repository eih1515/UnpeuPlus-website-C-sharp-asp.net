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
        Label1.Text = (string)Session["login"];

        string username = (string)Session["login"];
        // il faut changer le lien de la base de donnees 
        cn.ConnectionString = "provider=microsoft.Jet.Oledb.4.0; data Source=C:\\Users\\ismail\\Documents\\Visual Studio 2010\\WebSites\\UnPeuPlus\\librairie.mdb";
        cn.Open();

      
        OleDbCommand cmd = new OleDbCommand();
        cmd.Connection = cn;
        cmd.CommandText = "select NumClient from clients where login = '" + username + "'";

        OleDbDataReader rd = cmd.ExecuteReader();

        int NumclientID = 0;
        while (rd.Read())
        {
            NumclientID = rd.GetInt32(0);
        }
        cn.Close();

        Label2.Text = NumclientID.ToString();

    }
}