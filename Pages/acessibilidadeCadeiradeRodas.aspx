﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPages/Menu.master" AutoEventWireup="true" CodeFile="acessibilidadeCadeiradeRodas.aspx.cs" Inherits="Pages_acessibilidadeCadeiradeRodas" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Css/Index.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <div class="container-fluid">
        <div class="row justify-content-center mb-5 mt-5">
            <div class="col-6 ">
                <div class="row justify-content-center mx-auto">
                    <div class="col-1 ">
                        <asp:LinkButton ID="Dicas" runat="server" CssClass="buttonMenu " OnClick="Dicas_Click">
                            <i class="fa fa-info fa-fw "></i>
                        </asp:LinkButton>
                    </div>
                    <div class="col-1 espacamento">
                        <asp:LinkButton ID="Notícias" runat="server" CssClass="buttonMenu ">
                            <i class="fa fa-newspaper-o fa-fw "></i>
                        </asp:LinkButton>
                    </div>
                    <div class="col-1 ">
                        <asp:LinkButton ID="PessoasEncontradas" runat="server" OnClick="PessoasEncontradas_Click" CssClass="buttonMenu">
                            <i class="fa fa-heart fa-fw "></i>
                        </asp:LinkButton>
                    </div>
                </div>
            </div>

        </div>
        <div class="row justify-content-center">
            <div class="col-2">
                <div class="row">
                    <div class="col-12 container-left mt-5">
                        <h3 class="tituloSocial">Confira as Redes Sociais</h3>
                        <div class="row">
                            <div class="col-3 p-2 pl-3">
                                <div class="plus">
                                    <asp:LinkButton ID="facebook" runat="server" CssClass="button" onclientclick="window.open('https://www.facebook.com/asp.net')">
                                        <i class="fa fa-facebook-f fa-fw"></i>
                                    </asp:LinkButton>
                                </div>
                            </div>
                            <div class="col-3 p-2 pl-3">
                                <div class="plus">
                                    <asp:LinkButton ID="youtube" runat="server" CssClass="button" onclientclick="window.open('https://www.youtube.com/channel/UC-NZkLwbVeVi9BzAAaRdWSw')">
                                        <i class="fa fa-youtube-play fa-fw"></i>
                                    </asp:LinkButton>
                                </div>
                            </div>
                            <div class="col-3 p-2 pl-3">
                                <div class="plus">
                                    <asp:LinkButton ID="twitter" runat="server" CssClass="button" onclientclick="window.open('https://twitter.com/aspnet')">
                                        <div class="social">
                                            <i class="fa fa-twitter fa-fw"></i>
                                        </div>
                                    </asp:LinkButton>
                                </div>
                            </div>
                            <div class="col-3 p-2 pl-3 pr-0">
                                <div class="plus">
                                    <asp:LinkButton ID="instagram" runat="server" CssClass="button" onclientclick="window.open('https://www.instagram.com/asp.net_learning/')">
                                        <div class="social">
                                            <i class="fa fa-instagram fa-fw"></i>
                                        </div>
                                    </asp:LinkButton>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 container-left mt-3">
                        <h3 class="tituloAtividadeRecente">Atividade Recente</h3>
                        <asp:Repeater ID="rptAtividadeRecente" runat="server">
                            <ItemTemplate>
                                <div class="row p-2">
                                    <div class="col-4 p-2">
                                        <img src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png" class="img-fluid p-0" style="border-radius: 50%"/>
                                    </div>
                                    <div class="col-7 p-2">
                                        <p class="font-weight-bold m-0" style="font-size:15px">Nome</p>
                                        <p class="m-0" style="font-size:14px"><%#Eval("pes_nome")%></p>
                                        <p class="font-weight-bold m-0" style="font-size:15px">Reconectamos</p>
                                        <p class="m-0" style="font-size:14px">dia <%#Eval("des_encontrado").ToString().Substring(0,10)%></p>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
            <div class="col-6 mx-5" style="max-width: 37%">
                <h3 class="PessoasDesaparecidas mb-3 pb-5">Tenho rodas mas não sou hotwheels</h3>
                <p class="text-justify">Muitas pessoas não sabem como agir quando estão diante de um cadeirante e acabam se afobando e fazendo algo desrespeituoso então juntamos algumas dicas para evitar esta situação. </p>
                <ul class="text-justify">
                    <li> Procure acompanhar o passo da pessoa.</li>
                    <li>Se você achar que ela está com dificuldades, ofereça ajuda e pergunte como deve prosseguir.</li>
                    <li>Sempre que for falar com uma pessoa cadeirante, procure ficar de frente e no mesmo nível do seu olhar.</li>
                    <li>Lembre-se, quando estiver empurrando alguém sentado em uma cadeira de rodas e parar para conversar com outra pessoa vire a cadeira de frente da conversa para que o cadeirante também possa participar da conversa também.</li>
                    <li>Peça permissão para movimentar a cadeira de rodas.</li>
                </ul>
                <p>Fonte:https://m.sebrae.com.br/ </p>
            </div>
            <div class="col-2">

                <div class="row">
                    <div class="col-12 container-left mb-3 pb-3">
                        <h3 class="tituloSocial mb-2">Vulneraveis Ativos</h3>
                        <div class="repetidorPessoas flex-row">
                            <asp:Repeater runat="server" ID="rptVulneravel" OnItemCommand="rptVulneravel_ItemCommand">
                                <ItemTemplate>
                                    <div class="plus mr-3 mb-3">
                                        <asp:ImageButton
                                            ID="btnvulneravel"
                                            runat="server"
                                            CssClass="button"
                                            CommandArgument='<%#Eval("vul_id")%>'
                                            CommandName="vulneravel"
                                            ImageUrl="http://ssl.gstatic.com/accounts/ui/avatar_2x.png"></asp:ImageButton>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>

                            <div class="plus2">
                                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="button" OnClick="CadastrarVulneravel_Click">
                                <i class="fa fa-plus fa-fw"></i>
                                </asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 container-left mb-3 pb-3">
                        <h3 class="tituloSocial mb-2">Desaparecidos Ativos</h3>
                        <div class="repetidorPessoas flex-row">
                            <asp:Repeater runat="server" ID="rptDesaparecidos" OnItemCommand="rptDesaparecidos_ItemCommand">
                                <ItemTemplate>
                                    <div class="plus mr-3 mb-3">
                                        <asp:ImageButton
                                            ID="btndesaparecido"
                                            runat="server"
                                            CssClass="button"
                                            CommandName="desaparecido"
                                            CommandArgument='<%#Eval("des_id")%>'
                                            ImageUrl="http://ssl.gstatic.com/accounts/ui/avatar_2x.png"></asp:ImageButton>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>



                            <div class="plus2">
                                <asp:LinkButton ID="CadastrarDesaparecido" runat="server" CssClass="button" OnClick="CadastrarDesaparecido_Click">
                                <i class="fa fa-plus fa-fw"></i>
                                </asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 container-left">
                        <h2 class="estatisticas mt-2">Estatísticas</h2>
                        <h3 class="subTituloEstatistivas">Estados com maior numeros de casos</h3>
                        <img src="../Images/grafico.jpg" class="img-fluid" />
                        <div class="text-center">
                            <a href="#" class="saibaMais">Saiba Mais ...</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- The Modal -->
<div class="modal" id="modalTest">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Atenção</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
        <asp:Literal runat="server" ID="ltlTest"></asp:Literal>
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Fechar</button>
      </div>

    </div>
  </div>
</div>

</asp:Content>





