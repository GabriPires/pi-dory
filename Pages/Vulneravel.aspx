<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPages/Menu.master" AutoEventWireup="true" CodeFile="Vulneravel.aspx.cs" Inherits="Pages_Vulneravel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="Css/Vulneravel.css" rel="stylesheet" />
    <link href="Css/Index.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="container-fluid">
        <div class="row justify-content-center mb-5 mt-5">
            <div class="col-6 ">
                <div class="row justify-content-center mx-auto">
                    <div class="col-1 ">
                        <asp:LinkButton ID="Dicas" runat="server" CssClass="buttonMenu "  OnClick="Dicas_Click">
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
                                    <asp:LinkButton ID="facebook" runat="server" CssClass="button" OnClientClick="window.open('https://www.facebook.com/asp.net')">
                                        <i class="fa fa-facebook-f fa-fw"></i>
                                    </asp:LinkButton>
                                </div>
                            </div>
                            <div class="col-3 p-2 pl-3">
                                <div class="plus">
                                    <asp:LinkButton ID="youtube" runat="server" CssClass="button" OnClientClick="window.open('https://www.youtube.com/channel/UC-NZkLwbVeVi9BzAAaRdWSw')">
                                        <i class="fa fa-youtube-play fa-fw"></i>
                                    </asp:LinkButton>
                                </div>
                            </div>
                            <div class="col-3 p-2 pl-3">
                                <div class="plus">
                                    <asp:LinkButton ID="twitter" runat="server" CssClass="button" OnClientClick="window.open('https://twitter.com/aspnet')">
                                        <div class="social">
                                            <i class="fa fa-twitter fa-fw"></i>
                                        </div>
                                    </asp:LinkButton>
                                </div>
                            </div>
                            <div class="col-3 p-2 pl-3 pr-0">
                                <div class="plus">
                                    <asp:LinkButton ID="instagram" runat="server" CssClass="button" OnClientClick="window.open('https://www.instagram.com/asp.net_learning/')">
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
            <div class="col-6 mx-5 my-5 container-left" style="max-width: 37%">
                <div class="row justify-content-center">
                    <div class="col-6 ">

                        <h2 class="PessoasDesaparecidas mt-3">Vulnerável</h2>

                        <div class="imagem mx-auto my-5">
                            <img src="../Images/malucorandom.jpg" class="imagem" />
                        </div>
                    </div>
                </div>
                <div class="row justify-content-center container-left m-3">
                    <div class="col-12">
                        <div class="flex-row cabecalhoEditar">
                            <h2 class="mt-2">Informações básicas</h2>
                            <% if (Session["isLoggedIn"].ToString() == "True")
                                { %>
                            <%
                                int idRes = Convert.ToInt32(Session["idResponsavel"]);
                                int resP = Convert.ToInt32(Session["ResposavelPor"]);
                                if (idRes == resP)
                                {
                            %>
                            <div class="align-items-center interior">
                                <asp:LinkButton ID="btnEditarBasico" runat="server" CssClass="button btnEditarRemover"><i class="fa fa-edit fa-fw"></i></asp:LinkButton>
                                <asp:LinkButton ID="btnRemover" runat="server" CssClass="button btnEditarRemover"><i class="fa fa-trash-o fa-fw"></i></asp:LinkButton>
                            </div>
                            <%  }
                                } %>
                        </div>
                        <hr />
                    </div>
                    <div class="col-12 ">
                        <p><strong>Nome: </strong>
                            <asp:Literal ID="ltlNome" runat="server"></asp:Literal></p>
                    </div>
                    <div class="col-6 ">
                        <p><strong>Idade:</strong>
                            <asp:Literal ID="ltlIdade" runat="server"></asp:Literal></p>
                    </div>
                    <div class="col-6 ">
                        <p><strong>Tipo sanguíneo:</strong>
                            <asp:Literal ID="ltlTipoSanguineo" runat="server"></asp:Literal></p>
                    </div>
                    <div class="col-6 ">
                        <p><strong>Sexo:</strong>
                            <asp:Literal ID="ltlSexo" runat="server"></asp:Literal></p>
                    </div>
                    <div class="col-6 ">
                        <p><strong>Etnia:</strong>
                            <asp:Literal ID="ltlEtnia" runat="server"></asp:Literal></p>
                    </div>
                    <div class="col-6 ">
                        <p><strong>Cor do cabelo:</strong>
                            <asp:Literal ID="ltlCabelo" runat="server"></asp:Literal></p>
                    </div>
                    <div class="col-6 ">
                        <p><strong>Cor dos olhos:</strong>
                            <asp:Literal ID="ltlOlhos" runat="server"></asp:Literal></p>
                    </div>
                    <div class="col-6 ">
                        <p><strong>Altura:</strong>
                            <asp:Literal ID="ltlAltura" runat="server"></asp:Literal></p>
                    </div>
                    <div class="col-6 ">
                        <p><strong>Peso:</strong>
                            <asp:Literal ID="ltlPeso" runat="server"></asp:Literal></p>
                    </div>
                    <div class="col-12 ">
                        <p><strong>Descrição: </strong>
                            <asp:Literal ID="ltlDescricao" runat="server"></asp:Literal></p>
                    </div>
                </div>
                <div class="row justify-content-center container-left m-3 mb-4">
                    <div class="col-12">
                        <div class="flex-row cabecalhoEditar">
                            <h2 class="mt-2">Informações sobre a saúde da pessoa</h2>
                            <% if (Session["isLoggedIn"].ToString() == "True")
                                { %>
                            <%
                                int idRes = Convert.ToInt32(Session["idResponsavel"]);
                                int resP = Convert.ToInt32(Session["ResposavelPor"]);
                                if (idRes == resP)
                                {
                            %>
                            <div class="align-items-center interior">
                                <asp:LinkButton ID="btnEditarAdicional" runat="server" CssClass="button btnEditarRemover"><i class="fa fa-edit fa-fw"></i></asp:LinkButton>
                            </div>
                            <%  }
                                } %>
                        </div>
                        <hr />
                    </div>
                    <div class="col-12 ">
                        <p><strong>Restrições alimentares: </strong>
                            <asp:Literal ID="ltlAlimentos" runat="server"></asp:Literal></p>
                    </div>
                    <div class="col-12 ">
                        <p><strong>Restrições a medicamentos:</strong>
                            <asp:Literal ID="ltlMedicamentos" runat="server"></asp:Literal></p>
                    </div>
                    <div class="col-12 ">
                        <p><strong>Deficiência mental:</strong>
                            <asp:Literal ID="ltlDeficienciaMental" runat="server"></asp:Literal></p>
                    </div>
                    <div class="col-12">
                        <p><strong>Deficiência física:</strong>
                            <asp:Literal ID="ltlDeficienciaFisica" runat="server"></asp:Literal></p>
                    </div>
                    <div class="col-12">
                        <p><strong>Doenças: </strong>
                            <asp:Literal ID="ltlDoencas" runat="server"></asp:Literal></p>
                    </div>

                </div>
                <div class="row justify-content-center mb-3">
                    <% if (Session["isLoggedIn"].ToString() == "True")
                        { %>
                    <%
                        int idRes = Convert.ToInt32(Session["idResponsavel"]);
                        int resP = Convert.ToInt32(Session["ResposavelPor"]);
                        if (idRes == resP)
                        {
                    %>
                    <div class="align-items-center interior">
                        <% if (Convert.ToInt32(Session["StatusVulneravel"]) == 0)
                            { %>
                        <asp:Button ID="btnDesapareceu" runat="server" CssClass="btn-encontrei p-0" Text="Este vulnerável desapareceu" OnClick="btnDesapareceu_Click"></asp:Button>
                        <% }
                            else
                            { %>
                        <asp:Button ID="btnEncontrado" runat="server" CssClass="btn-encontrei p-0" Text="Este vulnerável foi encontrado" OnClick="btnEncontrado_Click"></asp:Button>
                        <% } %>
                    </div>
                    <%  }
                        } %>
                </div>



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
                    <div class="" role="alert">
                        <p><strong>Atenção</strong></p>
                        Após confirmar, você será levado para um formulário onde preencherá alguns dados para que possamos dar mais apoio as buscas,
                                as informações de seu vulnerável ficarão disponíveis no sistema para que outras pessoas possam visualizar e ajudarem no reconhecimento desta pessoa.
                            <p class="font-weight-bold mt-3 mb-0">Você confirma que seu vulverável desapareceu?</p>
                    </div>
                </div>
                <div class="modal-footer">
                    <asp:Button ID="btnConfirmaDesaparecimento" runat="server" CssClass="btn btn-primary btn-cadastro text-white" Text="Sim" OnClick="btnConfirmaDesaparecimento_Click" />
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal de Encontrei -->
    <div class="modal fade" id="modalEncontrei" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Aviso</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="" role="alert">
                        <p class="font-weight-bold">Ficamos felizes que pudemos reconectar mais vidas!</p>
                        Após confirmar, as informações de seu vulnerável sairão das páginas de desaparecidos e dos resultados de buscas, 
                            mas permanecerão no sistema para que você continue monitorando seu ente querido.
                            <div class="form-group">
                                <p class="font-weight-bold mt-3 mb-0">Informe quando seu vulverável foi encontrado</p>
                                <asp:TextBox ID="txtData" runat="server" CssClass="form-control" type="date" />
                            </div>
                            <p class="font-weight-bold mt-3 mb-0">Você confirma que seu vulverável foi encontrado?</p>
                    </div>
                </div>
                <div class="modal-footer">
                    <asp:Button ID="btnConfirmarEncontrei" runat="server" CssClass="btn btn-primary btn-cadastro text-white" Text="Sim" OnClick="btnConfirmarEncontrei_Click" />
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                </div>
            </div>
        </div>
    </div>

</asp:Content>


