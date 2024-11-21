<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ASPWebsite.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Welcome to Nahlan's Login Page</title>

    <meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate" />
    <script>
        window.addEventListener('pageshow', function (event) [
            var form = document.getElementById("form1");
            form.reset();

        ]);
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>Welcome to Nahlan's Login Page</p>
              </br>
              <asp:Label ID="UsernameLabel" runat="server" Text="User Name:"></asp:Label>
            <asp:TextBox ID="UserName" runat="server" MaxLength="10"></asp:TextBox>
            <asp:RequiredFieldValidator ID="UserNameValidator" runat="server" ErrorMessage="Username is Required" ControlToValidate="UserName"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="PasswordLabel" runat="server" Text="Password:"></asp:Label> 
            <asp:TextBox ID="Password" runat="server" MaxLength="20" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="PasswordValidator" runat="server" ErrorMessage="Password is Required" ControlToValidate="PassWord"></asp:RequiredFieldValidator>

            <br />
            <br />
            <asp:Label ID="MessageLabel" runat="server" Text=""></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="LoginButton" runat="server" Text="Login" OnClick="Login_OnClick"/>
              <br />
            <br />
            <asp:SqlDataSource ID="UserLogin" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [ID], [User_id], [PlainTextPassword] FROM [user_data] WHERE ([User_id] = ?)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="UserName" Name="User_id" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
              </br>
        </div>
    </form>
</body>
</html>
