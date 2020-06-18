<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPages/Menu.master" AutoEventWireup="true" CodeFile="EditarPerfil.aspx.cs" Inherits="Pages_EditarPerfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container bootstrap snippet">
        <div class="row mb-4">
            <div class="col-sm-12">
                <h1>
                    Nome do Usuário                  
                </h1>
            </div>
        </div>
        <div class="row">
            <!--left col-->
            <div class="col-sm-3">


                <div class="text-center">
                    <img src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png" class="avatar img-circle rounded" style="height: 200px;" alt="avatar">
                    <h6>Envie uma foto</h6>
                    <div class="input-group">
                        <div class="custom-file">
                            <input type="file" class="custom-file-input file-upload" id="inputGroupFile02">
                            <label class="custom-file-label text-left" for="inputGroupFile02" aria-describedby="inputGroupFileAddon02">Escolha um arquivo</label>
                        </div>
                    </div>
                </div>
                <br>


                <div class="panel panel-default">
                    <!-- DA PRA POR ALGO AQUI -->
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
                    <li class="nav-item">
                        <a class="nav-link" id="password-tab" data-toggle="tab" href="#senha" role="tab" aria-controls="password" aria-selected="false">Alterar senha</a>
                    </li>                
                </ul>

                <div class="tab-content">

                    <div class="tab-pane active" id="dados_pessoais">
                        <div class="col-12 p-4">
                            <div class="row">
                                <div class="col-12">
                                    <div class="form-group">
                                        <h6>Nome</h6>
                                        <input type="text" class="form-control form-control-lg" placeholder="Seu nome">
                                        <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="form-group">
                                        <h6>CPF</h6>
                                        <input type="text" class="form-control form-control-lg" placeholder="Seu CPF">
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="form-group">
                                        <h6>RG</h6>
                                        <input type="text" class="form-control form-control-lg" placeholder="Seu RG">
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="form-group">
                                        <h6>Sexo</h6>
                                        <select class="form-control form-control-lg" id="exampleFormControlSelect2">
                                            <option>Masculino</option>
                                            <option>Feminino</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="form-group">
                                        <h6>Data de nascimento</h6>
                                        <input type="date" class="form-control form-control-lg">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <button type="submit" class="btn btn-success btn-lg mb-2">Alterar dados</button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="tab-pane" id="contatos">
                        <div class="col-12 p-4">
                            <div class="form-group">
                                <h6>Celular</h6>
                                <input type="text" class="form-control form-control-lg" placeholder="Seu número de celular">
                            </div>
                            <div class="form-group">
                                <h6>Telefone</h6>
                                <input type="text" class="form-control form-control-lg" placeholder="Seu número de telefone">
                            </div>
                            <button type="submit" class="btn btn-success btn-lg mb-2">Alterar contatos</button>
                        </div>
                    </div>

                    <div class="tab-pane" id="senha">
                        <div class="col-12 p-4">
                            <div class="form-group">
                                <h6>Senha antiga</h6>
                                <input type="password" class="form-control form-control-lg" placeholder="Senha antiga ">
                            </div>
                            <div class="form-group">
                                <h6>Nova senha</h6>
                                <input type="password" class="form-control form-control-lg" placeholder="Nova senha ">
                            </div>
                            <button type="submit" class="btn btn-success btn-lg mb-2">Alterar senha</button>
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

