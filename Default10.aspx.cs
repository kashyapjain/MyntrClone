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


public partial class Default10 : System.Web.UI.Page
{

    SqlDataAdapter  adp1,adp2;
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

        Label2.Text = Request.QueryString["nmq"];
       
        if (Page.IsPostBack == false)
        {
          
            string sql1 = "select * from item where itm_no= '"+Label2.Text+"'";

            adp1 = new SqlDataAdapter(sql1, con);
            adp1.Fill(ds1, "catnm");
            TextBox1.Text = ds1.Tables["catnm"].Rows[0][0].ToString();
            TextBox2.Text = ds1.Tables["catnm"].Rows[0][1].ToString();
            TextBox3.Text = ds1.Tables["catnm"].Rows[0][2].ToString();
            TextBox4.Text = ds1.Tables["catnm"].Rows[0][3].ToString();
            TextBox5.Text = ds1.Tables["catnm"].Rows[0][4].ToString();
            TextBox6.Text = ds1.Tables["catnm"].Rows[0][5].ToString();
            img1.Src = ds1.Tables["catnm"].Rows[0][6].ToString();
            Label10.Text = ds1.Tables["catnm"].Rows[0][6].ToString();
            Label2.Text = ds1.Tables["catnm"].Rows[0][7].ToString();

            string sql2 = "select * from size where itm_no= " + Label2.Text + ";";

            adp2 = new SqlDataAdapter(sql2, con);
            adp2.Fill(ds2, "catnm");
            TextBox7.Text = ds2.Tables["catnm"].Rows[0][1].ToString();
            TextBox13.Text = ds2.Tables["catnm"].Rows[0][2].ToString();
            TextBox19.Text = ds2.Tables["catnm"].Rows[0][3].ToString();
            TextBox8.Text = ds2.Tables["catnm"].Rows[0][4].ToString();
            TextBox14.Text = ds2.Tables["catnm"].Rows[0][5].ToString();
            TextBox20.Text = ds2.Tables["catnm"].Rows[0][6].ToString();
            TextBox9.Text = ds2.Tables["catnm"].Rows[0][7].ToString();
            TextBox15.Text = ds2.Tables["catnm"].Rows[0][8].ToString();
            TextBox21.Text = ds2.Tables["catnm"].Rows[0][9].ToString();
            TextBox10.Text = ds2.Tables["catnm"].Rows[0][10].ToString();
            TextBox16.Text = ds2.Tables["catnm"].Rows[0][11].ToString();
            TextBox22.Text = ds2.Tables["catnm"].Rows[0][12].ToString();
            TextBox11.Text = ds2.Tables["catnm"].Rows[0][13].ToString();
            TextBox17.Text = ds2.Tables["catnm"].Rows[0][14].ToString();
            TextBox23.Text = ds2.Tables["catnm"].Rows[0][15].ToString();
            TextBox12.Text = ds2.Tables["catnm"].Rows[0][16].ToString();
            TextBox18.Text = ds2.Tables["catnm"].Rows[0][17].ToString();
            TextBox24.Text = ds2.Tables["catnm"].Rows[0][18].ToString();
        }
    }
    
    protected void Button1_Click1(object sender, EventArgs e)
    {

        string fileurl = "pics/" + Label2.Text.Trim() + ".jpg";
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath(fileurl));
        }

            string nm1 = "update item set sub_category='" + TextBox1.Text + "',itm_name='"+TextBox2.Text+"',price=" + TextBox3.Text + ",pre_price='" + TextBox4.Text + "',dis='" + TextBox5.Text + "',color='" + TextBox6.Text + "',pic_location='"+fileurl+"' where itm_no='" + Label2.Text + "'";
           
            cmd = new SqlCommand(nm1, con);
            cmd.ExecuteNonQuery();

            string sql1 = "update size set col1='" + TextBox7.Text.ToUpper() + "',col_qty1='" + TextBox13.Text + "',col_desc1='" + TextBox19.Text + "',col2='" + TextBox8.Text.ToUpper() + "',col_qty2='" + TextBox14.Text + "',col_desc2='" + TextBox20.Text + "',col3='" + TextBox9.Text.ToUpper() + "',col_qty3='" + TextBox15.Text + "',col_desc3='" + TextBox21.Text + "',col4='" + TextBox10.Text.ToUpper() + "',col_qty4='" + TextBox16.Text + "',col_desc4='" + TextBox22.Text + "',col5='" + TextBox11.Text.ToUpper() + "',col_qty5='" + TextBox17.Text + "',col_desc5='" + TextBox23.Text + "',col6='" + TextBox12.Text.ToUpper() + "',col_qty6='" + TextBox18.Text + "',col_desc6='" + TextBox24.Text + "' where itm_no='" + Label2.Text + "'";
            cmd = new SqlCommand(sql1, con);
            cmd.ExecuteNonQuery();

            Response.Redirect("Default8.aspx");
      
    }
}