<%@ Page Title="" Language="C#" MasterPageFile="~/default.Master" AutoEventWireup="true" CodeBehind="Datalist.aspx.cs" Inherits="prjASPTCM.Datalist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div id="corpo">
         <asp:DataList ID="dlProdutos" runat="server" RepeatColumns="3" RepeatDirection="Horizontal" Width="600px">
                <ItemTemplate>
                    <div>
                        <ul id="plans">
                            <li>
                                <ul>
                                    <li>
                                        <h4>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("nome_prod") %>'></asp:Label>
                                        </h4>
                                    </li>
                                    <li>
                                        <asp:Image ID="imgFoto" runat="server" Width="80px" Height="80px" ImageUrl='<%# Bind("id_prod","~/images/Img({0}).png") %>' />
                                    </li>
                                    <li>
                                        <ul>
                                            <li>
                                                <span>
                                                    <asp:Label ID="lblNome" runat="server" Text='<%# Bind("nome_prod") %>'></asp:Label>
                                                </span>
                                            </li>
                                            <li>
                                                <span>
                                                    <asp:Label ID="lblCidade" runat="server" Text=' <%# Bind("preco_un") %>'></asp:Label>
                                                </span>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="Produto<%# Eval("id_prod") %>.aspx">Produto <%# Eval("id_prod") %></a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </ItemTemplate>
            </asp:DataList>
     </div>
</asp:Content>
