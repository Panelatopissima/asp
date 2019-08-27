<%@ Page Title="" Language="C#" MasterPageFile="~/default.Master" AutoEventWireup="true" CodeBehind="cadastro.aspx.cs" Inherits="prjASPTCM.cadastro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <title>Cadastro                     </title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="corpo">
    <h1 id="identificacao"> Cadastro </h1>
    <%--<asp:Label ID="Label2" runat="server" style="margin-top:500px;" Text="Identificação" Font-Names="codebold" Font-Size="X-Large"></asp:Label>--%>
    <div style="width:100%; height:20%;">
        <div class="areadecadastro">
            <asp:Label ID="Label1" style="text-align:center" runat="server" Text="Cadastro" Font-Size="X-Large" Font-Names="helvetica"></asp:Label><br />
            <asp:TextBox ID="txtNome" runat="server"  BorderStyle="none" placeholder="Nome" style="margin-top:10px; border-radius: 5px" Height="40px" Width="50%"></asp:TextBox> 
            <asp:TextBox ID="txtSobrenome" runat="server"  BorderStyle="none" placeholder="Sobrenome" style="margin-top:10px; border-radius: 5px" Height="40px" Width="49%"></asp:TextBox> 
            <asp:TextBox ID="txtCPF" runat="server"  BorderStyle="none" placeholder="CPF" style="margin-top:10px; border-radius: 5px" Height="40px" Width="50%"></asp:TextBox>
            <asp:TextBox ID="txtNasc" runat="server"  BorderStyle="none" placeholder="Data de Nascimento" TextMode="Date" style="margin-top:10px; border-radius: 5px" Height="40px" Width="49%"></asp:TextBox> 
             <asp:TextBox ID="txtEndereco" runat="server"  BorderStyle="none" placeholder="Endereço" style="margin-top:10px; border-radius: 5px" Height="40px" Width="100%"></asp:TextBox> 
            <asp:TextBox ID="txtCEP" runat="server"  BorderStyle="none" placeholder="CEP" style="margin-top:10px; border-radius: 5px" Height="40px" Width="50%"></asp:TextBox> 
            <asp:TextBox ID="txtCidade" runat="server"  BorderStyle="none" placeholder="Cidade" style="margin-top:10px; border-radius: 5px" Height="40px" Width="49 %"></asp:TextBox> 
           
            <asp:TextBox ID="txtEmail" runat="server"  BorderStyle="none" placeholder="Email" TextMode="Email" style="margin-top:10px; border-radius: 5px" Height="40px" Width="100%"></asp:TextBox> 
            <asp:TextBox ID="txtPass" runat="server" BorderStyle="none" style="border-radius:5px; margin-top:10px;" placeholder="Senha" TextMode="Password" Height="40px" Width="100%" BorderWidth="5px"></asp:TextBox>
             <asp:Button ID="btnLimpar" runat="server" Text="Limpar" style="margin-top:10px; border-radius:5px;" Height="40px" Width="49%" BackColor="lightgrey" BorderStyle="None" Font-Names="helvetica" OnClick="btnLimpar_Click" />
            <asp:Button ID="btnCadastro" runat="server" Text="Cadastrar" style="margin-top:10px; border-radius:5px;" Height="40px" Width="50%" BackColor="lightgrey" BorderStyle="None" Font-Names="helvetica" OnClick="btnCadastro_Click"/><br />
            <asp:Label ID="Label3" runat="server" Text="Alguma dúvida? Entre em " Font-Names="helvetica"></asp:Label><a href="contato.aspx"><asp:Label ID="Label4" runat="server" Text="contato" Font-Names="helvetica" Font-Bold="True"></asp:Label> </a>
        </div>
  
    <%-- "Insert into tblCliente values 
('"'+txtNome+'"', '"'+txtSobrenome+'"',"+txtCPF+","+txtCEP+","'+txtCidade+'","'+txtEndereco+'", "+time+", "+txtNasc+","'+txtEmail+'", "'+txtSenha+"'") --%>
        </div>
        </div>
</asp:Content>
