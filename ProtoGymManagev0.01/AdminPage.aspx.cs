using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Text = string.Empty;
        TextBox2.Text = string.Empty;
        TextBox3.Text = string.Empty;
        TextBox4.Text = string.Empty;
        TextBox5.Text = string.Empty;
        TextBox6.Text = string.Empty;
        TextBox7.Text = string.Empty;
        TextBox8.Text = string.Empty;
        TextBox9.Text = string.Empty;
        TextBox10.Text = string.Empty;
        TextBox11.Text = string.Empty;
        planname.Text = string.Empty;

        if (SessionClass.session!="admin")
        {
            Response.Redirect("Default.aspx");
        }
    }

    protected void CreatePlan_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = false;
    }

    protected void EditPlan_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = true;
        Panel3.Visible = false;
        Panel4.Visible = false;

        DropDownList1.Items.Clear();

        DropDownList1.Items.Insert(0, new ListItem("Choose plan to edit",""));
        DropDownList1.Items[0].Selected = true;
        DropDownList1.Items[0].Attributes["disabled"] ="disabled";

        SqlConnection con = new SqlConnection(ConnectionString.connection);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from Plan_table;", con);
        SqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            DropDownList1.Items.Add(reader["plan_name"].ToString());
        }
        con.Close();
    }

    protected void DeletePlan_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = true;
        Panel4.Visible = false;

        DropDownList2.Items.Clear();

        DropDownList2.Items.Insert(0, new ListItem("Choose plan to delete", ""));
        DropDownList2.Items[0].Selected = true;
        DropDownList2.Items[0].Attributes["disabled"] = "disabled";

        SqlConnection con = new SqlConnection(ConnectionString.connection);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from Plan_table;", con);
        SqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            DropDownList2.Items.Add(reader["plan_name"].ToString());
        }
        con.Close();
    }

    protected void ViewMembers_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel4.Visible = true;

        ListBox1.Items.Clear();

        SqlConnection con = new SqlConnection(ConnectionString.connection);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from Plan_table;", con);
        SqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            ListBox1.Items.Add(reader["plan_name"].ToString());
        }
        con.Close();
    }

    protected void logout_Click(object sender, EventArgs e)
    {
        SessionClass.session = string.Empty;
        Response.Redirect("Default.aspx");
    }

    protected void Button1_OnClick(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConnectionString.connection);
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into Plan_table values('" + planname.Text + "','" + TextBox1.Text +
                                        "','" + TextBox3.Text + "','" + TextBox4.Text + "')",con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script> alert('Success');</script>");
    }

    protected void Button2_OnClick(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConnectionString.connection);
        con.Open();
        SqlCommand cmd =
            new SqlCommand(
                "update Plan_table set plan_name = '" + TextBox2.Text + "' , plan_duration = '" + TextBox5.Text +
                "' , plan_cost= '" + TextBox6.Text + "' , plan_desc= '" + TextBox7.Text + "' where plan_name = '" +
                DropDownList1.SelectedItem.Text + "' ;", con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script> alert('Update Success');</script>");

        DropDownList1.Items.Clear();

        DropDownList1.Items.Insert(0, new ListItem("Choose plan to edit", ""));
        DropDownList1.Items[0].Selected = true;
        DropDownList1.Items[0].Attributes["disabled"] = "disabled";

        con = new SqlConnection(ConnectionString.connection);
        con.Open();
        cmd = new SqlCommand("select * from Plan_table;", con);
        SqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            DropDownList1.Items.Add(reader["plan_name"].ToString());
        }
        con.Close();
    }

    protected void DropDownList1_OnSelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList list = (DropDownList)sender;
        string value = (string)list.SelectedValue;
        SqlConnection con = new SqlConnection(ConnectionString.connection);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from Plan_table where plan_name = '"+ value + "';", con);
        SqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            TextBox2.Text = reader["plan_name"].ToString();
            TextBox5.Text = reader["plan_duration"].ToString();
            TextBox6.Text = reader["plan_cost"].ToString();
            TextBox7.Text = reader["plan_desc"].ToString();
        }
        con.Close();
    }

    protected void Button3_OnClick(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConnectionString.connection);
        con.Open();
        SqlCommand cmd =
            new SqlCommand(
                "delete from Plan_table where plan_name = '" +
                DropDownList2.SelectedItem.Text + "' ;", con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script> alert('Delete Success');</script>");

        DropDownList2.Items.Clear();

        DropDownList2.Items.Insert(0, new ListItem("Choose plan to delete", ""));
        DropDownList2.Items[0].Selected = true;
        DropDownList2.Items[0].Attributes["disabled"] = "disabled";

        con = new SqlConnection(ConnectionString.connection);
        con.Open();
        cmd = new SqlCommand("select * from Plan_table;", con);
        SqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            DropDownList2.Items.Add(reader["plan_name"].ToString());
        }
        con.Close();
    }

    protected void DropDownList2_OnSelectedIndexChanged(object sender, EventArgs e)
    {
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

    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {
        ListBox2.Items.Clear();
        ListBox list = (ListBox)sender;
        string value = (string)list.SelectedValue;

        SqlConnection con = new SqlConnection(ConnectionString.connection);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from userplans where plan_name = '" + value + "';", con);
        SqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            ListBox2.Items.Add(reader["usernname"].ToString());
        }
        con.Close();
    }

    protected void ListBox2_SelectedIndexChanged(object sender, EventArgs e)
    {
        ListBox list = (ListBox)sender;
        string value = (string)list.SelectedValue;

        SqlConnection con = new SqlConnection(ConnectionString.connection);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from login where username = '" + value + "';", con);
        SqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            Label4.Text = reader["username"].ToString();
            Label6.Text = reader["Name"].ToString();
            Label8.Text = reader["Email"].ToString();
            Label10.Text = reader["Mobile Number"].ToString();
        }
        con.Close();
    }
}