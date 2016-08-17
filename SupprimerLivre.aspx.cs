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
        string NumLivre = TextBox1.Text;

        cn.Open();
        OleDbCommand cmd2 = new OleDbCommand();

        cmd2.Connection = cn;
        cmd2.CommandText = "delete from livres where NumLivre=" + NumLivre;
        cmd2.ExecuteNonQuery();
        Label2.Text = "livre supprimer";
        TextBox1.Text = "";
        cn.Close();
    }
}