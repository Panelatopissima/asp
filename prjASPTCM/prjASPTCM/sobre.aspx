<%@ Page Title="" Language="C#" MasterPageFile="~/default.Master" AutoEventWireup="true" CodeBehind="sobre.aspx.cs" Inherits="prjASPTCM.sobre" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <title>Sobre</title>
    <link rel="stylesheet" href="style.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="corpo">
    <h1 id="sobreNos"> Sobre nós</h1>
   <%--<asp:Label ID="lblSobre" runat="server" Text="Sobre nós" Font-Size="XX-Large" Font-Names="codebold" Font-Strikeout="False"></asp:Label>--%>
    <div id="conteudosobre">
        <asp:Label ID="Label1" runat="server"  Font-Names="helveticalight" Text="Nós somos a SuperWare, uma empresa composta por seis integrantes que possui como objetivo contruir um sistema de mercados."></asp:Label><br />
        <asp:Label ID="Label2" runat="server"  Font-Names="helveticalight" Text="Devido a falta de acessibilidade, dificuldades com os registros de produtos, clientes e funcionários nos estabelecimentos comerciais vemos necessária a criação de um softgware inovador, interativo e de fácil adaptação.
Apesar de haver diversos softwares nesta área, a SuperWare se destaca por unir todas as ferramneas necessárias, como aplicação para web, aplicação para desktop para as vendas físicas e aplicação mobile (futuramento), facilitando não só para nossos clientes, mas também para o consumidor final."></asp:Label>
       <div id="googleMap" style="width:100%;height:400px;"></div>

<script>
    function myMap() {
        var mapProp = {
            center: new google.maps.LatLng(51.508742, -0.120850),
            zoom: 5,
        };
        var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);
    }
</script>
  <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCrKdnO4dILFCGn3CiuUXlX4L_QgLCED50&callback=myMap"
  type="text/javascript"></script>
    </div>
        </div>
</asp:Content>
