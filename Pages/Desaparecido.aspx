<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPages/Menu.master" AutoEventWireup="true" CodeFile="Desaparecido.aspx.cs" Inherits="Pages_Desaparecido" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="Css/Desaparecido.css" rel="stylesheet" type="text/css" />
    <link href="Css/Index.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="container-fluid">
        <div class="row justify-content-center mb-5 mt-5">
            <div class="col-6 ">
                <div class="row justify-content-center mx-auto">
                    <div class="col-1 " >
                        <asp:LinkButton ID="Dicas" runat="server"  CssClass="buttonMenu " OnClick="Dicas_Click">
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
            <div class="col-6 mx-5 my-5 container-left" style="max-width: 37%">
                <div class="row justify-content-center">
                    <div class="col-6 ">
                        <h2 class="PessoasDesaparecidas mt-3">Desaparecido</h2>
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
                        <p><strong>Nome: </strong><asp:Literal ID="ltlNomeDesaparecido" runat="server"></asp:Literal></p>
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
                        <p><strong>Descrição: </strong><asp:Literal ID="ltlDescricao" runat="server"></asp:Literal></p>
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
                        <p><strong>Restrições alimentares: </strong><asp:Literal ID="ltlAlimentos" runat="server"></asp:Literal></p>
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
                        <p><strong>Doenças: </strong><asp:Literal ID="ltlDoencas" runat="server"></asp:Literal></p>
                    </div>

                </div>

                <div class="row justify-content-center container-left m-3 mb-4">
                    <div class="col-12">
                        <div class="flex-row cabecalhoEditar">
                            <h2 class="mt-2">Atividade recente do desaparecido</h2>
                        </div>
                    </div>
                    <asp:Repeater runat="server" ID="rptAtividade">
                        <ItemTemplate>
                                <div class="col-12 ">
                                    <hr />
                                    <p><strong>Onde foi visto: </strong><%#Eval("cde_ultimo_local_encontrado") %></p>
                                </div>
                                <div class="col-12 ">
                                    <p><strong>Cidade em que foi visto:</strong> <%#Eval("cde_ultima_localizacao") %></p>
                                </div>
                                <div class="col-12 ">
                                    <p><strong>Roupa que estava usando:</strong> <%#Eval("cde_ultima_roupa") %></p>
                                </div>
                                <div class="col-12">
                                    <p><strong>Data que foi visto:</strong> <%#Eval("cde_ultimo_horario_visto") %></p>
                                </div>
                          </ItemTemplate>
                    </asp:Repeater>
                    <asp:Literal runat="server" ID="ltlNaoTemAtividade"></asp:Literal>
                </div>

                <div class="row justify-content-center mb-3">

                    <div class="col-10 pr-1" align="center">
                        <% if (Session["isLoggedIn"].ToString() == "True")
                            { %>
                        <%
                            int idRes = Convert.ToInt32(Session["idResponsavel"]);
                            int resP = Convert.ToInt32(Session["ResposavelPor"]);
                            if (idRes == resP)
                            {
                        %>
                        <%--<div class="align-items-center interior">--%>
                        <% if (Convert.ToInt32(Session["vulIdDesaparecido"]) != 0)
                            { %>
                        <asp:Button ID="btnVulEncontrado" runat="server" CssClass="btn-encontrei p-0" Text="Este vulnerável foi encontrado" OnClick="btnVulEncontrado_Click"></asp:Button>
                        <% }
                        else
                        { %>
                        <asp:Button ID="btnDesEncontrado" runat="server" CssClass="btn-encontrei p-0" Text="Este desaparecido foi encontrado" OnClick="btnDesEncontrado_Click"></asp:Button>
                        <% } %>
                        <%--</div>--%>
                        <%  }

                        else
                        { %>
                        <asp:Button ID="btnEncontrei" runat="server" CssClass="btn-encontrei" Text="Vi esta pessoa" OnClick="btnEncontrei_Click" />
                        <% }
                        }
                        else
                        { %>
                        <asp:Button ID="btnEncontreiDeslogado" runat="server" CssClass="btn-encontrei" Text="Vi esta pessoa" OnClick="btnEncontreiDeslogado_Click" /> 
                        <% } %>
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
                                        ImageUrl="http://ssl.gstatic.com/accounts/ui/avatar_2x.png"
                                        >
                                    </asp:ImageButton >
                                </div>
                            </ItemTemplate>
                          </asp:Repeater>

                        <div class="plus2">
                            <asp:LinkButton ID="CadastrarDesaparecido" runat="server" CssClass="button" OnClick="CadastroDesaparecido_Click">
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

    <!-- Modal de vi a pessoa -->
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
                                <div class="" role="alert">
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
                                    <asp:TextBox ID="txtUltimaHora" runat="server" CssClass="form-control"></asp:TextBox>
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
                    <asp:Button ID="btnViEssaPessoa" runat="server" CssClass="btn btn-primary btn-cadastro text-white" Text="Enviar" OnClick="btnViEssaPessoa_Click"/>
                    <button type="button" class="btn btn-dark" data-dismiss="modal">Cancelar</button>
                </div>

            </div>
        </div>
    </div>

    <!-- Modal de vi a pessoa deslogado -->
    <div class="modal fade" id="encontreiDeslogado" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                        <p class="font-weight-bold">Sua ajuda é muito importante!</p>
                        Você será levado para nosso formulário de cadastro, para que possa ajudar na busca dessa pessoa!
                    </div>
                </div>
                <div class="modal-footer">
                    <asp:Button ID="btnEncontreiCadastro" runat="server" CssClass="btn btn-primary btn-cadastro text-white" Text="Efetuar meu cadastro" OnClick="btnEncontreiCadastro_Click"/>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal de encontrei vulneravel -->
    <div class="modal fade" id="encontreiVulneravel" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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

    <!-- Modal de encontrei desaparecido -->
    <div class="modal fade" id="encontreiDesaparecido" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                        Após confirmar, as informações de seu desparecido sairão das páginas de desaparecidos e dos resultados de buscas.
                            <div class="form-group">
                                <p class="font-weight-bold mt-3 mb-0">Informe quando seu desaparecido foi encontrado</p>
                                <asp:TextBox ID="txtDataDes" runat="server" CssClass="form-control" type="date" />
                            </div>
                            <p class="font-weight-bold mt-3 mb-0">Você confirma que seu desaparecido foi encontrado?</p>
                    </div>
                </div>
                <div class="modal-footer">
                    <asp:Button ID="btnConfirmaEcontreiDesaparecido" runat="server" CssClass="btn btn-primary btn-cadastro text-white" Text="Sim" OnClick="btnConfirmaEcontreiDesaparecido_Click"/>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

