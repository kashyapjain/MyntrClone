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
public partial class Default4 : System.Web.UI.Page
{
    SqlDataAdapter adp;
    DataSet ds= new DataSet() ;
    SqlConnection con = new SqlConnection();
    SqlCommand cmd = new SqlCommand();

    protected void Page_Load(object sender, EventArgs e)
    {

        con.ConnectionString = "Data Source=LAPTOP-7FSEBR6V\\SQLEXPRESS;Initial Catalog=thefashionstore;Integrated Security=True;";
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        if (Request.QueryString["tr"] == "D")
        {
            string nm1 = "delete from catogries where catogry_name='" + Request.QueryString["nm"] + "' and m_cat='"+ Request.QueryString["nm2"]  + "'";
            cmd = new SqlCommand(nm1, con);
            cmd.ExecuteNonQuery();

            string nm2 = "delete from subcategory where category ='" + Request.QueryString["nm"] + "' and m_cat='" + Request.QueryString["nm2"] + "'";
            cmd = new SqlCommand(nm2, con);
            cmd.ExecuteNonQuery();

            Response.Redirect("Default4.aspx");
        }

            String sql1 = "select * from catogries order by catogry_name";
            adp = new SqlDataAdapter(sql1, con);
            adp.Fill(ds, "catnm");
            Repeater1.DataSource = ds.Tables["catnm"];
            Repeater1.DataBind();

        
    }




    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["pics_name"] = (Int32.Parse(Session["pics_name"].ToString()) + 1);
        string nm1 = "insert into catogries values('"+TextBox1.Text+"','pics/category"+ ds.Tables["catnm"].Rows.Count + Session["pics_name"]  +".jpg','"+TextBox2.Text+"')";
        cmd = new SqlCommand(nm1, con);
        cmd.ExecuteNonQuery();

       

        Response.Redirect("Default4.aspx");
    }
}
