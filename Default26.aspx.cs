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

public partial class Default26 : System.Web.UI.Page
{
    SqlDataAdapter adp,adp2;
    DataSet ds = new DataSet();
    DataSet ds2 = new DataSet();
    SqlConnection con = new SqlConnection();
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = "Data Source=LAPTOP-7FSEBR6V\\SQLEXPRESS;Initial Catalog=thefashionstore;Integrated Security=True;";
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        if (Session["ctnm"] == "1")
        {
            Label1.Text = Session["fnt"].ToString();

            //string sql1 = "select * from all_recs where email_id='" + Session["fnt"].ToString() + "' order by odr_no desc";
            //string sql1 = "SELECT dbo.billing.itm_no, dbo.item.sub_category, dbo.billing.qty, dbo.item.itm_name, dbo.billing.e_id, dbo.item.price, dbo.billing.odr_no, dbo.billing.size, dbo.billing.adress, dbo.billing.odr_date, dbo.billing.status, dbo.item.pre_price, dbo.item.color, dbo.item.pic_location, dbo.item.category, dbo.item.m_cat, dbo.item.dis FROM   dbo.billing CROSS JOIN dbo.item where e_id='"+Label1.Text+"'";

            string sql1 =" SELECT dbo.billing.itm_no, dbo.item.sub_category, dbo.billing.qty, dbo.item.itm_name, dbo.billing.e_id, dbo.item.price, dbo.billing.odr_no, dbo.billing.size, dbo.billing.adress, dbo.billing.odr_date, dbo.billing.status, dbo.item.pre_price, dbo.item.color, dbo.item.pic_location, dbo.item.category, dbo.item.m_cat, dbo.item.dis FROM dbo.billing CROSS JOIN dbo.item where e_id = '"+Label1.Text+"' and dbo.item.itm_no = dbo.billing.itm_no";

            //Response.Write(sql1);
            adp = new SqlDataAdapter(sql1, con);
            adp.Fill(ds, "catnm");

            //int countrow = ds.Tables["catnm"].Rows.Count / 2;

            //string sql2 = "SELECT top "+countrow+" dbo.billing.itm_no, dbo.item.sub_category, dbo.billing.qty, dbo.item.itm_name, dbo.billing.e_id, dbo.item.price, dbo.billing.odr_no, dbo.billing.size, dbo.billing.adress, dbo.billing.odr_date, dbo.billing.status, dbo.item.pre_price, dbo.item.color, dbo.item.pic_location, dbo.item.category, dbo.item.m_cat, dbo.item.dis FROM   dbo.billing CROSS JOIN dbo.item where e_id='kashyapjain2018@gmail.com'";
            

            //adp2 = new SqlDataAdapter(sql2, con);
            //adp2.Fill(ds2, "catnm");

            Repeater1.DataSource = ds.Tables["catnm"];
            Repeater1.DataBind();
        }
        else { Response.Redirect("Default16.aspx"); }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["ctnm"] = "";
        Session["admin"] = "";
        Response.Redirect("Default.aspx");
    }
}
