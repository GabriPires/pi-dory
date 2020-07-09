<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPages/Menu.master" AutoEventWireup="true" CodeFile="EditarPerfil.aspx.cs" Inherits="Pages_EditarPerfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container bootstrap snippet">
        <div class="row mb-4">
            <div class="col-sm-12">
                <asp:Literal ID="ltlTitulo" runat="server"></asp:Literal>
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
                        <a class="nav-link" id="email-tab" data-toggle="tab" href="#email" role="tab" aria-controls="email" aria-selected="false">Alterar email</a>
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
                                        <asp:TextBox ID="txtNome" runat="server" CssClass="form-control form-control-lg" placeholder="Seu nome"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="form-group">
                                        <h6>CPF</h6>
                                        <asp:TextBox ID="txtCPF" runat="server" CssClass="form-control form-control-lg" placeholder="Seu CPF"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="form-group">
                                        <h6>RG</h6>
                                        <asp:TextBox ID="txtRG" runat="server" CssClass="form-control form-control-lg" placeholder="Seu RG"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="form-group">
                                        <h6>Sexo</h6>
                                        <asp:DropDownList ID="ddlSexo" runat="server" CssClass="form-control form-control-lg">
                                            <asp:ListItem Value="1">Masculino</asp:ListItem>
                                            <asp:ListItem Value="2">Feminino</asp:ListItem>
                                            <asp:ListItem Value="3">Outro</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="form-group">
                                        <h6>Data de nascimento</h6>
                                        <asp:TextBox ID="txtDataNascimento" runat="server" CssClass="form-control form-control-lg" type="date"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <asp:Button ID="btnSalvarDados" runat="server" CssClass="btn btn-success btn-lg mb-2" Text="Alterar dados" OnClick="btnSalvarDados_Click"/>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="tab-pane" id="contatos">
                        <div class="col-12 p-4">
                            <div class="form-group">
                                <h6>Celular</h6>
                                <asp:TextBox ID="txtCelular" runat="server" CssClass="form-control form-control-lg" placeholder="Seu número de celular"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <h6>Telefone</h6>
                                <asp:TextBox ID="txtTelefone" runat="server" CssClass="form-control form-control-lg" placeholder="Seu número de telefone"></asp:TextBox>
                            </div>
                            <asp:Button ID="btnSalvarContatos" runat="server" CssClass="btn btn-success btn-lg mb-2" Text="Alterar contatos" />
                        </div>
                    </div>

                    <div class="tab-pane" id="email">
                        <div class="col-12 p-4">
                            <div class="alert alert-warning" role="alert">
                                <p><strong>Esse email é utilizado para realizar o login!</strong></p>
                                Caso alterado não será possível realizar login com o email antigo.
                            </div>
                            <div class="form-group">
                                <h6>Email antigo</h6>
                                <asp:TextBox ID="txtEmailAntigo" runat="server" CssClass="form-control form-control-lg" placeholder="Email antigo"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <h6>Novo email</h6>
                                <asp:TextBox ID="txtEmailNovo" runat="server" CssClass="form-control form-control-lg" placeholder="Novo email"></asp:TextBox>
                            </div>
                            <asp:Button ID="btnAlterarEmail" runat="server" CssClass="btn btn-success btn-lg mb-2" Text="Alterar email"/>
                        </div>
                    </div>

                    <div class="tab-pane" id="senha">
                        <div class="col-12 p-4">
                            <div class="form-group">
                                <h6>Senha antiga</h6>
                                <asp:TextBox ID="txtSenhaAntiga" runat="server" CssClass="form-control form-control-lg" placeholder="Senha antiga"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <h6>Nova senha</h6>
                                <asp:TextBox ID="txtNovaSenha" runat="server" CssClass="form-control form-control-lg" placeholder="Nova senha"></asp:TextBox>
                            </div>
                            <asp:Button ID="btnSalvarSenha" runat="server" CssClass="btn btn-success btn-lg mb-2" Text="Alterar senha" />
                        </div>
                    </div>

                </div>

            </div>
            <!--/col-9-->
        </div>
    </div>

    <!-- Modal Erro-->
    <div class="modal fade" id="modalErroInformações" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ops!</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <h4>Oops!</h4>
                    <p>Algo deu errado, favor verifique as informações e tente novamente.</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                </div>
            </div>
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

