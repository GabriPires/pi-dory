<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPages/Menu.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Pages_Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="Css/Index.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row justify-content-end">
        <div class="col-4 mb-3">
            <div class="search">
                <input type="text" class="searchTerm" placeholder="Pesquisar">
                <button type="submit" class="searchButton">
                    <i class="fa fa-search fa-fw"></i>
                </button>
            </div>
        </div>
    </div>
    <div class="row justify-content-center container-fluid pl-5">
        <!-- CONTAINER DA ESQUERDA -->
        <div class="col-3 container-fluid container-left">
        <div class="bagulhoamarelo"></div>

            <h2 class="pessoasencontradas text-center">Pessoas Encontradas</h2>
            <div class="content-container-left container-fluid">

                <h3 class="tempos">Esta Semana</h3>
                <div class="row mt-3">
                    <div class="col-2">
                        <div class="img rounded-circle " style="width: 40px; height: 40px;">
                        </div>
                    </div>
                    <div class="col-10 m-0">
                        <p class="nome">Cleiton Cleber Cleberson</p>
                        <p class="idade">49 Anos</p>
                    </div>
                </div>

                <div class="row mt-3">
                    <div class="col-2">
                        <div class="img rounded-circle " style="width: 40px; height: 40px;"></div>
                    </div>
                    <div class="col-10 m-0">
                        <p class="nome">Nome do FDP</p>
                        <p class="idade">Idade do FDP</p>
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-2">
                        <div class="img rounded-circle " style="width: 40px; height: 40px;"></div>
                    </div>
                    <div class="col-10 m-0">
                        <p class="nome">Nome do FDP</p>
                        <p class="idade">Idade do FDP</p>
                    </div>
                </div>
                <h3 class="tempos">Este Mês</h3>
                <div class="row mt-3">
                    <div class="col-2">
                        <div class="img rounded-circle " style="width: 40px; height: 40px;"></div>
                    </div>
                    <div class="col-10 m-0">
                        <p class="nome">Nome do FDP</p>
                        <p class="idade">Idade do FDP</p>
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-2">
                        <div class="img rounded-circle " style="width: 40px; height: 40px;"></div>
                    </div>
                    <div class="col-10 m-0">
                        <p class="nome">Nome do FDP</p>
                        <p class="idade">Idade do FDP</p>
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-2">
                        <div class="img rounded-circle " style="width: 40px; height: 40px;"></div>
                    </div>
                    <div class="col-10 m-0">
                        <p class="nome">Nome do FDP</p>
                        <p class="idade">Idade do FDP</p>
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-2">
                        <div class="img rounded-circle " style="width: 40px; height: 40px;"></div>
                    </div>
                    <div class="col-10 m-0">
                        <p class="nome">Nome do FDP</p>
                        <p class="idade">Idade do FDP</p>
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-2">
                        <div class="img rounded-circle " style="width: 40px; height: 40px;"></div>
                    </div>
                    <div class="col-10 m-0">
                        <p class="nome">Nome do FDP</p>
                        <p class="idade">Idade do FDP</p>
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-2">
                        <div class="img rounded-circle " style="width: 40px; height: 40px;"></div>
                    </div>
                    <div class="col-10 m-0">
                        <p class="nome">Nome do FDP</p>
                        <p class="idade">Idade do FDP</p>
                    </div>
                </div>


            </div>
        </div>
        <!-- CONTAINER DO CENTRO -->
        <div class="col-6 text-center">

            <div class="row justify-content-center mb-3">
                <div class="col-1"></div>
                <div class="col-10">
                <div class="card bg-primary text-white" style="width: 100%;">
                    <div class="card-body">
                    <h5 class="card-title">Card do fellipe aqui</h5>
                    <h6 class="card-subtitle mb-2 text-muted">Bota algo aqui</h6>
                    <p class="card-text">Não deixa seus filhos sumirem seus vacilões</p>
                    <a href="#" class="card-link text-white">Clica aqui</a>
                    <a href="#" class="card-link text-white">Não clica aqui</a>
                    </div>
                </div>
                </div>
                <div class="col-1"></div>
            </div>

            <div class="row justify-content-center mb-3">
                <div class="col-1"></div>
                <div class="col-10">
                <div class="card bg-dark text-white">
                  <img src="https://images.unsplash.com/photo-1591469545529-09fd39195182?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=640&q=60" class="card-img" alt="Imagem do card">
                  <div class="card-img-overlay">
                    <h5 class="card-title">Pessoa se perdendo</h5>
                    <p class="card-text">Se os responsáveis usassem Dory ela não sumiria</p>
                    <p class="card-text">Patético</p>
                  </div>
                </div>
                </div>
                <div class="col-1"></div>
            </div>

            <div class="row justify-content-center mb-3">
                <div class="col-1"></div>
                <div class="col-10">
                <div class="card bg-primary text-white" style="width: 100%;">
                    <div class="card-body">
                    <h5 class="card-title">Card do fellipe aqui</h5>
                    <h6 class="card-subtitle mb-2 text-muted">Bota algo aqui</h6>
                    <p class="card-text">Não deixa seus filhos sumirem seus vacilões</p>
                    <a href="#" class="card-link text-white">Clica aqui</a>
                    <a href="#" class="card-link text-white">Não clica aqui</a>
                    </div>
                </div>
                </div>
                <div class="col-1"></div>
            </div>

            
        </div>
        <!-- CONTAINER DA DIREITA -->
        <div class="col-3 container-fluid pr-4">

            <div class="row">
                <div class="col-12 ">
                    <p>Vulneraveis Ativos</p>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <p>Desaparecidos Ativos</p>
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


</asp:Content>
