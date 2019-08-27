<%@ Page Title="" Language="C#" MasterPageFile="~/default.Master" AutoEventWireup="true" CodeBehind="contato.aspx.cs" Inherits="prjASPTCM.contato" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <title>Contato          </title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="corpo">
    <h1 id="sobreNos"> Contato </h1>
   
    <div id="conteudosobre">
        <asp:TextBox ID="txtSeuEmail" runat="server"  BorderStyle="none" placeholder="Seu Email" style="margin-top:10px; border-radius: 5px" Height="40px" Width="50%"></asp:TextBox>
        <asp:TextBox ID="txtSubject" runat="server"  BorderStyle="none" placeholder="Assunto" style="margin-top:10px; border-radius: 5px" Height="40px" Width="50%"></asp:TextBox>
        <asp:TextBox ID="txtBody" runat="server"  BorderStyle="none" placeholder="Mensagem" style="margin-top:10px; border-radius: 5px" Height="40px" Width="50%"></asp:TextBox>
        <br />
        <asp:Button ID="Btn_SendMail" runat="server" style="margin-top:10px; border-radius:5px;" Height="40px" Width="50%" BackColor="lightgrey" BorderStyle="None" Font-Names="helvetica" onclick="Btn_SendMail_Click" Text="Send Email" /><br>
   
        </div>
    </div>
</asp:Content>
