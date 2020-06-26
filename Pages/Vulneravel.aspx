<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPages/Menu.master" AutoEventWireup="true" CodeFile="Vulneravel.aspx.cs" Inherits="Pages_Vulneravel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Css/Vulneravel.css" rel="stylesheet" />
    <link href="Css/Index.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container-fluid">
        <div class="row justify-content-center mb-5 mt-5">
            <div class="col-6 ">
                <div class="row justify-content-center mx-auto">
                    <div class="col-1 " >
                        <asp:LinkButton ID="Dicas" runat="server"  CssClass="buttonMenu ">
                                <i class="fa fa-info fa-fw "></i>
                        </asp:LinkButton>
                    </div>
                    <div class="col-1 espacamento" >
                        <asp:LinkButton ID="Notícias" runat="server"  CssClass="buttonMenu ">
                                <i class="fa fa-newspaper-o fa-fw "></i>
                        </asp:LinkButton>
                    </div>
                    <div class="col-1 " >
                        <asp:LinkButton ID="PessoasEncontradas" runat="server" CssClass="buttonMenu">
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
            <div class="col-6 mx-5 my-5 container-left">
                <div class="row justify-content-center">
                    <div class="col-6 ">
                        <div class="imagem mx-auto my-5">
                            <img src="../Images/malucorandom.jpg" class="imagem" />
                        </div>
                    </div>
                </div>
                <div class="row justify-content-center container-left m-3">
                    <div class="col-12 ">
                        <h2 class="mt-2">Informações básicas</h2>
                        <hr />
                    </div>
                    <div class="col-12 ">
                        <p><strong>Nome</strong> José Eduardo</p>
                    </div>
                    <div class="col-6 ">
                        <p><strong>Idade</strong> 39 Anos</p>
                    </div>
                    <div class="col-6 ">
                        <p><strong>Tipo sanguíneo</strong> A+</p>
                    </div>
                    <div class="col-6 ">
                        <p><strong>Sexo</strong> Masculino</p>
                    </div>
                    <div class="col-6 ">
                        <p><strong>Etnia</strong> Branca</p>
                    </div>
                    <div class="col-6 ">
                        <p><strong>Cor do cabelo</strong> Preto</p>
                    </div>
                    <div class="col-6 ">
                        <p><strong>Cor dos olhos</strong> Castanho</p>
                    </div>
                    <div class="col-6 ">
                        <p><strong>Altura</strong> 1,68m</p>
                    </div>
                    <div class="col-6 ">
                        <p><strong>Peso</strong> 80Kg</p>
                    </div>
                    <div class="col-12 ">
                        <p><strong>Descrição</strong>  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sodales sollicitudin leo, at tincidunt est volutpat eu. Maecenas eu tellus elit. Aenean dignissim erat felis, et porttitor tortor eleifend id. Sed id nunc tempor justo posuere pretium. Donec sit amet metus sapien. Ut volutpat magna sed dapibus sagittis. Vestibulum sed purus felis.</p>
                    </div>
                </div>
                <div class="row justify-content-center container-left m-3 mb-4">
                    <div class="col-12 ">
                        <h2 class="mt-2">Informações sobre a saúde da pessoa</h2>
                        <hr />
                    </div>
                    <div class="col-12 ">
                        <p><strong>Restrições alimentares</strong> Nenhuma ou não foi informado</p>
                    </div>
                    <div class="col-12 ">
                        <p><strong>Restrições a medicamentos</strong> Dipirona</p>
                    </div>
                    <div class="col-12 ">
                        <p><strong>Deficiência mental</strong> Autismo</p>
                    </div>
                    <div class="col-12">
                        <p><strong>Deficiência física</strong> Nenhuma ou não foi informado</p>
                    </div>
                    <div class="col-12">
                        <p><strong>Doenças</strong> Nenhuma ou não foi informado</p>
                    </div>

                </div>
                <div class="row justify-content-center mb-3">
                    <div class="custom-control custom-switch">
                        <asp:TextBox ID="customSwitch1" runat="server"  Cssclass="custom-control-input" type="checkbox"></asp:TextBox>
                        <label class="custom-control-label" for="customSwitch1">Tornar esta pessoa um desaparecido</label>
                        <asp:LinkButton ID="temporario" runat="server" CssClass="button" OnClick="temporario_Click">
                                <i class="fa fa-plus fa-fw"></i>
                        </asp:LinkButton>
                    </div>
                </div>



            </div>
            <div class="col-2">

                <div class="row mt-5">
                    <div class="col-12 container-left mb-3 pb-3">
                        <h3 class="tituloSocial mb-2">Vulneraveis Ativos</h3>
                        <div class="plus">
                            <asp:LinkButton ID="CadastrarVulneravel" runat="server" CssClass="button" OnClick="CadastrarVulneravel_Click">
                                <i class="fa fa-plus fa-fw"></i>
                            </asp:LinkButton>
                        </div>
                    </div>

                </div>
                <div class="row">
                    <div class="col-12 container-left mb-3 pb-3">
                        <h3 class="tituloSocial mb-2">Desaparecidos Ativos</h3>
                        <div class="plus">
                            <asp:LinkButton ID="CadastrarDesaparecido" runat="server" CssClass="button" OnClick="CadastrarDesaparecido_Click">
                                <i class="fa fa-plus fa-fw"></i>
                            </asp:LinkButton>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 container-left">
                        <div class="bagulhoamarelo"></div>
                        <h2 class="estatisticas mt-3">Estatísticas</h2>
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

     <!-- Modal de Tornar Desaparecido -->
       <div class="modal fade" id="modalTornarDesaparecido" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Aviso</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="alert alert-warning" role="alert">
                                <p><strong>Caso marcado essa opção irá alterar</strong></p>
                                <ul>
                                    <li>
                                        Informações desta pessoa ficaram visiveis na pagina inicial
                                    </li>
                                </ul>
                            </div>
                    </div>
                    <div class="modal-footer">
                        <asp:Button ID="btnSim" runat="server" CssClass="btn btn-primary btn-cadastro text-white" Text="Sim" onClick="btnSim_Click" />
                    </div>
                </div>
            </div>
        </div>

</asp:Content>


