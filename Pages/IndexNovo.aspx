<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPages/Menu.master" AutoEventWireup="true" CodeFile="IndexNovo.aspx.cs" Inherits="Pages_IndexNovo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Css/Index.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container">
        <div class="row">
            <div class="col-6">
                <!-- Botoes centro -->
            </div>
                                 
        </div>                            
        <div class="row">
            <div class="col-4">
                <!-- ACHO QUE NAO TEM ESSE -->
            </div>
            <div class="col-4">
                <!-- Pessoas Desaparecidas -->
            </div>
            <div class="col-4">
            <div class="row justify-content-end">
                    <div class="col-12 mb-3">
                        <div class="search">
                            <input type="text" class="searchTerm" placeholder="Pesquisar">
                            <button type="submit" class="searchButton">
                                <i class="fa fa-search fa-fw"></i>
                            </button>
                        </div>
                    </div>
                   
             </div>
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
    </div>

</asp:Content>

