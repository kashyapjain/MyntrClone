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

public partial class Default17 : System.Web.UI.Page
{
    SqlDataAdapter adp,adp2,adp3,adp4,adp5;
    DataSet ds = new DataSet();
    DataSet ds2 = new DataSet();
    DataSet ds3 = new DataSet();
    DataSet ds4 = new DataSet();
    DataSet ds5 = new DataSet();
    SqlConnection con = new SqlConnection();
    SqlCommand cmd = new SqlCommand();
  
    protected void Page_Load(object sender, EventArgs e)
    {
        
        con.ConnectionString = "Data Source=LAPTOP-7FSEBR6V\\SQLEXPRESS;Initial Catalog=thefashionstore;Integrated Security=True;";
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }

        string sql19 = "delete from cart_info where qty<1;";

        cmd = new SqlCommand(sql19, con);
        cmd.ExecuteNonQuery();

        string sql2 = "select * from cart_info";

        adp2 = new SqlDataAdapter(sql2, con);
        adp2.Fill(ds2, "catnm");
        
        Repeater1.DataSource = ds2.Tables["catnm"];
        Repeater1.DataBind();

        if (Request.QueryString["op"] == "m")
        {
            string sql3 = "select qty from cart_info where itm_no='" + Request.QueryString["id"] + "'";
            
            adp3 = new SqlDataAdapter(sql3, con);
            adp3.Fill(ds3, "catnm");

            int q = Int32.Parse( ds3.Tables["catnm"].Rows[0][0].ToString())-1;
            string sql4 = "update cart_info set qty=" + q + " where itm_no='" + Request.QueryString["id"] + "'";
            cmd = new SqlCommand(sql4, con);
            cmd.ExecuteNonQuery();
            Response.Redirect("Default17.aspx");
        }
        else if (Request.QueryString["op"] == "p")
        {
            string sql3 = "select qty from cart_info where itm_no='" + Request.QueryString["id"] + "'";

            adp3 = new SqlDataAdapter(sql3, con);
            adp3.Fill(ds3, "catnm");
            int w = Int32.Parse( ds3.Tables["catnm"].Rows[0][0].ToString()) + 1;
            string sql5 = "update cart_info set qty=" + w + " where itm_no='" + Request.QueryString["id"] + "'";
            cmd = new SqlCommand(sql5, con);
            cmd.ExecuteNonQuery();
            Response.Redirect("Default17.aspx");
        }
        else { }
        if(Request.QueryString["op"] == "d")
        {
            string sql8 = "delete from cart_info where itm_no='"+Request.QueryString["id"]+"'";
            cmd = new SqlCommand(sql8, con);
            cmd.ExecuteNonQuery();
            Response.Redirect("Default17.aspx");
        }
        Label1.Visible=false;
        Label1.Text = ds2.Tables["catnm"].Rows.Count.ToString();

        Label2.Text = ds2.Tables["catnm"].Rows.Count.ToString();

        string sql9 = "select sum(qty*price) from cart_info";

        adp4 = new SqlDataAdapter(sql9, con);
        adp4.Fill(ds4, "catnm");

        Label3.Text = ds4.Tables["catnm"].Rows[0][0].ToString();

        if (Request.QueryString["sc"] == "t")
        {
            d3.Visible = true;

            string sql10 = "select col1,col2,col3,col4,col5,col6,col_qty1,col_qty2,col_qty3,col_qty4,col_qty5,col_qty6 from size where itm_no='" + Request.QueryString["in"] + "'";

            adp5 = new SqlDataAdapter(sql10, con);
            adp5.Fill(ds5, "catnm");

            if (Int32.Parse(ds5.Tables["catnm"].Rows[0][6].ToString()) > 0)
            {
                Label5.Text = ds5.Tables["catnm"].Rows[0][0].ToString();
            }
            else { Label5.Visible = false; }
            if (Int32.Parse(ds5.Tables["catnm"].Rows[0][7].ToString()) > 0)
            {
                Label6.Text = ds5.Tables["catnm"].Rows[0][1].ToString();
            }
            else { Label6.Visible = false; }
            if (Int32.Parse(ds5.Tables["catnm"].Rows[0][8].ToString()) > 0)
            {
                Label7.Text = ds5.Tables["catnm"].Rows[0][2].ToString();
            }
            else { Label7.Visible = false; }
            if (ds5.Tables["catnm"].Rows[0][9].ToString() == "")
            { Label8.Visible = false; }
            else
            {
                if (Int32.Parse(ds5.Tables["catnm"].Rows[0][9].ToString()) > 0)
                {
                    Label8.Text = ds5.Tables["catnm"].Rows[0][3].ToString();
                }
                else { Label8.Visible = false; }
            }
            if (ds5.Tables["catnm"].Rows[0][10].ToString() == "")
            { Label9.Visible = false; }
            else
            {
                if (Int32.Parse(ds5.Tables["catnm"].Rows[0][10].ToString()) > 0)
                {
                    Label9.Text = ds5.Tables["catnm"].Rows[0][4].ToString();
                }
                else { Label9.Visible = false; }
            }
            if (ds5.Tables["catnm"].Rows[0][11].ToString() == "")
            { Label10.Visible = false; }
            else
            {
                if (Int32.Parse(ds5.Tables["catnm"].Rows[0][11].ToString()) > 0)
                {
                    Label10.Text = ds5.Tables["catnm"].Rows[0][5].ToString();
                }
                else { Label10.Visible = false; }
            }

            Session["s_itm_no"] =Request.QueryString["in"];
        } 
        else { d3.Visible = false; }

