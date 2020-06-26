<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPages/LoginCadastro.master" AutoEventWireup="true" CodeFile="MaisInfosDesaparecido.aspx.cs" Inherits="Pages_MaisInfosDesaparecido" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">




    <div class="row justify-content-center">
        <div class="col-12 text-center">
            <img src="../Images/Logo_3.0.png" class="img-fluid " style="width: 17%;" />
        </div>
        <div class="col-12 text-center ">
            <h1 class="titulo">Adicione Informações sobre o desaparecido</h1>
            <p class="subtitulo">Quanto mais Informações mais fácil a identificação da pessoa!</p>
        </div>

        <div class="col-8">
            <div class="row justify-content-center">
                <div class="col-12">
                    <div class="form-group">
                        <h5 class="subtitulo2">Tem algum Tipo de Deficiencia Mental ? Caso sim descreva:</h5>
                        <div class="row">
                            <div class="col-5">
                                <div class="btn-group" data-toggle="buttons">
                                    <label class="btn btn-default">
                                        <asp:RadioButton runat="server" id="DeficienciaMentalSim" GroupName="DeficienciaMental" AutoPostBack="True" />
                                        Sim
                                    </label>
                                    <label class="btn btn-default">
                                        <asp:RadioButton runat="server" id="DeficienciaMentalNao" GroupName="DeficienciaMental" AutoPostBack="True" />
                                        Não
                                    </label>
                                </div>
                            </div>
                            <div class="col-7">
                                <asp:TextBox ID="txtDeficienciaMental" runat="server" CssClass="form-control form-control-lg" placeholder="Descreva aqui" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12">
                    <div class="form-group ">
                        <h5 class="subtitulo2">Tem algum Tipo de Deficiencia Física ? Caso sim descreva:</h5>
                        <div class="row">
                            <div class="col-5">
                                <div class="btn-group" data-toggle="buttons">
                                    <label class="btn btn-default">
                                        <asp:RadioButton runat="server" id="DeficienciaFisicaSim" GroupName="DeficienciaFisica" AutoPostBack="True" />
                                        Sim
                                    </label>
                                    <label class="btn btn-default">
                                        <asp:RadioButton runat="server" id="DeficienciaFisicaNao" GroupName="DeficienciaFisica" AutoPostBack="True" />
                                        Não
                                    </label>
                                </div>
                            </div>
                            <div class="col-7">
                                <asp:TextBox ID="txtDeficienciaFisica" runat="server" CssClass="form-control form-control-lg" placeholder="Descreva aqui" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12">
                    <div class="form-group ">
                        <h5 class="subtitulo2">Tem algum Tipo de Retrição Alimentar ? Caso sim descreva:</h5>
                        <div class="row">
                            <div class="col-5">
                                <div class="btn-group" data-toggle="buttons">
                                    <label class="btn btn-default">
                                        <asp:RadioButton runat="server" id="RetricaoAlimentoSim" GroupName="RetricaoAlimento" AutoPostBack="True" />
                                        Sim
                                    </label>
                                    <label class="btn btn-default">
                                        <asp:RadioButton runat="server" id="RetricaoAlimentoNao" GroupName="RetricaoAlimento" AutoPostBack="True" />
                                        Não
                                    </label>
                                </div>
                            </div>
                            <div class="col-7">
                                <asp:TextBox ID="txtRestricaoAlimentar" runat="server" CssClass="form-control form-control-lg" placeholder="Descreva aqui" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12">
                    <div class="form-group ">
                        <h5 class="subtitulo2">Tem algum Tipo de Retrição para medicamentos ? Caso sim descreva:</h5>
                        <div class="row">
                            <div class="col-5">
                                <div class="btn-group" data-toggle="buttons">
                                    <label class="btn btn-default">
                                        <asp:RadioButton runat="server" id="RetricaoMedicamentoSim" GroupName="RetricaoMedicamento" AutoPostBack="True" />
                                        Sim
                                    </label>
                                    <label class="btn btn-default">
                                        <asp:RadioButton runat="server" id="RetricaoMedicamentoNao" GroupName="RetricaoMedicamento" AutoPostBack="True" />
                                        Não
                                    </label>
                                </div>
                            </div>
                            <div class="col-7">
                                <asp:TextBox ID="txtRestricaoMedicamento" runat="server" CssClass="form-control form-control-lg" placeholder="Descreva aqui" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12">
                    <div class="form-group">
                        <h5 class="subtitulo2">Tem algum Tipo de Doença que não se encaixe nos itens acima ? Caso sim descreva:</h5>
                        <div class="row">
                            <div class="col-5">
                                <div class="btn-group" data-toggle="buttons">
                                    <label class="btn btn-default">
                                        <asp:RadioButton runat="server" id="DoencaSim" GroupName="Doenca" AutoPostBack="True" />
                                        Sim
                                    </label>
                                    <label class="btn btn-default">
                                        <asp:RadioButton runat="server" id="DoencaNao" GroupName="Doenca" AutoPostBack="True" />
                                        Não
                                    </label>
                                </div>
                            </div>
                            <div class="col-7">
                                <asp:TextBox ID="txtDoenca" runat="server" CssClass="form-control form-control-lg" placeholder="Descreva aqui" />
                            </div>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="">
                        <asp:Button ID="btnContinuaCadastroDesaparecido2" runat="server" CssClass="btn btn-primary btn-cadastro text-white" Text="Realizar Cadastro" OnClick="btnContinuaCadastroDesaparecido2_Click" />
                    </div>
                </div>
            </div>


        </div>

    </div>



</asp:Content>

