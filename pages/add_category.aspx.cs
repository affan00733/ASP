using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class pages_add_category : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-BSGQKN7;Initial Catalog=C:\USERS\ADMIN\DESKTOP\MINIPROJECT\APP_DATA\DATABASE.MDF;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void b1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into product_category values('" + t1.Text + "')";
        cmd.ExecuteNonQuery();

        
        con.Close();
        /*Response.Redirect("<script>alert('product_category added successfull')</script>");*/
    }
}