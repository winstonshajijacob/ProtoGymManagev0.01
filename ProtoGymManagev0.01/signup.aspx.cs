using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        //signup code here


        
        //Response.Write("signedup");
        string uname ,name ,mailid,mob,pass;

        uname = Request.QueryString["uname"];
        name = Request.QueryString["name"];
        mailid = Request.QueryString["mailid"];
        mob = Request.QueryString["Mob"];
        pass = Request.QueryString["pass"];
        SqlConnection con = new SqlConnection(ConnectionString.connection);
        string addquery = "insert into [login] values ('" +uname+ "', '" +name+ "', '" +mailid+ "', '" +mob+ "', '" +pass+ "', 'user')";
        con.Open();
        SqlCommand cmd = new SqlCommand(addquery, con);
        int r=cmd.ExecuteNonQuery();
        con.Close();
      
        Response.Redirect("Default.aspx");
        //Response.Redirect("Default.aspx");
    }
}