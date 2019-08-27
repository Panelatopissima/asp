<%@ Page Title="" Language="C#" MasterPageFile="~/default.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="prjASPTCM.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <title>Login</title>
</asp:Content>
<asp:Content ID="ContentPlaceHolder1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="corpo">
    <h1 id="identificacao"> Identificação </h1>
    <%--<asp:Label ID="Label2" runat="server" style="margin-top:500px;" Text="Identificação" Font-Names="codebold" Font-Size="X-Large"></asp:Label>--%>
    <div style="width:100%; height:20%;">
        <div class="areadelogin">
            <asp:Label ID="Label1" style="text-align:center" runat="server" Text="Login" Font-Size="X-Large" Font-Names="helvetica"></asp:Label>
            <asp:TextBox ID="txtUser" runat="server"  BorderStyle="none" placeholder="Usuário" style="margin-top:10px; border-radius: 5px" Height="40px" Width="100%"></asp:TextBox> 
            <asp:TextBox ID="txtPass" runat="server" BorderStyle="none" style="border-radius:5px; margin-top:10px;" placeholder="Senha" TextMode="Password" Height="40px" Width="100%" BorderWidth="5px"></asp:TextBox>
            <asp:Button ID="btnLogin" runat="server" Text="Entrar" style="margin-top:10px; border-radius:5px" Height="40px" Width="100%" BackColor="lightgrey" BorderStyle="None" Font-Names="helvetica" OnClick="btnLogin_Click" />
            <asp:Label ID="Label3" runat="server" Text="Não tem cadastro? Cadastre-se " Font-Names="helvetica"></asp:Label><a href="cadastro.aspx"><asp:Label ID="Label4" runat="server" Text="aqui" Font-Names="helvetica" Font-Bold="True"></asp:Label> </a>
        </div>
  
    
        </div>
        </div>
</asp:Content>
