<%@ Page Title="SuperWare" Language="C#" MasterPageFile="~/default.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="prjASPTCM.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <script src="http://code.jquery.com/jquery-latest.min.js"></script>
  <script src="jquery.slides.min.js"></script>
    <link rel="stylesheet" href="css/pure.css">
    <title>Superware</title>
  <link rel="stylesheet" href="css/font-awesome.min.css">
    <style>
    
    .nomeprodutos{
				font-size:16px;
                font-family:helveticalight;
			}
        .precinho {
            font-weight:bold;
            font-size:16px;
            color:red;
            font-family:helvetica;
        }
    .compraral{
        font-size:16px;
        color:white;
        font-family:lemonmilk;
        border: 2px solid black;
        border-radius: 12px;
        background-color:black;
        text-decoration:none;
    }
    #slides,
    #slides2,
    #slides3 {
      display: none;
      margin-bottom:50px;
      position:relative
      }

    .slidesjs-navigation {
      margin-top:3px;
    }

    .slidesjs-previous {
      margin-right: 5px;
      float: left;
    }

    .slidesjs-next {
      margin-right: 5px;
      float: left;
    }

    .slidesjs-pagination {
      margin: 6px 0 0;
      float: right;
      list-style: none;
    }

    .slidesjs-pagination li {
      float: left;
      margin: 0 1px;
    }

    .slidesjs-pagination li a {
      display: block;
      width: 13px;
      height: 0;
      padding-top: 13px;
      background-image: url(img/pagination.png);
      background-position: 0 0;
      float: left;
      overflow: hidden;
    }

    .slidesjs-pagination li a.active,
    .slidesjs-pagination li a:hover.active {
      background-position: 0 -13px
    }

    .slidesjs-pagination li a:hover {
      background-position: 0 -26px
    }

       .navbar {
      overflow: hidden
    }
  </style>
    <style>
    #slides {
      display: none
    }

    .container {
      margin: 0 auto;
          position:relative;
    }

    /* For tablets & smart phones */
    @media (max-width: 767px) {
      body {
        padding-left: 20px;
        padding-right: 20px;
      }
      .container {
        width: auto

      }
    }

    /* For smartphones */
    @media (max-width: 480px) {
      .container {
        width: auto
      }
    }

    /* For smaller displays like laptops */
    @media (min-width: 768px) and (max-width: 979px) {
      .container {
        width: 724px
      }
    }

    /* For larger displays */
    @media (min-width: 1200px) {
      .container {
        width: 1170px
      }
    }
  </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <br />
    <div id="slides">
      <img src="img/img1.jpg">
      <img src="img/img2.jpg">
      <img src="img/img3.jpg">
      <a href="#" class="slidesjs-previous slidesjs-navigation"><i class="icon-chevron-left"></i></a>
      <a href="#" class="slidesjs-next slidesjs-navigation"><i class="icon-chevron-right"></i></a>
    </div>

  </div>
  <script src="js/jquery.slides.min.js"></script>
  <script>
    $(function() {
      $('#slides').slidesjs({
        width: 1500,
        height: 528,
        navigation: false
      });
    });
  </script>
    <div id="corpo">
         <asp:DataList ID="dlProdutos" runat="server" RepeatColumns="3" RepeatDirection="Horizontal" Width="1000px" >
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
