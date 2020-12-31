<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminPage.aspx.cs" Inherits="AdminPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        * {
    margin: 0;
    padding: 0;
    font-family: Helvetica, Arial, sans-serif;
}
        body{
              margin: 0;
    overflow-x: hidden;
        }
        .main{
             width: 100%;
    height: 800px;
        }

        .btnstyle {
          
            z-index: 1;
            background-color: red;
    color: white;
    padding: 14px 20px;
    margin: 8px 26px;
    border: none;
    cursor: pointer;
    width: 20%;
        }
         .btnstyle1 {
            float:right;          
            z-index: 1;
            background-color: red;
    color: white;
    padding: 14px 20px;
    margin: 8px 26px;
    border: none;
    cursor: pointer;
    width: 100px;
        }
        .sub-container{
     width: 100%;
     margin: 0 auto;
     padding:0;
}
.menu{
    float: right;

}
.navbar {
    width: 100%;
    overflow: hidden;
    height: 80px;
    background: #808080;
    border-bottom: 5px solid red;
}
.logo {
    
    float: left ;
    background: #808080;
    height: 80px;
    text-align: center;
    
}
    .logo img {
        margin-left: 10px;
        height: 80px;
        width: 80px;
        overflow: hidden;
    }    
    .side{
        float:right;
        margin-top: 10px;
        display:block;
        
    }
    .side h2{
        top: 2px;
        float:left;
        margin-top: 10px;
    }
    .buttons{
        width: 80%;
        margin: 0px auto;
    }
   

        .Panel1 {
            width: 961px;
            height: 650px;
            position: absolute;
            top: 192px;
            left: 425px;
            z-index: 1;
           
        }
        .Panel1 h2{
            margin-left:430px;
            color: white;
        }
 
   .boxstyle  {
    width: 90%;
    height: 50px;
    padding: 12px 20px;
    margin-left: 50px;
    margin-top: 40px;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
    font-size: 16px;
    text-align:center;
}
   .boxstyle1  {
    width: 90%;
    height: 100px;
    padding: 12px 20px;
    margin-left: 50px;
    margin-top: 40px;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
    font-size: 16px;
    text-align:center;
}
   .boxstyle2  {
    width: 80%;
    height: 50px;
    padding: 12px 20px;
    margin-left: 100px;
    margin-top: 50px;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
    font-size: 16px;
    text-align:center;
     background-color: red;
    color: black;
}
    .boxstyle3  {
    width: 80%;
    height: 50px;
    padding: 12px 20px;
    margin-left: 100px;
    margin-top: 20px;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
    font-size: 16px;
    text-align:center;
    color: black;
}

    .Panel2 {
            width: 1100px;
            height: 650px;
            position: absolute;
            top: 192px;
            left: 425px;
            z-index: 1;
           
        }
        .Panel2 h2{
            margin-top:5px;
            margin-left:450px;
            color: white;
        }
        .Lstyle{
            height: 300px;
            width: 300px;
            text-align:center;
            font-size: 24px;
            border-radius: 10%
        }
        .lbox1{
            margin-left:50px;
            float:left;
          
           
        }
        .lbox2{

            margin-left:50px;
            float:left;
           
             

        }
        .boxes{
            margin-top:50px;
            width: 70%;
           
        }
        .labels{
            width:100%;
            margin-top:20px;
        }
        .labelstyle{
            text-align:center;
            font-size:24px;

        }
        .label1{
            margin-left:120px;
            float:left;
        }
        .label2{
            margin-left:270px;
            float:left;
        }
        .label3{
            margin-top:-15px;
            margin-left:800px;
            float:left;
        }
        .rightlabels{
            width: 30%;
            color:white;
            float:right;
            margin-top:80px;
        }
        .set1{
            margin-top:10px;
            font-size:20px;
            margin-left:20px;
        }
        .contains{
            margin-top: 100px;
        }
    </style>
