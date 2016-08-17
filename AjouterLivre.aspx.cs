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
        int Numlivre;
        string isbn=TextBox1.Text;
        string titre = TextBox2.Text;
        string auteur = TextBox3.Text;
        string edition = TextBox4.Text;
        DateTime date_edition = Calendar1.SelectedDate;
        string categorie = DropDownList1.Text;
        string type = DropDownList2.Text;
        string prix = TextBox5.Text;
        int QTE = int.Parse(TextBox6.Text);
        string description = TextBox7.Text;

        cn.Open();
        OleDbCommand cmd1 = new OleDbCommand();
        cmd1.Connection = cn;
        cmd1.CommandText = "select Max(Numlivre)  from livres ";

        OleDbDataReader rd = cmd1.ExecuteReader();
        int counter = 0;
        while (rd.Read())
        {
            counter = rd.GetInt32(0);
        }
        Numlivre = counter + 1;


        OleDbCommand cmd2 = new OleDbCommand();

        cmd2.Connection = cn;
        cmd2.CommandText = "insert into livres  values ('" + Numlivre + "','" + isbn + "','" + titre + "','" + auteur + "','" + edition + "','" + date_edition + "','" + categorie + "','" + type + "','" + prix + "','" + QTE + "','" + description + "')";
        cmd2.ExecuteNonQuery();
        Label11.Text = "Livre ajouter";
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
    }
}