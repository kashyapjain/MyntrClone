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
public partial class Default25 : System.Web.UI.Page
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

        if (Page.IsPostBack == false)
        {
            if (Session["search"].ToString() == "")
            { Label1.Text = "No results found"; }
            else
            {
                Label1.Text = Session["search"].ToString();

                string data = Session["search"].ToString();
                string[] words = data.Split(' ');

                for (int i = 0; i < words.Length; i++)
                {
                    ds = new DataSet();

                    string sql1 = "select * from item where  m_cat like '%" + words[i] + "%' or category like '%" + words[i] + "%' or sub_category like '%" + words[i] + "%' or itm_name like '%" + words[i] + "%' or color like '%" + words[i] + "%' ";

                    adp = new SqlDataAdapter(sql1, con);
                    adp.Fill(ds, "catnm");
                    Repeater1.DataSource = ds.Tables["catnm"];
                    Repeater1.DataBind();
                }
                if (ds.Tables["catnm"].Rows.Count == 0)
                {
                    Label1.Text = "No results found";
                }
            }
        }
    }
}
