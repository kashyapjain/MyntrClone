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

public partial class Default3 : System.Web.UI.Page
{
    SqlDataAdapter adp,adp2,adp3,adp4;
    DataSet ds = new DataSet();
    DataSet ds2 = new DataSet();
    DataSet ds3 = new DataSet();
    DataSet ds4 = new DataSet();
    SqlConnection con = new SqlConnection();
    SqlCommand cmd = new SqlCommand();
 
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = "Data Source=LAPTOP-7FSEBR6V\\SQLEXPRESS;Initial Catalog=thefashionstore;Integrated Security=True;";
        
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }

        div1.Visible = false;

        string sql1 = "select * from item where itm_no=" + Request.QueryString["nmq"] + "";

        adp = new SqlDataAdapter(sql1, con);
        adp.Fill(ds, "catnm");

        Repeater1.DataSource = ds.Tables["catnm"];
        Repeater1.DataBind();
        
        Label1.Text = ds.Tables["catnm"].Rows[0][1].ToString();
        Label2.Text = ds.Tables["catnm"].Rows[0][5].ToString();
        Label3.Text = ds.Tables["catnm"].Rows[0][2].ToString();
        
        if (ds.Tables["catnm"].Rows[0][3].ToString() == "") { Label4.Text = ""; }
        
        else
        {
            Label4.Text = "Rs." + ds.Tables["catnm"].Rows[0][3].ToString();
        }
        
        if (ds.Tables["catnm"].Rows[0][4].ToString() == "") { Label5.Text = ""; }
        
        else
        {
            Label5.Text = ds.Tables["catnm"].Rows[0][4].ToString();
        }

        string sql2 = "select * from size where itm_no=" + Request.QueryString["nmq"] + "";

        adp2 = new SqlDataAdapter(sql2, con);
        adp2.Fill(ds2, "catnm");
        
        if (Int32.Parse(ds2.Tables["catnm"].Rows[0][2].ToString()) > 0)
        {
            Label6.Text = ds2.Tables["catnm"].Rows[0][1].ToString();
        }
        
        else
        {
            Label6.Text = "Sold Out";
        }
        
        if (Int32.Parse(ds2.Tables["catnm"].Rows[0][5].ToString()) > 0)
        {
            Label7.Text = ds2.Tables["catnm"].Rows[0][4].ToString();
        }
        
        else
        {
            Label7.Text = "Sold Out";
        }
        
        if (Int32.Parse(ds2.Tables["catnm"].Rows[0][8].ToString()) > 0)
        {
            Label8.Text = ds2.Tables["catnm"].Rows[0][7].ToString();
        }
        
        else
        {
            Label8.Text = "Sold Out";
        }

        
        if (ds2.Tables["catnm"].Rows[0][10].ToString() == "")
        {
            Session["s4"] = "0";
        }
        
        else
        {
            Session["s4"] = "1";
            
            if (Int32.Parse(ds2.Tables["catnm"].Rows[0][11].ToString()) > 0)
            {
                Label9.Text = ds2.Tables["catnm"].Rows[0][10].ToString();
            }
            
            else
            {
                Label9.Text = "Sold Out";
            }
        }
        
        if (ds2.Tables["catnm"].Rows[0][13].ToString() == "" || ds2.Tables["catnm"].Rows[0][13].ToString() == null)
        {
            Session["s5"] = "0";
        }
        
        else
        {
            Session["s5"] = "1";
            
            if (Int32.Parse(ds2.Tables["catnm"].Rows[0][14].ToString()) > 0)
            {
                Label10.Text = ds2.Tables["catnm"].Rows[0][13].ToString();
            }
            
            else
            {
                Label10.Text = "sold out";
            }
        }
        
        if (ds2.Tables["catnm"].Rows[0][16].ToString() == "")
        {
            Session["s6"] = "0";
        }
        
        else
        {
            Session["s6"] = "1";
            
            if (Int32.Parse(ds2.Tables["catnm"].Rows[0][17].ToString()) > 0)
            {
                Label11.Text = ds2.Tables["catnm"].Rows[0][16].ToString();
            }
            
            else
            {
                Label11.Text = "sold out";
            }
        }
        
        Label12.Text = ds2.Tables["catnm"].Rows[0][3].ToString();
        Label13.Text = ds2.Tables["catnm"].Rows[0][6].ToString();
        Label14.Text = ds2.Tables["catnm"].Rows[0][9].ToString();
        Label15.Text = ds2.Tables["catnm"].Rows[0][12].ToString();
        Label16.Text = ds2.Tables["catnm"].Rows[0][15].ToString();
        Label17.Text = ds2.Tables["catnm"].Rows[0][18].ToString();
    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql3 = "select * from item where itm_no='" + Request.QueryString["nmq"] + "'";

        adp3 = new SqlDataAdapter(sql3, con);
        adp3.Fill(ds3, "catnm");

        if (Session["ctnm"].ToString().Equals ("1"))
        {
            if (TextBox1.Text.Equals("") || TextBox1.Text.Equals("sold out"))
            {
                div1.Visible = true;
            }

            else
            {
                string sql2 = "insert into cart_info values('" + Request.QueryString["nmq"] + "',1,'" + ds3.Tables["catnm"].Rows[0][6].ToString() + "','" + ds3.Tables["catnm"].Rows[0][1].ToString() + "','" + ds3.Tables["catnm"].Rows[0][5].ToString() + "','" + ds3.Tables["catnm"].Rows[0][2].ToString() + "','" + ds3.Tables["catnm"].Rows[0][4].ToString() + "','" + TextBox1.Text + "')";
                cmd = new SqlCommand(sql2, con);
                cmd.ExecuteNonQuery();
                TextBox1.Text = "";
            }
        }
        
        else {Response.Redirect("Default16.aspx"); }
    }
   
}
