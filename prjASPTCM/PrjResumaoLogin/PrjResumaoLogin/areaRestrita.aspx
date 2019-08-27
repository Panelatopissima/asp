<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="areaRestrita.aspx.cs" Inherits="PrjResumaoLogin.areaRestrita" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
			<p>
				Logado com sucesso!
			</p>
			<asp:Button ID="btnSair" runat="server" Text="Logoff" OnClick="btnSair_Click"/>
        </div>
    </form>
</body>
</html>
