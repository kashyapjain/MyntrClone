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

public partial class Default20 : System.Web.UI.Page
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

        Label1.Text = Session["fnt"].ToString();

        string sql1 = "select * from login_info where e_id='"+Session["fnt"].ToString()+"'";

        adp = new SqlDataAdapter(sql1, con);
        adp.Fill(ds, "catnm");

        if (Page.IsPostBack == false)
        {
            TextBox1.Text = ds.Tables["catnm"].Rows[0][0].ToString();
            TextBox2.Text = ds.Tables["catnm"].Rows[0][1].ToString();
            TextBox3.Text = ds.Tables["catnm"].Rows[0][2].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["ctnm"] = "";
        Session["admin"] = "";
        Response.Redirect("Default.aspx");
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        string sql2 = "update login_info set e_id='" + TextBox1.Text + "',p_no='" + TextBox2.Text + "',pass='" + TextBox3.Text + "' where p_no='" + TextBox2.Text + "'";

        cmd = new SqlCommand(sql2, con);
        cmd.ExecuteNonQuery();
        
        Response.Redirect("Default20.aspx");
    }
}
