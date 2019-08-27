<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="PrjResumaoLogin.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>
</head>
<body>
	<form id="form1" runat="server">
		<div>
			<h2>Login e Senha - Get Set
			</h2>
			<p>
				Cadastro
			</p>
			<asp:TextBox ID="txtCadastroUsu" runat="server" placeholder="Usuário"></asp:TextBox>
			<asp:TextBox ID="txtCadastroSenha" runat="server" placeholder="Senha" type="password"></asp:TextBox>
			<asp:Button ID="btnCriar" runat="server" Text="Criar" OnClick="btnCriar_Click"/>
			<asp:Label ID="lblAvisoCadastro" runat="server" Text=""></asp:Label>
			<p>
				Login
			</p>
			<asp:TextBox ID="txtUsu" runat="server" placeholder="Usuário"></asp:TextBox>
			<asp:TextBox ID="txtSenha" runat="server" placeholder="Senha" type="password"></asp:TextBox>
			<asp:Button ID="btnEntrar" runat="server" Text="Criar" OnClick="btnEntrar_Click" />
			<asp:Label ID="lblAvisoLogin" runat="server" Text=""></asp:Label>
		</div>
	</form>
</body>
</html>
