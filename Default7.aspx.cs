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

public partial class Default7 : System.Web.UI.Page
{

    SqlDataAdapter adp;
    DataSet ds = new DataSet();
    SqlConnection con = new SqlConnection();
    SqlCommand cmd = new SqlCommand();
    string upd;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = "Data Source=LAPTOP-7FSEBR6V\\SQLEXPRESS;Initial Catalog=thefashionstore;Integrated Security=True;";
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        Label1.Text = Request.QueryString["nmq"];
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        upd = TextBox1.Text;
        string nm1 = "update subcategory set sub_category='" + TextBox1.Text + "' where sub_category='" + Request.QueryString["nmq"] + "'";
        cmd = new SqlCommand(nm1, con);
        cmd.ExecuteNonQuery();
        Response.Redirect("Default6.aspx");
    }
}
