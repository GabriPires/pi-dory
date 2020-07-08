﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPages/Menu.master" AutoEventWireup="true" CodeFile="DesaparecidoComBanco.aspx.cs" Inherits="Pages_DesaparecidoComBanco" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Css/Desaparecido.css" rel="stylesheet" type="text/css" />
    <link href="Css/Index.css" rel="stylesheet" type="text/css" />
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
                        <asp:LinkButton ID="PessoasEncontradas" runat="server" CssClass="buttonMenu" OnClick="PessoasEncontradas_Click">
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
                        <p><strong>Nome:</strong><asp:Literal ID="ltlNomeDesaparecido" runat="server"></asp:Literal></p>
                    </div>
                    <div class="col-6 ">
                        <p><strong>Idade:</strong> <asp:Literal ID="ltlIdadeDesaparecido" runat="server"></asp:Literal></p>
                    </div>
                    <div class="col-6 ">
                        <p><strong>Tipo sanguíneo:</strong> <asp:Literal ID="ltlTipoSanguineo" runat="server"></asp:Literal></p>
                    </div>
                    <div class="col-6 ">
                        <p><strong>Sexo:</strong> <asp:Literal ID="ltlSexo" runat="server"></asp:Literal></p>
                    </div>
                    <div class="col-6 ">
                        <p><strong>Etnia:</strong> <asp:Literal ID="ltlEtnia" runat="server"></asp:Literal></p>
                    </div>
                    <div class="col-6 ">
                        <p><strong>Cor do cabelo:</strong> <asp:Literal ID="ltlCabelo" runat="server"></asp:Literal></p>
                    </div>
                    <div class="col-6 ">
                        <p><strong>Cor dos olhos:</strong> <asp:Literal ID="ltlOlhos" runat="server"></asp:Literal></p>
                    </div>
                    <div class="col-6 ">
                        <p><strong>Altura:</strong> <asp:Literal ID="ltlAltura" runat="server"></asp:Literal></p>
                    </div>
                    <div class="col-6 ">
                        <p><strong>Peso:</strong> <asp:Literal ID="ltlPeso" runat="server"></asp:Literal></p>
                    </div>
                    <div class="col-12 ">
                        <p><strong>Descrição:</strong><asp:Literal ID="ltlDescricao" runat="server"></asp:Literal></p>
                    </div>
                </div>
                <div class="row justify-content-center container-left m-3 mb-4">
                    <div class="col-12 ">
                        <h2 class="mt-2">Informações sobre a saúde da pessoa</h2>
                        <hr />
                    </div>
                    <div class="col-12 ">
                        <p><strong>Restrições alimentares:</strong><asp:Literal ID="ltlAlimentos" runat="server"></asp:Literal></p>
                    </div>
                    <div class="col-12 ">
                        <p><strong>Restrições a medicamentos:</strong> <asp:Literal ID="ltlMedicamentos" runat="server"></asp:Literal></p>
                    </div>
                    <div class="col-12 ">
                        <p><strong>Deficiência mental:</strong> <asp:Literal ID="ltlDeficienciaMental" runat="server"></asp:Literal></p>
                    </div>
                    <div class="col-12">
                        <p><strong>Deficiência física:</strong> <asp:Literal ID="ltlDeficienciaFisica" runat="server"></asp:Literal></p>
                    </div>
                    <div class="col-12">
                        <p><strong>Doenças:</strong><asp:Literal ID="ltlDoencas" runat="server"></asp:Literal></p>
                    </div>

                </div>
                <div class="row justify-content-center mb-3">

                    <div class="col-10 pr-1" align="center">
                        <div>
                            <asp:Button ID="btnEncontrei" runat="server" CssClass="btn-encontrei" Text="Vi esta pessoa" OnClick="btnEncontrei_Click"/>
                        </div>
                    </div>

                    <div class="col-1 pr-1">
                        <asp:LinkButton ID="btnReport" runat="server" Text="" OnClick="btnReport_Click">
                        <div class="aviso">
                            <i class="fa fa-exclamation-triangle fa-fw "></i>
                        </div>
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
                            <asp:LinkButton ID="CadastrarDesaparecido" runat="server" CssClass="button" OnClick="CadastroDesaparecido_Click">
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

    <!-- Modal de report -->
    <div class="modal" id="report">
        <div class="modal-dialog">
            <div class="modal-content">

                <div class="modal-header">
                    <h4 class="modal-title">Denunciar</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

                <div class="modal-body">
                    <div class="container">
                        <div class="row">
                            <div class="col-12">
                                <div class="form-group">
                                    <h6>Título da denúncia</h6>
                                    <asp:TextBox ID="txtTitulo" runat="server" CssClass="form-control" placeholder="Título"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <h6>Título da denúncia</h6>
                                    <asp:DropDownList ID="ddlMotivo" runat="server" CssClass="form-control" placeholder="Motivo da denúncia">
                                        <asp:ListItem Enabled="true" Text="Motivo" Value="-1"></asp:ListItem>
                                        <asp:ListItem Text="Pessoa já encontrada" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="Anúncio mentiroso" Value="2"></asp:ListItem>
                                        <asp:ListItem Text="Anúncio com conteúdo ofensivo" Value="3"></asp:ListItem>
                                        <asp:ListItem Text="Outro" Value="3"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="form-group">
                                    <h6>Descrição da denúncia</h6>
                                    <textarea id="txtDescricao" runat="server" class="form-control" placeholder="Breve descrição"></textarea>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Enviar</button>
                    <button type="button" class="btn btn-dark" data-dismiss="modal">Cancelar</button>
                </div>

            </div>
        </div>
    </div>

    <!-- Modal de encontrei a pessoa -->
    <div class="modal" id="encontrei">
        <div class="modal-dialog">
            <div class="modal-content">

                <div class="modal-header">
                    <h4 class="modal-title">Você viu esta pessoa?</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

                <div class="modal-body">
                    <div class="container">
                        <div class="row">
                            <div class="col-12">
                                <div class="alert alert-warning" role="alert">
                                    <p><strong>Caso você esteja com o desaparecido por perto</strong></p>
                                    Entre em contato imediatamente com o responsável por ele.
                                </div>
                                <div class="form-group">
                                    <h6>Onde você o viu pela última vez?</h6>
                                    <asp:TextBox ID="txtUltimoLocal" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <h6>Em qual cidade o viu?</h6>
                                    <asp:TextBox ID="txtUltimaLocalizacao" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <h6>Qual roupa ele estava usando quando o viu?</h6>
                                    <asp:TextBox ID="txtUltimaRoupa" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <h6>Que horas você o viu?</h6>
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <h6>Informações adicionais</h6>
                                    <textarea id="Textarea1" runat="server" class="form-control" placeholder="Utilize este campo para descrever melhor a situação e dar informações adicionais para o responsável."></textarea>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Enviar</button>
                    <button type="button" class="btn btn-dark" data-dismiss="modal">Cancelar</button>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