</head>
<body background="Images/slide4.jpg">
    <form id="form1" runat="server">
        <div class="main">
            <div class="navbar">
			<div class="sub-container">
			<div class="logo"> 
				<img src="Images/LogoFit.png"/>
			</div>


			<div class="side">
					<h2>Welcome Admin</h2>
                <asp:Button ID="logout" runat="server" CssClass="btnstyle1" Text="Log out" OnClick="logout_Click" />
							
				</div>
                </div>
                </div>
            <div class="buttons">
            <asp:Button ID="CreatePlan" runat="server" CssClass="btnstyle" Text="Create Plan" OnClick="CreatePlan_Click" />
            <asp:Button ID="EditPlan" runat="server" CssClass="btnstyle" Text="Edit Plan" OnClick="EditPlan_Click" />
            <asp:Button ID="DeletePlan" runat="server" CssClass="btnstyle" Text="Delete Plan" OnClick="DeletePlan_Click" />
             <asp:Button ID="ViewMembers" runat="server" CssClass="btnstyle" Text="View Members" OnClick="ViewMembers_Click" />
                </div>


            <asp:Panel ID="Panel1" runat="server" CssClass="Panel1" BackColor="Gray" Visible="False">
                <h2>Create Plan  </h2>
              
                    <asp:TextBox ID="planname" placeholder="Plan Name" CssClass="boxstyle" runat="server"></asp:TextBox>
                <asp:TextBox ID="TextBox1" placeholder="Plan Duration" CssClass="boxstyle" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TextBox3" placeholder="Plan Cost" CssClass="boxstyle"  runat="server"></asp:TextBox>
                    <asp:TextBox ID="TextBox4" placeholder="Plan Description" CssClass="boxstyle1" runat="server"></asp:TextBox>
                    <asp:Button ID="Button1" CssClass="boxstyle2" runat="server" Text="Create" OnClick="Button1_OnClick"/>
              

            </asp:Panel>


            <asp:Panel ID="Panel2" runat="server" CssClass="Panel1" BackColor="Gray" Visible="False">
                <h2>Edit Plan  </h2>
                <asp:DropDownList ID="DropDownList1" AutoPostBack="True" CssClass="boxstyle3" runat="server" OnSelectedIndexChanged="DropDownList1_OnSelectedIndexChanged" />
                    <asp:TextBox ID="TextBox2" placeholder="Plan Name" CssClass="boxstyle" runat="server"></asp:TextBox>
                <asp:TextBox ID="TextBox5" placeholder="Plan Duration" CssClass="boxstyle" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TextBox6" placeholder="Plan Cost" CssClass="boxstyle"  runat="server"></asp:TextBox>
                    <asp:TextBox ID="TextBox7" placeholder="Plan Description" CssClass="boxstyle1" runat="server"></asp:TextBox>
                    <asp:Button ID="Button2" CssClass="boxstyle2" runat="server" Text="Edit" OnClick="Button2_OnClick"/>
                  </asp:Panel>


                <asp:Panel ID="Panel3" runat="server" CssClass="Panel1" BackColor="Gray" Visible="False">
                <h2>Delete Plan  </h2>
                    <asp:DropDownList ID="DropDownList2" AutoPostBack="True" CssClass="boxstyle3" runat="server" OnSelectedIndexChanged="DropDownList2_OnSelectedIndexChanged" />
                    <asp:TextBox ID="TextBox8" placeholder="Plan Name" CssClass="boxstyle" runat="server" Enabled="False"></asp:TextBox>
                <asp:TextBox ID="TextBox9" placeholder="Plan Duration" CssClass="boxstyle" runat="server" Enabled="False"></asp:TextBox>
                    <asp:TextBox ID="TextBox10" placeholder="Plan Cost" CssClass="boxstyle"  runat="server" Enabled="False"></asp:TextBox>
                    <asp:TextBox ID="TextBox11" placeholder="Plan Description" CssClass="boxstyle1" runat="server" Enabled="False"></asp:TextBox>
                    <asp:Button ID="Button3" CssClass="boxstyle2" runat="server" Text="Delete" OnClick="Button3_OnClick"/>
              

            </asp:Panel>


            <asp:Panel ID="Panel4" runat="server" CssClass="Panel2" BackColor="Gray" Visible="False">
                <h2>View Member  </h2>
                <div class="contains">
                <div class="labels">
                    <div class="label1">
                <asp:Label ID="Label1" runat="server" Text="Package" CssClass="labelstyle"></asp:Label></div>
                     <div class="label2"><asp:Label ID="Label2" runat="server" Text="Member" CssClass="labelstyle"></asp:Label></div>
                     <div class="label3"><asp:Label ID="Label11" runat="server" Text="Member Details" CssClass="labelstyle"></asp:Label></div>
                    </div>

                <div class="boxes">
                   
                <div class="lbox1">
                    
                <asp:ListBox ID="ListBox1" AutoPostBack="True" CssClass="Lstyle" runat="server" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged" ></asp:ListBox> 
                </div>

                <div class="lbox2">
             
                <asp:ListBox ID="ListBox2" AutoPostBack="True" CssClass="Lstyle" runat="server" OnSelectedIndexChanged="ListBox2_SelectedIndexChanged" ></asp:ListBox>
 </div>
                    </div>
                <div class="rightlabels">
                    <div class="set1">
                <asp:Label ID="Label3" runat="server" Text="Username: "></asp:Label>
                <asp:Label ID="Label4" runat="server"></asp:Label>
                </div>
                    <div class="set1">
                <asp:Label ID="Label5" runat="server" Text="Name: "></asp:Label>
                <asp:Label ID="Label6" runat="server"></asp:Label>
                </div>
                    <div class="set1">
                <asp:Label ID="Label7" runat="server" Text="Email:"></asp:Label>
                <asp:Label ID="Label8" runat="server"></asp:Label>
                </div>
                    <div class="set1">
                <asp:Label ID="Label9" runat="server" Text="Mobile No:"></asp:Label>
                <asp:Label ID="Label10" runat="server"></asp:Label>
        </div>
                    </div>
               </div>
            </asp:Panel>
            
        </div>
    </form>
</body>
</html>
