<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPages/Menu.master" AutoEventWireup="true" CodeFile="ExibirPerfil.aspx.cs" Inherits="Pages_ExibirPerfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container bootstrap snippet">
        <div class="row mb-4">
            <div class="col-12">
                <asp:Literal ID="ltlTitulo" runat="server"></asp:Literal>
            </div>
        </div>
        <div class="row">
            <!--left col-->
            <div class="col-sm-3">


                <div class="text-center">
                    <img src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png" class="avatar img-circle rounded" style="height: 200px;" alt="avatar">
                </div>

                <div class="panel panel-default text-center">
                    <a href="EditarPerfil.aspx">Editar perfil</a>
                </div>

                <div class="panel panel-default">
                    <!-- DA PRA POR ALGO AQUI -->
                </div>

            </div>

            <div class="col-sm-9">
                <ul class="nav nav-tabs mb-3" id="perfil_tab" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" id="pessoal-tab" data-toggle="tab" href="#dados_pessoais" role="tab" aria-controls="pessoal" aria-selected="true">Dados Pessoais</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contatos" role="tab" aria-controls="contact" aria-selected="false">Contatos</a>
                    </li>               
                </ul>

                <div class="tab-content">

                    <div class="tab-pane active" id="dados_pessoais">
                        <div class="col-12 p-4">
                            <div class="row">
                                <div class="col-12">
                                    <div class="form-group">
                                        <h5>Nome</h5>
                                        <asp:Literal ID="ltlNomeUsuario" runat="server"></asp:Literal>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="form-group">
                                        <h5>CPF</h5>
                                        <asp:Literal ID="ltlCPF" runat="server"></asp:Literal>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="form-group">
                                        <h5>RG</h5>
                                        <asp:Literal ID="ltlRG" runat="server"></asp:Literal>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="form-group">
                                        <h5>Sexo</h5>
                                        <asp:Literal ID="ltlSexo" runat="server"></asp:Literal>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="form-group">
                                        <h5>Data de nascimento</h5>
                                        <asp:Literal ID="ltlDataNascimento" runat="server"></asp:Literal>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="tab-pane" id="contatos">
                        <div class="col-12 p-4">
                            <div class="form-group">
                                <h5>Celular</h5>
                                <asp:Literal ID="ltlCelular" runat="server"></asp:Literal>
                            </div>
                            <div class="form-group">
                                <h5>Telefone</h5>
                                <asp:Literal ID="ltlTelefone" runat="server"></asp:Literal>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <!--/col-9-->
        </div>
    </div>

    <script>
        $(document).ready(function () {


            var readURL = function (input) {
                if (input.files && input.files[0]) {
                    var reader = new FileReader();

                    reader.onload = function (e) {
                        $('.avatar').attr('src', e.target.result);
                    }

                    reader.readAsDataURL(input.files[0]);
                }
            }


            $(".file-upload").on('change', function () {
                readURL(this);
            });
        });
    </script>
</asp:Content>

