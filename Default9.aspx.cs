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

public partial class Default9 : System.Web.UI.Page
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

        Page.Response.Cache.SetCacheability(HttpCacheability.NoCache);

        //HttpResponse.RemoveOutputCacheItem("/caching/CacheForever.aspx");

        //Cache.Remove("key");

        //foreach (System.Collections.DictionaryEntry entry in HttpContext.Current.Cache)
        //{
        //    HttpContext.Current.Cache.Remove((string)entry.Key);
        //}

        //Response.Cache.SetExpires(DateTime.UtcNow.AddMinutes(-1));
        //Response.Cache.SetCacheability(HttpCacheability.NoCache);
        //Response.Cache.SetNoStore();

        //HttpContext.Current.Response.AddHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        //HttpContext.Current.Response.AddHeader("Pragma", "no-cache");
        //HttpContext.Current.Response.AddHeader("Expires", "0");

        String sql1 = "select * from slider_pics";
        adp = new SqlDataAdapter(sql1, con);
        adp.Fill(ds, "catnm");
        Repeater1.DataSource = ds.Tables["catnm"];
        Repeater1.DataBind();

        if (Request.QueryString["tr"] == "D")
        {
            System.IO.File.Delete(Server.MapPath(Request.QueryString["nm"]));

            string nm1 = "delete from slider_pics where pic_location='" + Request.QueryString["nm"] + "'";
            cmd = new SqlCommand(nm1, con);
            cmd.ExecuteNonQuery();

            Response.Redirect("Default9.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int q = ds.Tables["catnm"].Rows.Count + 1;
        string fileurl = "pics/slider" + q + ".jpg";

        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath(fileurl));
            
            string sql1 = "insert into slider_pics values('" + fileurl + "')";
            cmd = new SqlCommand(sql1, con);
            cmd.ExecuteNonQuery();
        }

        Response.Redirect("Default9.aspx");
    }
}
