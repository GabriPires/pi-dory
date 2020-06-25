<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPages/Menu.master" AutoEventWireup="true" CodeFile="IndexNovo.aspx.cs" Inherits="Pages_IndexNovo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="Css/Index.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="container-fluid">
        <div class="row justify-content-center mb-5 mt-5">
            <div class="col-6">
                <div class="row">
                    <div class="col-4 pr-1" align="center">
                        <button class="buttonMenu">
                            <i class="fa fa-info fa-fw "></i>
                        </button>
                    </div>
                    <div class="col-4 pr-1" align="center">
                        <button class="buttonMenu">
                            <i class="fa fa-newspaper-o fa-fw "></i>
                        </button>
                    </div>
                    <div class="col-4 pr-1" align="center">
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
            
            <div class="col-6 mx-5">
                
                <div class="row container-left">
                    
                    <div class="col-12">
                        <h2 class="PessoasDesaparecidas mb-4">Pessoas Desaparecidas</h2>
                    </div>
                    <div class="col-12">
                        <div class="search">
                            <input type="text" class="searchTerm" placeholder="Pesquisar">
                        </div>
                    </div>
                    <div class="col-12 mt-5">
                        <div class="container">
                            <div class="row mt-3">
                                <div class="cardPessoa mb-2">
                                    <div class="imagem">
                                        <img src="../Images/malucorandom.jpg" class="imagem" />
                                    </div>
                                    <div class="infos">
                                        <p class="nome">Nome: José Eduardo</p>
                                        <p class="idade">Idade: 39 Anos</p>

                                        <button class="buttonVerMais ">
                                            <a href="#" class="buttonMenuTexto">ver +</a>
                                        </button>

                                    </div>
                                </div>
                            </div>
                            <div class="row mt-3">
                                <div class="cardPessoa mb-2">
                                    <div class="imagem">
                                        <img src="../Images/minarandom.jpg" class="imagem" />
                                    </div>
                                    <div class="infos">
                                        <p class="nome">Nome: Ana Clara</p>
                                        <p class="idade">Idade: 25 Anos</p>

                                        <button class="buttonVerMais ">
                                            <a href="#" class="buttonMenuTexto">ver +</a>
                                        </button>

                                    </div>
                                </div>
                            </div>
                            <div class="row mt-3">
                                <div class="cardPessoa mb-2">
                                    <div class="imagem">
                                        <img src="../Images/malucorandom2.jpg" class="imagem" />
                                    </div>
                                    <div class="infos">
                                        <p class="nome">Nome: Roberto Amaral</p>
                                        <p class="idade">Idade: 27 Anos</p>

                                        <button class="buttonVerMais ">
                                            <a href="#" class="buttonMenuTexto">ver +</a>
                                        </button>

                                    </div>
                                </div>
                            </div>
                            <div class="row mt-3">
                                <div class="cardPessoa mb-2">
                                    <div class="imagem">
                                        <img src="../Images/minarandom2.jpg" class="imagem" />
                                    </div>
                                    <div class="infos">
                                        <p class="nome">Nome: Roberta Silva</p>
                                        <p class="idade">Idade: 35 Anos</p>

                                        <button class="buttonVerMais ">
                                            <a href="#" class="buttonMenuTexto">ver +</a>
                                        </button>

                                    </div>
                                </div>
                            </div>
                            <div class="row mt-3">
                                <div class="cardPessoa mb-2">
                                    <div class="imagem">
                                        <img src="../Images/malucorandom3.jpg" class="imagem" />
                                    </div>
                                    <div class="infos">
                                        <p class="nome">Nome: Enzo</p>
                                        <p class="idade">Idade: 21 Anos</p>

                                        <button class="buttonVerMais ">
                                            <a href="#" class="buttonMenuTexto">ver +</a>
                                        </button>

                                    </div>
                                </div>
                            </div>
                            <div class="row mt-3">
                                <div class="cardPessoa mb-2">
                                    <div class="imagem">
                                        <img src="../Images/minarandom3.jpg" class="imagem" />
                                    </div>
                                    <div class="infos">
                                        <p class="nome">Nome: Perola Ribeiro</p>
                                        <p class="idade">Idade: 39 Anos</p>

                                        <button class="buttonVerMais ">
                                            <a href="#" class="buttonMenuTexto">ver +</a>
                                        </button>

                                    </div>
                                </div>
                            </div>
                            <div class="row mt-3">
                                <div class="cardPessoa mb-2">
                                    <div class="imagem">
                                        <img src="../Images/malucorandom4.jpg" class="imagem" />
                                    </div>
                                    <div class="infos">
                                        <p class="nome">Nome: Francisco Oliveira</p>
                                        <p class="idade">Idade: 53 Anos</p>

                                        <button class="buttonVerMais ">
                                            <a href="#" class="buttonMenuTexto">ver +</a>
                                        </button>

                                    </div>
                                </div>
                            </div>
                            <div class="row mt-3">
                                <div class="cardPessoa mb-2">
                                    <div class="imagem">
                                        <img src="../Images/minarandom4.jpg" class="imagem" />
                                    </div>
                                    <div class="infos">
                                        <p class="nome">Nome: Valentina</p>
                                        <p class="idade">Idade: 7 Anos</p>

                                        <button class="buttonVerMais ">
                                            <a href="#" class="buttonMenuTexto">ver +</a>
                                        </button>

                                    </div>
                                </div>
                            </div>

                        </div>
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

