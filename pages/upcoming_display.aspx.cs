using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class pages_upcoming_display : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-BSGQKN7;Initial Catalog=C:\USERS\ADMIN\DESKTOP\MINIPROJECT\APP_DATA\DATABASE.MDF;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {

        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;

        if (Request.QueryString["category"] == null)
        {
            cmd.CommandText = "select * from item";
        }

       
        /*
        if (Request.QueryString["search1"] != null)
        {
            cmd.CommandText = "select * from item where product_name like ('%" + Request.QueryString["search1"].ToString() + "%')";
        }*/

        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        d1.DataSource = dt;
        d1.DataBind();
        con.Close();
    }

}