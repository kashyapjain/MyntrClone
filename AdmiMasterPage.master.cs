using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.Data.SqlClient;


public partial class AdmiMasterPage : System.Web.UI.MasterPage
{
    SqlDataAdapter adp, adp2, adp3, adp4, adp5, adp6, adp7, adp8, adp9, adp10, adp11, adp12, adp13, adp14, adp15, adp16, adp17, adp18, adp19, adp20, adp21, adp22;
    DataSet ds = new DataSet();
    DataSet ds2 = new DataSet();
    DataSet ds3 = new DataSet();
    DataSet ds4 = new DataSet();
    DataSet ds5 = new DataSet();
    DataSet ds6 = new DataSet();
    DataSet ds7 = new DataSet();
    DataSet ds8 = new DataSet();
    DataSet ds9 = new DataSet();
    DataSet ds10 = new DataSet();
    DataSet ds11 = new DataSet();
    DataSet ds12 = new DataSet();
    DataSet ds13 = new DataSet();
    DataSet ds14 = new DataSet();
    DataSet ds15 = new DataSet();
    DataSet ds16 = new DataSet();
    DataSet ds17 = new DataSet();
    DataSet ds18 = new DataSet();
    DataSet ds19 = new DataSet();
    DataSet ds20 = new DataSet();
    DataSet ds21 = new DataSet();
    DataSet ds22 = new DataSet();
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
            TextBox1.Text = Session["search"].ToString();
        }
        string sql4 = "select upper(left('" + Session["fnt"] + "',1))";
        adp3 = new SqlDataAdapter(sql4, con);
        adp3.Fill(ds3, "catnm");

        Label3.Text = ds3.Tables["catnm"].Rows[0][0].ToString();

        string sql3 = "select * from cart_info";

        adp2 = new SqlDataAdapter(sql3, con);
        adp2.Fill(ds2, "catnm");
        if (ds2.Tables["catnm"].Rows.Count > 0)
        {
            Label2.Text = ds2.Tables["catnm"].Rows.Count.ToString();
        }
        else { l2.Visible = false; }
        Label1.Text = Session["fnt"].ToString();

        string sql9 = "select sub_category from subcategory where category='top wear' and m_cat='men'";

        adp4 = new SqlDataAdapter(sql9, con);
        adp4.Fill(ds4, "catnm");
        Repeater2.DataSource = ds4.Tables["catnm"];
        Repeater2.DataBind();

        string sql5 = "select sub_category from subcategory where category='indian wear' and m_cat='men'";

        adp5 = new SqlDataAdapter(sql5, con);
        adp5.Fill(ds5, "catnm");
        Repeater3.DataSource = ds5.Tables["catnm"];
        Repeater3.DataBind();

        string sql6 = "select sub_category from subcategory where category='bottom wear' and m_cat='men'";

        adp6 = new SqlDataAdapter(sql6, con);
        adp6.Fill(ds6, "catnm");
        Repeater4.DataSource = ds6.Tables["catnm"];
        Repeater4.DataBind();

        string sql7 = "select sub_category from subcategory where category='foot wear' and m_cat='men'";

        adp7 = new SqlDataAdapter(sql7, con);
        adp7.Fill(ds7, "catnm");
        Repeater5.DataSource = ds7.Tables["catnm"];
        Repeater5.DataBind();

        string sql8 = "select sub_category from subcategory where category='sports wear' and m_cat='men'";

        adp8 = new SqlDataAdapter(sql8, con);
        adp8.Fill(ds8, "catnm");
        Repeater6.DataSource = ds8.Tables["catnm"];
        Repeater6.DataBind();

        string sql16 = "select sub_category from subcategory where category='boys clothing' and m_cat='kids'";

        adp9 = new SqlDataAdapter(sql16, con);
        adp9.Fill(ds9, "catnm");
        Repeater7.DataSource = ds9.Tables["catnm"];
        Repeater7.DataBind();

        string sql10 = "select sub_category from subcategory where category='girls clothing' and m_cat='kids'";

        adp10 = new SqlDataAdapter(sql10, con);
        adp10.Fill(ds10, "catnm");
        Repeater8.DataSource = ds10.Tables["catnm"];
        Repeater8.DataBind();

        string sql11 = "select sub_category from subcategory where category='boys footwear' and m_cat='kids'";

        adp11 = new SqlDataAdapter(sql11, con);
        adp11.Fill(ds11, "catnm");
        Repeater9.DataSource = ds11.Tables["catnm"];
        Repeater9.DataBind();

        string sql12 = "select sub_category from subcategory where category='girls footwear' and m_cat='kids'";

        adp12 = new SqlDataAdapter(sql12, con);
        adp12.Fill(ds12, "catnm");
        Repeater10.DataSource = ds12.Tables["catnm"];
        Repeater10.DataBind();

        string sql13 = "select sub_category from subcategory where category='toys' and m_cat='kids'";

        adp13 = new SqlDataAdapter(sql13, con);
        adp13.Fill(ds13, "catnm");
        Repeater11.DataSource = ds13.Tables["catnm"];
        Repeater11.DataBind();

        string sql14 = "select sub_category from subcategory where category='kids accessories' and m_cat='kids'";

        adp14 = new SqlDataAdapter(sql14, con);
        adp14.Fill(ds14, "catnm");
        Repeater12.DataSource = ds14.Tables["catnm"];
        Repeater12.DataBind();

        string sql15 = "select sub_category from subcategory where category='brands' and m_cat='kids'";

        adp15 = new SqlDataAdapter(sql15, con);
        adp15.Fill(ds15, "catnm");
        Repeater13.DataSource = ds15.Tables["catnm"];
        Repeater13.DataBind();

        string sql17 = "select sub_category from subcategory where category='indian and fusion wear' and m_cat='women'";

        adp16 = new SqlDataAdapter(sql17, con);
        adp16.Fill(ds16, "catnm");
        Repeater14.DataSource = ds16.Tables["catnm"];
        Repeater14.DataBind();

        string sql18 = "select sub_category from subcategory where category='western wear' and m_cat='women'";

        adp17 = new SqlDataAdapter(sql18, con);
        adp17.Fill(ds17, "catnm");
        Repeater15.DataSource = ds17.Tables["catnm"];
        Repeater15.DataBind();

        string sql19 = "select sub_category from subcategory where category='foot wear' and m_cat='women'";

        adp18 = new SqlDataAdapter(sql19, con);
        adp18.Fill(ds18, "catnm");
        Repeater16.DataSource = ds18.Tables["catnm"];
        Repeater16.DataBind();

        string sql20 = "select sub_category from subcategory where category='sports wear' and m_cat='women'";

        adp19 = new SqlDataAdapter(sql20, con);
        adp19.Fill(ds19, "catnm");
        Repeater17.DataSource = ds19.Tables["catnm"];
        Repeater17.DataBind();

        string sql21 = "select sub_category from subcategory where category='sleep wear' and m_cat='women'";

        adp20 = new SqlDataAdapter(sql21, con);
        adp20.Fill(ds20, "catnm");
        Repeater18.DataSource = ds20.Tables["catnm"];
        Repeater18.DataBind();

        string sql22 = "select sub_category from subcategory where category='beauty' and m_cat='women'";

        adp21 = new SqlDataAdapter(sql22, con);
        adp21.Fill(ds21, "catnm");
        Repeater19.DataSource = ds21.Tables["catnm"];
        Repeater19.DataBind();

        string sql23 = "select sub_category from subcategory where category='jwellery' and m_cat='women'";

        adp22 = new SqlDataAdapter(sql23, con);
        adp22.Fill(ds22, "catnm");
        Repeater20.DataSource = ds22.Tables["catnm"];
        Repeater20.DataBind();

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["search"] = TextBox1.Text.Trim();
        Response.Redirect("Default25.aspx");
    }
}
