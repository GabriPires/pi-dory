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
    <div class="row justify-content-center  container-fluid">

        <div class="col-3 container-fluid container-left">

            <div class="bagulhoamarelo"></div>

            <h2 class="pessoasencontradas">Pessoas Encontradas</h2>
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


        <div class="col-6 text-center">
            <p>Center</p>
        </div>

        <div class="col-3 ">

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
                    <h2 class="estatisticas mt-3">Estatisticas</h2>
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
