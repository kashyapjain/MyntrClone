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

public partial class Default13 : System.Web.UI.Page
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

        Label2.Text = Request.QueryString["nmq"];

        string sql1 = "select pic_location from catogries where pic_location= '" + Label2.Text + "' and m_cat='"+ Request.QueryString["nmq2"]  + "';";

        adp = new SqlDataAdapter(sql1, con);
        adp.Fill(ds, "catnm");

        if (Page.IsPostBack == false)
        {
            img1.Src = ds.Tables["catnm"].Rows[0][0].ToString();
        }
        Label4.Text = ds.Tables["catnm"].Rows[0][0].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string fileurl = Label4.Text;
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath(fileurl));
        }

        string nm1 = "update catogries set pic_location='" + fileurl + "' where m_cat='" + Request.QueryString["nmq2"] + "' and pic_location='" + Label2.Text + "'";
        //Label3.Text = nm1;

        cmd = new SqlCommand(nm1, con);
        cmd.ExecuteNonQuery();

        Response.Redirect("Default12.aspx");
    }
}
