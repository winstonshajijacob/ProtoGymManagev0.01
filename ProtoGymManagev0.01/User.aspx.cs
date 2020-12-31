using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(SessionClass.session))
        {
            Response.Redirect("Default.aspx");
        }
        else
        {
            if (SessionClass.userplan == false)
            {
                SqlConnection con = new SqlConnection(ConnectionString.connection);
                con.Open();
                SqlCommand cmd = new SqlCommand(
                    "select * from userplans where usernname = '" + SessionClass.session + "';",
                    con);
                SqlDataReader reader = cmd.ExecuteReader();
                if (!reader.HasRows)
                {
                    DropDownList2.Items.Clear();

                    DropDownList2.Items.Insert(0, new ListItem("Choose a plan", ""));
                    DropDownList2.Items[0].Selected = true;
                    DropDownList2.Items[0].Attributes["disabled"] = "disabled";

                    SqlConnection con2 = new SqlConnection(ConnectionString.connection);
                    con2.Open();
                    SqlCommand cmd2 = new SqlCommand("select * from Plan_table;", con2);
                    SqlDataReader reader2 = cmd2.ExecuteReader();
                    while (reader2.Read())
                    {
                        DropDownList2.Items.Add(reader2["plan_name"].ToString());
                    }

                    con2.Close();
                }
                else
                {
                    string value = string.Empty;

                    SqlConnection con2 = new SqlConnection(ConnectionString.connection);
                    con2.Open();
                    SqlCommand cmd2 = new SqlCommand("select * from Plan_table;", con2);
                    SqlDataReader reader2 = cmd2.ExecuteReader();
                    while (reader2.Read())
                    {
                        value = reader2["plan_name"].ToString();
                    }


                    DropDownList2.Items.Clear();

                    DropDownList2.Items.Insert(0, new ListItem("your plan is", ""));
                    DropDownList2.Items[0].Selected = true;
                    DropDownList2.Items[0].Attributes["disabled"] = "disabled";
                    DropDownList2.Enabled = false;

                    SqlConnection con3 = new SqlConnection(ConnectionString.connection);
                    con3.Open();
                    SqlCommand cmd3 = new SqlCommand("select * from Plan_table where plan_name = '" + value + "';",
                        con3);
                    SqlDataReader reader3 = cmd3.ExecuteReader();
                    while (reader3.Read())
                    {
                        TextBox8.Text = reader3["plan_name"].ToString();
                        TextBox9.Text = reader3["plan_duration"].ToString();
                        TextBox10.Text = reader3["plan_cost"].ToString();
                        TextBox11.Text = reader3["plan_desc"].ToString();
                    }

                    con.Close();
                    Button3.Visible = false;
                }

                con.Close();

            }
        }
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        SessionClass.userplan = true;
        DropDownList list = (DropDownList)sender;
        string value = (string)list.SelectedValue;
        SqlConnection con = new SqlConnection(ConnectionString.connection);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from Plan_table where plan_name = '" + value + "';", con);
        SqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            TextBox8.Text = reader["plan_name"].ToString();
            TextBox9.Text = reader["plan_duration"].ToString();
            TextBox10.Text = reader["plan_cost"].ToString();
            TextBox11.Text = reader["plan_desc"].ToString();
        }
        con.Close();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConnectionString.connection);
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into userplans values('" + SessionClass.session + "','" +
                                        DropDownList2.SelectedItem.Text +
                                        "')", con);
        cmd.ExecuteNonQuery();
        con.Close();
        SessionClass.userplan = false;
        Response.Write("<script> alert('Success');</script>");

        con = new SqlConnection(ConnectionString.connection);
        con.Open();
        cmd = new SqlCommand(
            "select * from userplans where usernname = '" + SessionClass.session + "';",
            con);
        SqlDataReader reader = cmd.ExecuteReader();
        if (!reader.HasRows)
        {
            DropDownList2.Items.Clear();

            DropDownList2.Items.Insert(0, new ListItem("Choose a plan", ""));
            DropDownList2.Items[0].Selected = true;
            DropDownList2.Items[0].Attributes["disabled"] = "disabled";

            SqlConnection con2 = new SqlConnection(ConnectionString.connection);
            con2.Open();
            SqlCommand cmd2 = new SqlCommand("select * from Plan_table;", con2);
            SqlDataReader reader2 = cmd2.ExecuteReader();
            while (reader2.Read())
            {
                DropDownList2.Items.Add(reader2["plan_name"].ToString());
            }

            con2.Close();
        }
        else
        {
            string value = string.Empty;

            SqlConnection con2 = new SqlConnection(ConnectionString.connection);
            con2.Open();
            SqlCommand cmd2 = new SqlCommand("select * from Plan_table;", con2);
            SqlDataReader reader2 = cmd2.ExecuteReader();
            while (reader2.Read())
            {
                value = reader2["plan_name"].ToString();
            }


            DropDownList2.Items.Clear();

            DropDownList2.Items.Insert(0, new ListItem("your plan is", ""));
            DropDownList2.Items[0].Selected = true;
            DropDownList2.Items[0].Attributes["disabled"] = "disabled";
            DropDownList2.Enabled = false;

            SqlConnection con3 = new SqlConnection(ConnectionString.connection);
            con3.Open();
            SqlCommand cmd3 = new SqlCommand("select * from Plan_table where plan_name = '" + value + "';",
                con3);
            SqlDataReader reader3 = cmd3.ExecuteReader();
            while (reader3.Read())
            {
                TextBox8.Text = reader3["plan_name"].ToString();
                TextBox9.Text = reader3["plan_duration"].ToString();
                TextBox10.Text = reader3["plan_cost"].ToString();
                TextBox11.Text = reader3["plan_desc"].ToString();
            }

            con.Close();
            Button3.Visible = false;
        }

        con.Close();
    }

    protected void logout_Click(object sender, EventArgs e)
    {
        SessionClass.session = string.Empty;
        Response.Redirect("Default.aspx");
    }

    protected void UserProfile_Click(object sender, EventArgs e)
    {

    }
}