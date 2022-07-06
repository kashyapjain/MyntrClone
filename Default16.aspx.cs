 using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class Default16 : System.Web.UI.Page
{
    SqlDataAdapter adp;
    DataSet ds = new DataSet();
    SqlConnection con = new SqlConnection();
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = "Data Source=LAPTOP-7FSEBR6V\\SQLEXPRESS;Initial Catalog=thefashionstore;Integrated Security=True;";
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql1 = "insert into login_info values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')";

        cmd = new SqlCommand(sql1, con);
        cmd.ExecuteNonQuery();

        Label1.Text = "successful login ";

        Session["ctnm"] = "1";

        Session["fnt"] = TextBox1.Text;

        Response.Redirect("Default.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string sql1 = "select * from login_info where e_id='"+ TextBox1.Text+"';";

        adp = new SqlDataAdapter(sql1, con);
        adp.Fill(ds, "catnm");

        for (int q = 0; q < ds.Tables["catnm"].Rows.Count; q++)
        {
            if (ds.Tables["catnm"].Rows[q][0].ToString() == TextBox1.Text && ds.Tables["catnm"].Rows[q][1].ToString() == TextBox2.Text && ds.Tables["catnm"].Rows[q][2].ToString() == TextBox3.Text)
            {
                if (TextBox1.Text == "kashyapjain2018@gmail.com" && TextBox2.Text == "6239771997" && TextBox3.Text == "kashyapjain")
                {
                    Session["admin"] = "1";
                }
                else { }

                Session["ctnm"] = "1";

                Session["fnt"] = TextBox1.Text;

                Response.Redirect("Default.aspx");

                break;
            }
        }
        if (Session["catnm"] == "1") { }
        else { Label1.Text = "please enter correct information or register"; }
    }
}