        if (Request.QueryString["q"] == "w")
        {
            string sql12 = "select col1,col2,col3,col4,col5,col6 from size where itm_no='" + Session["s_itm_no"].ToString() + "'";

            adp5 = new SqlDataAdapter(sql12, con);
            adp5.Fill(ds5, "catnm");
            if (Request.QueryString["e"] == "0")
            {
                string sql11 = "update cart_info set size='" + ds5.Tables["catnm"].Rows[0][0].ToString() + "' where itm_no='" + Session["s_itm_no"].ToString() + "';";
                cmd = new SqlCommand(sql11, con);
                cmd.ExecuteNonQuery();
            }
            if (Request.QueryString["e"] == "1")
            {
                string sql11 = "update cart_info set size='" + ds5.Tables["catnm"].Rows[0][1].ToString() + "' where itm_no='" + Session["s_itm_no"].ToString() + "'";
                cmd = new SqlCommand(sql11, con);
                cmd.ExecuteNonQuery();
            }
            if (Request.QueryString["e"] == "2")
            {
                string sql11 = "update cart_info set size='" + ds5.Tables["catnm"].Rows[0][2].ToString() + "' where itm_no='" + Session["s_itm_no"].ToString() + "'";
                cmd = new SqlCommand(sql11, con);
                cmd.ExecuteNonQuery();
            }
            if (Request.QueryString["e"] == "3")
            {
                string sql11 = "update cart_info set size='" + ds5.Tables["catnm"].Rows[0][3].ToString() + "' where itm_no='" + Session["s_itm_no"].ToString() + "'";
                cmd = new SqlCommand(sql11, con);
                cmd.ExecuteNonQuery();
            }
            if (Request.QueryString["e"] == "4")
            {
                string sql11 = "update cart_info set size='" + ds5.Tables["catnm"].Rows[0][4].ToString() + "' where itm_no='" + Session["s_itm_no"].ToString() + "'";
                cmd = new SqlCommand(sql11, con);
                cmd.ExecuteNonQuery();
            }
            if (Request.QueryString["e"] == "5")
            {
                string sql11 = "update cart_info set size='" + ds5.Tables["catnm"].Rows[0][5].ToString() + "' where itm_no='" + Session["s_itm_no"].ToString() + "'";
                cmd = new SqlCommand(sql11, con);
                cmd.ExecuteNonQuery();
            }
            Response.Redirect("Default17.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql4 = "select * from order_no";
        adp3 = new SqlDataAdapter(sql4, con);
        adp3.Fill(ds3, "catnm");
        string sql5 = "insert into order_no values(" + Int32.Parse(ds3.Tables["catnm"].Rows.Count.ToString()) + 1 + ")";
        cmd = new SqlCommand(sql5, con);
        cmd.ExecuteNonQuery();

        string sql2 = "select * from cart_info";
        adp2 = new SqlDataAdapter(sql2, con);
        adp2.Fill(ds2, "catnm");

        for (int i = 0; i < ds2.Tables["catnm"].Rows.Count - 1; i++)
        {
            DateTime dt = new DateTime();
            int q = Int32.Parse(ds3.Tables["catnm"].Rows.Count.ToString()) + 1;
            string sql3 = "insert into billing values('" + ds2.Tables["catnm"].Rows[i][0].ToString() + "','" + ds2.Tables["catnm"].Rows[i][1].ToString() + "','" + Session["fnt"].ToString() + "'," + q + ",'" + ds2.Tables["catnm"].Rows[i][7].ToString() + "','" + TextBox1.Text + "',Getdate(),'order recived')";
            cmd = new SqlCommand(sql3, con);
            cmd.ExecuteNonQuery();
        }

        string sql6 = "delete from cart_info;";
        
        cmd = new SqlCommand(sql6, con);
        cmd.ExecuteNonQuery();

        Response.Redirect("Default18.aspx");
    }
}
