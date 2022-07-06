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

public partial class Default8 : System.Web.UI.Page
{
    SqlDataAdapter adp,adp1,adp2,adp3;
    DataSet ds = new DataSet();
    DataSet ds1 = new DataSet();
    DataSet ds2 = new DataSet();
    DataSet ds3 = new DataSet();
    SqlConnection con = new SqlConnection();
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        
        

        con.ConnectionString = "Data Source=LAPTOP-7FSEBR6V\\SQLEXPRESS;Initial Catalog=thefashionstore;Integrated Security=True;";
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }

        String sql2 = "select itm_no from item order by itm_no desc";

        adp2 = new SqlDataAdapter(sql2, con);
        adp2.Fill(ds2, "tcatnm");

        int i_no = Int32.Parse(ds2.Tables["tcatnm"].Rows[0][0].ToString()) + 1;

        Label7.Text = i_no.ToString();


        if (Page.IsPostBack == false)
        {
            String sql3 = "select distinct m_cat from subcategory";

            adp3 = new SqlDataAdapter(sql3, con);
            adp3.Fill(ds3, "tcatnm");
            DropDownList2.Items.Clear();
            for (int i = 0; i < ds3.Tables["tcatnm"].Rows.Count; i++)
            {
                DropDownList2.Items.Add(ds3.Tables["tcatnm"].Rows[i][0].ToString());
            }

            
        }
        if (Request.QueryString["tr"] == "D")
        {
            string sql1 = "select pic_location from item where itm_no='" + Request.QueryString["nm"] + "'";
            adp1 = new SqlDataAdapter(sql1, con);
            adp1.Fill(ds1, "catnm");
            System.IO.File.Delete( Server.MapPath( ds1.Tables["catnm"].Rows[0][0].ToString()));

            string nm1 = "delete from item where itm_no='" + Request.QueryString["nm"] + "'";
            cmd = new SqlCommand(nm1, con);
            cmd.ExecuteNonQuery();



            Response.Redirect("Default8.aspx");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox5.Text.Length > 20)
        {
            Label12.Text =" limit exceeded ";
        }
        else
        {
            string fileurl = "pics/" + Label7.Text.Trim() + ".jpg";
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath(fileurl));
                String sql2 = "select category from subcategory where sub_category='" + DropDownList1.SelectedValue + "' ";
                adp = new SqlDataAdapter(sql2, con);
                adp.Fill(ds, "catnm");

                if (TextBox3.Text == "" || TextBox4.Text == "")
                {
                    string sql1 = "insert into item values('" + DropDownList1.SelectedValue + "','" + TextBox1.Text + "','" + TextBox2.Text + "','','','" + TextBox5.Text + "','" + fileurl + "','" + Label7.Text + "','" + ds.Tables["catnm"].Rows[0][0] + "','" + DropDownList2.Text + "')";
                    cmd = new SqlCommand(sql1, con);
                    cmd.ExecuteNonQuery();
                }
                else
                {
                    string sql1 = "insert into item values('" + DropDownList1.SelectedValue + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "%off','" + TextBox5.Text + "','" + fileurl + "','" + Label7.Text + "','" + ds.Tables["catnm"].Rows[0][0] + "','" + DropDownList2.Text + "')";
                    cmd = new SqlCommand(sql1, con);
                    cmd.ExecuteNonQuery();
                }

            }
            string sql3 = "insert into size values('" + Label7.Text + "','" + TextBox6.Text.ToUpper() + "','" + TextBox12.Text + "','" + TextBox18.Text + "','" + TextBox7.Text.ToUpper() + "','" + TextBox13.Text + "','" + TextBox19.Text + "','" + TextBox8.Text.ToUpper() + "','" + TextBox14.Text + "','" + TextBox20.Text + "','" + TextBox9.Text.ToUpper() + "','" + TextBox15.Text + "','" + TextBox21.Text + "','" + TextBox10.Text.ToUpper() + "','" + TextBox16.Text + "','" + TextBox22.Text + "','" + TextBox11.Text.ToUpper() + "','" + TextBox17.Text + "','" + TextBox23.Text + "')";
            cmd = new SqlCommand(sql3, con);
            cmd.ExecuteNonQuery();
            Response.Redirect("Default8.aspx");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        
        String sql2 = "select * from item where sub_category='" + DropDownList1.SelectedValue + "' ";
        adp = new SqlDataAdapter(sql2, con);
        adp.Fill(ds, "catnm");
        Repeater1.DataSource = ds.Tables["catnm"];
        Repeater1.DataBind();
       
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        String sql1 = "select sub_category from subcategory where m_cat='"+DropDownList2.Text+"'";

        adp1 = new SqlDataAdapter(sql1, con);
        adp1.Fill(ds1, "tcatnm");
        DropDownList1.Items.Clear();
        for (int i = 0; i < ds1.Tables["tcatnm"].Rows.Count; i++)
        {
            DropDownList1.Items.Add(ds1.Tables["tcatnm"].Rows[i][0].ToString());
        }
    }
}
