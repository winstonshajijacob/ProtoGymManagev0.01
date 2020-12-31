using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SessionClass.session = string.Empty;
    }

    protected void userlogin(object sender, EventArgs e)
    {
        var uname = Request.Form["uname1"];
        var pass = Request.Form["psw"];
        SqlConnection con = new SqlConnection(ConnectionString.connection);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from login where username ='" + uname + "' and password='" + pass + "';", con);
        SqlDataReader reader = cmd.ExecuteReader();
        if (reader.HasRows)
        {
            while (reader.Read())
            {
                if (reader["usertype"].ToString() == "admin")
                {
                    SessionClass.session = "admin";
                    Response.Redirect("AdminPage.aspx");
                }
                else
                {
                    SessionClass.session = uname;
                    Response.Redirect("User.aspx");
                }
            }
        }
        else
        {
            Response.Write("<script> alert('Invalid login Details');</script>");
        }

        //Login code here
    }

    protected void usersignup(object sender, EventArgs e)
    {
       // Response.Write("signedup");
       
        Response.Write("<script>alert('Signed Up');</script>");
    }
}