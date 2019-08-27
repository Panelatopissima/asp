<%@ Page Title="" Language="C#" MasterPageFile="~/default.Master" AutoEventWireup="true" CodeBehind="Produto1.aspx.cs" Inherits="prjASPTCM.Produto1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="jquery.slides.min.js"></script>
    <link rel="stylesheet" href="css/example.css">
    <title>Superware</title>
  <link rel="stylesheet" href="css/font-awesome.min.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="corpo">
    <br />
         <asp:DataList ID="dlProdutos" runat="server" RepeatColumns="3" RepeatDirection="Horizontal" Width="1000px">
                <ItemTemplate>
                    <div class="item">
                        <ul class="undecored-ul">
                            <li>
                                <ul>
                                    <li>
                                        <a href="Produto<%# Eval("id_prod") %>.aspx">
                                          <asp:Image ID="imgFoto" runat="server" Width="150px" Height="150px" ImageUrl='<%# Bind("id_prod","~/imgdataa/img({0}).png") %>' />
                                   </a> 
                                    </li>
                                    <li>
                                        <ul>
                                                <span>
                                                    <asp:Label ID="lblNome" runat="server" Text='<%# Bind("nome_prod") %>' class="nomeprodutos"></asp:Label>
                                                </span>
                                            <br />
                                                <span>
                                                   <a class="precinho">R$</a> <asp:Label ID="lblPreco" class="precinho" runat="server" Text='<%# Bind("preco_un") %>' style="margin-right:35px"></asp:Label>
                                                </span>
                                        </ul>
                                    </li>
                                    <li>
                                        <a class="compraral" href="Produto<%# Eval("id_prod") %>.aspx">COMPRAR<a/>
                                    </li>
                                    <br />
                                </ul>
                            </li>
                        </ul>
                    </div>
                </ItemTemplate>
            </asp:DataList>
     </div>
    <br /> <br />
</asp:Content>
