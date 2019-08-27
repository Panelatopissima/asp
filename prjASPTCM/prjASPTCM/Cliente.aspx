<%@ Page Title="" Language="C#" MasterPageFile="~/default.Master" AutoEventWireup="true" CodeBehind="LimpezaPrincipal.aspx.cs" Inherits="prjASPTCM.Cliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script src="jquery.slides.min.js"></script>
    <link rel="stylesheet" href="css/example.css">
    <title>Superware</title>
  <link rel="stylesheet" href="css/font-awesome.min.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div id="corpo">
         <h1 id="sobreNos"> Limpeza </h1>
        <asp:DataList ID="dlProdutos" runat="server" RepeatColumns="3" RepeatDirection="Horizontal" Width="1000px">
                <ItemTemplate>
                    <div class="item">
                        <ul class="undecored-ul">
                            <li>
                                <ul>
                                    <li>
                                        <h4>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("nome_prod") %>' Style="font-size:16px"></asp:Label>
                                        </h4>
                                    </li>
                                    <li>
                                        <a href="Produto<%# Eval("id_prod") %>.aspx">
                                          <asp:Image ID="imgFoto" runat="server" Width="150px" Height="150px" ImageUrl='<%# Bind("id_prod","~/imgdataa/img({0}).png") %>' />
                                   </a> 
                                    </li>
                                    <li>
                                        <ul>
                                                <span>
                                                    <asp:Label ID="lblNome" runat="server" Text='<%# Bind("nome_prod") %>' style="margin-right:35px"></asp:Label>
                                                </span>
                                            <br />
                                                <span>
                                                   <a>R$</a> <asp:Label ID="lblCidade" runat="server" Text='<%# Bind("preco_un") %>' style="margin-right:35px"></asp:Label>
                                                </span>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="Produto<%# Eval("id_prod") %>.aspx">Ir Para a página.<a/>
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
