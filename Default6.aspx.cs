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

public partial class Default6 : System.Web.UI.Page
{
    SqlDataAdapter adp,adp1,adp2;
    DataSet ds = new DataSet();
    DataSet ds1 = new DataSet();
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
        if (Page.IsPostBack == false)
        {
            string sql2 = "select distinct m_cat from catogries";
            adp2 = new SqlDataAdapter(sql2, con);
            adp2.Fill(ds2, "tcatnm");
            DropDownList2.Items.Clear();
            for (int i = 0; i < ds2.Tables["tcatnm"].Rows.Count; i++)
            {
                DropDownList2.Items.Add(ds2.Tables["tcatnm"].Rows[i][0].ToString());
            }

           

        }
       
        
        if (Request.QueryString["tr"] == "D")
        {
            string nm1 = "delete from subcategory where sub_category='" +  Request.QueryString["nm"] + "'";
            cmd = new SqlCommand(nm1, con);
            cmd.ExecuteNonQuery();



            Response.Redirect("Default6.aspx");
        }
       
      
    }




    protected void Button1_Click1(object sender, EventArgs e)
    {
        string nm1 = "insert into subcategory values('" + DropDownList1.Text + "','" + TextBox1.Text + "','" + DropDownList2.Text + "')";
        cmd = new SqlCommand(nm1, con);
        cmd.ExecuteNonQuery();

        String sql2 = "select * from subcategory where category='" + DropDownList1.Text + "' and m_cat='" + DropDownList2.Text + "'";
        adp = new SqlDataAdapter(sql2, con);
        adp.Fill(ds, "catnm");
        Repeater1.DataSource = ds.Tables["catnm"];
        Repeater1.DataBind();
     
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        String sql2 = "select * from subcategory where category='" + DropDownList1.Text + "' and m_cat='" + DropDownList2.Text + "'";
        adp = new SqlDataAdapter(sql2, con);
        adp.Fill(ds, "catnm");
        Repeater1.DataSource = ds.Tables["catnm"];
        Repeater1.DataBind();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {

        String sql1 = "select * from catogries where m_cat='" + DropDownList2.Text + "'";
        adp1 = new SqlDataAdapter(sql1, con);
        adp1.Fill(ds1, "tcatnm");
        DropDownList1.Items.Clear();
        for (int i = 0; i < ds1.Tables["tcatnm"].Rows.Count; i++)
        {
            DropDownList1.Items.Add(ds1.Tables["tcatnm"].Rows[i][0].ToString());
        }
    }
}
