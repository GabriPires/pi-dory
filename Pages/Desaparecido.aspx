<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPages/Menu.master" AutoEventWireup="true" CodeFile="Desaparecido.aspx.cs" Inherits="Pages_Desaparecido" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Css/Desaparecido.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container-fluid">
        <div class="row justify-content-center mb-5 mt-5">
            <div class="col-6">
                <div class="row justify-content-center">
                    <div class="col-1 pr-1" align="center">
                        <button class="buttonMenu">
                            <i class="fa fa-info fa-fw "></i>
                        </button>
                    </div>
                    <div class="col-1 pr-1" align="center">
                        <button class="buttonMenu">
                            <i class="fa fa-newspaper-o fa-fw "></i>
                        </button>
                    </div>
                    <div class="col-1 pr-1" align="center">
                        <button class="buttonMenu">
                            <i class="fa fa-heart fa-fw"></i>
                        </button>
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
                                <div class="social">
                                    <i class="fa fa-facebook-f fa-fw"></i>
                                </div>
                            </div>
                            <div class="col-3 p-2 pl-3">
                                <div class="social">
                                    <i class="fa fa-youtube-play fa-fw"></i>
                                </div>
                            </div>
                            <div class="col-3 p-2 pl-3">
                                <div class="social">
                                    <i class="fa fa-twitter fa-fw"></i>
                                </div>
                            </div>
                            <div class="col-3 p-2 pl-3 pr-0">
                                <div class="social">
                                    <i class="fa fa-instagram fa-fw"></i>
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
                            <h2>Informações Basicas:</h2>
                        <hr/>
                      </div>
                      <div class="col-12 ">
                            <p><strong>Nome:</strong> José Eduardo</p>
                      </div>
                    <div class="col-6 ">
                            <p><strong>Idade:</strong> 39 Anos</p>
                      </div>
                    <div class="col-6 ">
                            <p><strong>Tipo Sanguineo:</strong> A+</p>
                      </div>
                    <div class="col-6 ">
                            <p><strong>Sexo:</strong> Masculino</p>
                      </div>
                    <div class="col-6 ">
                            <p><strong>Etnia:</strong> Branca</p>
                      </div>
                    <div class="col-6 ">
                            <p><strong>Cor do Cabelo:</strong> Preto</p>
                      </div>
                    <div class="col-6 ">
                            <p><strong>Cor dos Olhos:</strong> Castanho</p>
                      </div>
                    <div class="col-6 ">
                            <p><strong>Altura:</strong> 1,68</p>
                      </div>
                    <div class="col-6 ">
                            <p><strong>Peso:</strong>  80Kg</p>
                      </div>
                    <div class="col-12 ">
                            <p><strong>Descrição:</strong>  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sodales sollicitudin leo, at tincidunt est volutpat eu. Maecenas eu tellus elit. Aenean dignissim erat felis, et porttitor tortor eleifend id. Sed id nunc tempor justo posuere pretium. Donec sit amet metus sapien. Ut volutpat magna sed dapibus sagittis. Vestibulum sed purus felis.</p>
                      </div>
                </div>
               <div class="row justify-content-center container-left m-3 mb-4">
                    <div class="col-12 ">
                            <h2>Informações sobre a saúde da pessoa:</h2>
                        <hr/>
                      </div>
                      <div class="col-12 ">
                            <p><strong>Restrições Alimentares:</strong> Nenhuma ou não foi informado</p>
                      </div>
                    <div class="col-12 ">
                            <p><strong>Restrições a medicamentos:</strong> Dipirona</p>
                      </div>
                    <div class="col-12 ">
                            <p><strong>Deficiencia Mental:</strong> Autismo</p>
                      </div>
                    <div class="col-12">
                            <p><strong>Deficiencia Física:</strong> Nenhuma ou não foi informado</p>
                      </div>
                    <div class="col-12">
                            <p><strong>Doenças:</strong> Nenhuma ou não foi informado</p>
                      </div>
                    
                </div>
                <div class="row justify-content-center mb-3">

                    <div class="col-10 pr-1" align="center">
                        <div>
                            <asp:Button ID="btnCadastrar" runat="server" CssClass="btn-encontrei" Text="Encontrei esta pessoa"/>
                        </div>
                     </div>
                    
                    <div class="col-1 pr-1">
                        <button class="aviso">
                            <i class="fa fa-exclamation-triangle fa-fw "></i>
                        </button>
                    </div>
                   
                    
                </div>
                   


            </div>
            <div class="col-2">

                <div class="row mt-5">
                    <div class="col-12 container-left mb-3 pb-3">
                        <h3 class="tituloSocial mb-2">Vulneraveis Ativos</h3>
                        <div class="plus">
                            <i class="fa fa-plus fa-fw"></i>
                        </div>
                    </div>

                </div>
                <div class="row">
                    <div class="col-12 container-left mb-3 pb-3">
                        <h3 class="tituloSocial mb-2">Desaparecidos Ativos</h3>
                        <div class="plus">
                            <i class="fa fa-plus fa-fw"></i>
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
</asp:Content>

