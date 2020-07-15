<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPages/Menu.master" AutoEventWireup="true" CodeFile="praiasecriancas.aspx.cs" Inherits="Pages_praiasecriancas" %>

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
                    </div>
                </div>
            </div>
            <div class="col-6 mx-5" style="max-width: 37%">
                <h3 class="PessoasDesaparecidas mb-3 pb-5">Praias e Crianças</h3>
                <p class="text-justify">Durante essas férias muitas familias vão a praia e isso causa um super lotamento nesses ambientes e normalmente todas as crianças gostam de ficar brincando por isso trazemos 5 dicas para que você e sua familia possa curtir a praia sem muitos problemas no futuro.</p>
                <ul class="text-justify">
                    <li><strong>Pulseiras de identificação</strong> <br />
                        Na maioria dos estados do Brasil os bombeiros disponibilizam pulseiras de identificação tendo como preenchimento nome da criança, do responsavel e tambem o telefone com isso os bombeiros conseguem uma identificação maior do responsavel da criança
                    </li>
                    <li><strong>Tire uma foto da criança</strong> <br />
                        Antes de sair de casa ou ao chegar na praia, tire uma foto de como a criança está vestida. Isso ajuda na hora da busca. Assim é possível ter mais de um grupo, em direções diferentes, buscando a criança e com a imagem dela exatamente como está naquele dia.
                    </li>
                    <li><strong>Vista a criança com roupas chamativas</strong> <br />

                        Isso vale não apenas para praia, mas locais com aglomeração de pessoas. Se a criança estiver vestida com algo que destaque, que seja possível identificar com facilidade, será mais fácil será visualizar durante a estadia na praia e no caso dela se perder.
                    </li>
                    <li><strong>Bata Palmas</strong> <br />
                        Essa tática você já deve ter visto alguma vez nas praias: e funciona! Tanto para chamar atenção dos pais, quanto da própria criança, que às vezes nem sabe que está perdida. Fica ali, brincando na areia, caminhando e se afastando cada vez mais, enquanto os pais ficam desesperados. É mais fácil ela responder a um sinal sonoro, que chama mais atenção, do que apenas pelo nome. O ideal é juntar os dois: gritar o nome e em seguida bater palmas. Unido a isso, o grupo ou a pessoa pode incluir alguma informação sobre a criança: característica da veste ou física.
                    </li>
                    <li><strong>Orientar a criança a procurar os bombeiros ou combinar ponto de encontro</strong> <br />
                        Há pais que já procuram um espaço na areia em que o posto dos Bombeiros fica à vista - e essa pode ser uma boa estratégia. Parece que nunca vai acontecer, mas é melhor garantir: se a criança já consegue se localizar, oriente ela a ir direto pedir socorro aos Bombeiros ou então combine um local de encontro, como as arenas do Conexão Verão, que são coloridas e chamativas. As estruturas são montadas em praias do litoral catarinense, oferecendo diversas atividades, como aulas de dança e massagem. Ou seja, além de minimizar as chances de desencontros, é possível curtir a programação desses espaços.
                    </li>
                </ul>
                <p>Fonte: https://gshow.globo.com/ </p>
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

