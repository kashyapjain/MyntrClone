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

public partial class Default15 : System.Web.UI.Page
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
        if (Request.QueryString["oc"] == "g1")
        {
            string sql1 = "select * from item where category='" + Request.QueryString["nmq"] + "'";
            adp = new SqlDataAdapter(sql1, con);
            adp.Fill(ds, "catnm");
            Repeater1.DataSource = ds.Tables["catnm"];
            Repeater1.DataBind();
            Label1.Text = Request.QueryString["nmq"];
        }

        if (Request.QueryString["oc"] == "g2")
        {
            string sql2 = "select * from item where category='" + Request.QueryString["nmq2"] + "'";
            adp = new SqlDataAdapter(sql2, con);
            adp.Fill(ds, "catnm");
            Repeater1.DataSource = ds.Tables["catnm"];
            Repeater1.DataBind();
            Label1.Text = Request.QueryString["nmq2"];
        }
        if (Request.QueryString["oc"] == "g3")
        {
            string sql3 = "select * from item where  m_cat='" + Request.QueryString["mcat"] + "' and  category='" + Request.QueryString["cat"] + "' or sub_category='" + Request.QueryString["cat"] + "'";
            adp = new SqlDataAdapter(sql3, con);
            adp.Fill(ds, "catnm");
            Repeater1.DataSource = ds.Tables["catnm"];
            Repeater1.DataBind();
            Label1.Text = Request.QueryString["cat"];
        }
        if (Request.QueryString["q"] == "w")
        {
            string sql2 = "select * from item where m_cat='" + Request.QueryString["e"] + "'";
            adp = new SqlDataAdapter(sql2, con);
            adp.Fill(ds, "catnm");
            Repeater1.DataSource = ds.Tables["catnm"];
            Repeater1.DataBind();
            Label1.Text = Request.QueryString["e"];
        }
    }
}
