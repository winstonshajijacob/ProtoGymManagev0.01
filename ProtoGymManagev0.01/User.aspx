<%@ Page Language="C#" AutoEventWireup="true" CodeFile="User.aspx.cs" Inherits="User" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <script type="text/javascript">window.$crisp=[];window.CRISP_WEBSITE_ID="5f6c09b6-431f-44aa-be06-fa96463a5041";(function(){d=document;s=d.createElement("script");s.src="https://client.crisp.chat/l.js";s.async=1;d.getElementsByTagName("head")[0].appendChild(s);})();</script>
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
        .buttons{
            width: 80%;
            margin: 0px auto;
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
        .btnstyle2 {
                      
            z-index: 1;
            background-color: red;
            color: white;
            padding: 14px 20px;
            margin: 8px 26px;
            border: none;
            cursor: pointer;
            width: 140px;
            border-radius: 10%;
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
    text-align: center;
    color: black;
        text-indent: 45%;

}
        .boxstyle4 {
            width: 80%;
            height: 50px;
            padding: 12px 20px;
            margin-left: 100px;
            margin-top: 20px;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
            font-size: 16px;
            text-align: center;
            color: black;
            text-indent: 45%;
  
        }
        .Panel1 {
            width: 961px;
            height: 650px;
            position: absolute;
            top: 192px;
            left: 425px;
            z-index: 1;
            opacity: 0.9;
           
        }
        .Panel1 h2{
            margin-left:430px;
            color: white;
        }
        .Panel2 {
            width: 961px;
            height: 650px;
            position: absolute;
            top: 192px;
            left: 425px;
            z-index: 1;
            opacity: 0.9;
            border-radius: 10%;
           
        }
        .Panel2 h2{
            margin-left:420px;
            color: white;
        }
        .main-box {
            width: 100%;
            height: 300px;
            margin-top: 30px;
            
        }
        .left-side {
            float: left;
            width: 50%;
        }
        .right-side {
            float: right;
            width: 50%;
        }
        .bottom-btn {
            position: relative;
            text-align: center;
            
        }
        .settingsimg {
            height: 64px;
            width: 64px;
        }
  
        .set1{
            margin-top:10px;
            font-size:20px;
            
            text-align: center;
        }
        .propic{
            border-radius: 50%;
        }
        .imgcontainer {
            text-align: center;
            margin: 24px 0 12px 0;
            position: relative;
        }
        .auto-style1 {
            height: 64px;
            width: 64px;
            position: absolute;
            top: 6px;
            left: 893px;
            z-index: 1;
        }
        .txtboxstyle {
            height: 30px;
            margin-bottom: 20px;
            width: 250px;
        }
        .labelstyle {
            position: relative;
            left: -30px;
            
        }
        .bottnstyle {
            background-color: red;
            color: white;
            padding: 14px 20px;
            margin: 8px 26px;
            border: none;
            cursor: pointer;
        }
        .spacemaker {
            height: 100px;
            width: 100%;
        }
        .bottom_div {
            position: relative;
           
            top: 400px;
        }
    </style>
</head>
    
<body background="Images/slide2.jpg">
    <form id="form1" runat="server">
         <div class="main">
            <div class="navbar">
			<div class="sub-container">
			<div class="logo"> 
				<img src="Images/LogoFit.png"/>
			</div>


			<div class="side">
					<h2>Welcome User</h2>
                <asp:Button ID="logout" runat="server" CssClass="btnstyle1" Text="Log out" OnClick="logout_Click"  />
							
				</div>
                </div>
                </div>
             <div class="buttons">
                 <asp:Button ID="UserProfile" runat="server" CssClass="btnstyle" Text="Your Profile" OnClick="UserProfile_Click" />
                 <asp:Button ID="PlanDetails" runat="server" CssClass="btnstyle" Text="Plan Details"  />
                 <asp:Button ID="Calorie" runat="server" CssClass="btnstyle" Text="Calorie Counter" />
                 <asp:Button ID="Diet" runat="server" CssClass="btnstyle" Text="Diet"/>
             </div>

             <asp:Panel ID="Panel3" runat="server" CssClass="Panel1" BackColor="Gray" Visible="False">
                <h2>Your Plan  </h2>
                <asp:DropDownList ID="DropDownList2" AutoPostBack="True" CssClass="boxstyle3" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"></asp:DropDownList>
                    <asp:TextBox ID="TextBox8" placeholder="Plan Name" CssClass="boxstyle" runat="server" Enabled="False"></asp:TextBox>
                <asp:TextBox ID="TextBox9" placeholder="Plan Duration" CssClass="boxstyle" runat="server" Enabled="False"></asp:TextBox>
                    <asp:TextBox ID="TextBox10" placeholder="Plan Cost" CssClass="boxstyle"  runat="server" Enabled="False"></asp:TextBox>
                    <asp:TextBox ID="TextBox11" placeholder="Plan Description" CssClass="boxstyle1" runat="server" Enabled="False"></asp:TextBox>
                    <asp:Button ID="Button3" CssClass="boxstyle2" runat="server" Text="Register" OnClick="Button3_Click" />
  </asp:Panel>

             <asp:Panel ID="Panel1" runat="server" CssClass="Panel2" BackColor="Gray" Visible="False">
                 <h2>Your Profile  </h2>
                 <div class="imgcontainer">
                 <asp:Image ID="Image1" CssClass="propic" runat="server" ImageUrl="~/Images/Avatar.png" />
                 </div>
                 <asp:ImageButton ID="ImageButton1" CssClass="auto-style1" runat="server" ImageUrl="~/Images/Avatar.png" />
                 
                 <div class="main-box">
               
                
                             
                                    <div class="left-side">
                                        <div class="set1">
                             <asp:Label ID="Label1" CssClass="labelstyle" runat="server" Text="Name:"></asp:Label>
                             <asp:TextBox ID="TextBox1" CssClass="txtboxstyle" runat="server"></asp:TextBox>
                                            </div>
                                        <div class="set1">
                             <asp:Label ID="Label2" CssClass="labelstyle" runat="server" Text="Email:"></asp:Label>
                             <asp:TextBox ID="TextBox2" CssClass="txtboxstyle" runat="server"></asp:TextBox>
                                        </div>
                                            <div class="set1">
                             <asp:Label ID="Label3" CssClass="labelstyle" runat="server" Text="Mobile No:"></asp:Label>
                             <asp:TextBox ID="TextBox3" CssClass="txtboxstyle" runat="server"></asp:TextBox>
                                            </div>
                                                <div class="set1">
                             <asp:Label ID="Label4" CssClass="labelstyle" runat="server" Text="Plan:"></asp:Label>
                             <asp:DropDownList CssClass="txtboxstyle" ID="DropDownList1" runat="server"></asp:DropDownList>
                                                </div>
                                    </div>
                                 
                                 <div class="right-side">
                                     <div class="set1">
                 <asp:Label ID="Label5" CssClass="labelstyle" runat="server" Text="Age:"></asp:Label>
                 <asp:TextBox ID="TextBox5"  CssClass="txtboxstyle" runat="server"></asp:TextBox>
                                     </div>
                                         <div class="set1">
                 
                 <asp:Label ID="Label6" CssClass="labelstyle" runat="server" Text="Height:"></asp:Label>
                 <asp:TextBox ID="TextBox6" CssClass="txtboxstyle" runat="server"></asp:TextBox>
                                         </div>
                                             <div class="set1">
                 <asp:Label ID="Label7" CssClass="labelstyle" runat="server" Text="Weight:"></asp:Label>
                 <asp:TextBox ID="TextBox7" CssClass="txtboxstyle" runat="server"></asp:TextBox>
                                             </div>
                                                 <div class="set1">
                 <asp:Label ID="Label8" CssClass="labelstyle" runat="server" Text="Sex:"></asp:Label>
                 <asp:TextBox ID="TextBox12" CssClass="txtboxstyle" runat="server"></asp:TextBox>
                                                 </div>
                                 </div>
                 </div>
                 <div class="bottom-btn">
                 <asp:Button ID="Button1" CssClass="bottnstyle" runat="server" Text="Save Changes"  Visible="True"/>
                     </div>
                
             </asp:Panel>

             <asp:Panel ID="Panel2" CssClass="Panel2" BackColor="Gray" runat="server"  Visible="True">
                 <h2>Calorie Counter  </h2>
                 <div class="spacemaker"></div>
                 <div class="left-side">
                     <div class="set1">
                         <asp:Label ID="Label9" CssClass="labelstyle" runat="server" Text="Sex:"></asp:Label>
                         <asp:TextBox ID="TextBox4" CssClass="txtboxstyle" runat="server"></asp:TextBox>
                     </div>
                     <div class="set1">
                         <asp:Label ID="Label10" CssClass="labelstyle" runat="server" Text="Age:"></asp:Label>
                         <asp:TextBox ID="TextBox13" CssClass="txtboxstyle" runat="server"></asp:TextBox>
                     </div>
                     <div class="set1">
                         <asp:Label ID="Label11" CssClass="labelstyle" runat="server" Text="Height:"></asp:Label>
                         <asp:TextBox ID="TextBox14" CssClass="txtboxstyle" runat="server"></asp:TextBox>
                     </div>
                     <div class="set1">
                         <asp:Label ID="Label12" CssClass="labelstyle" runat="server" Text="Weight:"></asp:Label>
                         <asp:TextBox ID="TextBox15" CssClass="txtboxstyle" runat="server"></asp:TextBox>
                     </div>
                 <div class="set1">
                         <asp:Label ID="Label13" runat="server" Text="Your BMI is: "></asp:Label><asp:Label ID="Label14" runat="server" Text="BMI_Val"></asp:Label>
                 </div>
                 <div class="set1">
                         <asp:Button ID="Button2" CssClass="btnstyle2" runat="server" Text="Update Details" />
                 </div>
                 </div>
                 <div class="right-side">
                     
                     <asp:DropDownList ID="DropDownList3" runat="server"></asp:DropDownList>
                     <asp:Button ID="Button4" runat="server" Text="Button" />
                 </div>
                 <div class="bottom_div">
                    <h3>Your calorie intake is:</h3>
                     <h3>You will hit your goal in: </h3>
                 </div>

             </asp:Panel>
             </div>
    </form>
</body>
</html>
