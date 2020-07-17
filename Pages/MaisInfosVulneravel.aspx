<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPages/LoginCadastro.master" AutoEventWireup="true" CodeFile="MaisInfosVulneravel.aspx.cs" Inherits="Pages_MaisInfosVulneravel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="row justify-content-center">
        <div class="col-12 text-center">
            <img src="../Images/Logo_3.0.png" class="img-fluid " style="width: 17%;" />
        </div>
        <div class="col-12 text-center ">
            <h1 class="titulo">Adicione Informações sobre o Vulneravel</h1>
            <p class="subtitulo">Quanto mais Informações mais fácil a identificação da pessoa!</p>
        </div>

        <div class="col-8">
            <div class="row justify-content-center">
                <div class="col-12">
                    <div class="form-group">
                        <h5 class="subtitulo2">Tem algum tipo de deficiência mental? Caso sim, descreva</h5>
                        <div class="row">
                            <div class="col-5">
                                <div class="btn-group" >
                                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" AutoPostBack="true" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" >
                                        <asp:ListItem Value="1">Sim &nbsp;</asp:ListItem>
                                        <asp:ListItem Value="2" Selected="True">Não</asp:ListItem>
                                    </asp:RadioButtonList>
                                </div>
                            </div>
                            <div class="col-7">
                                <asp:TextBox ID="txtDeficienciaMental" runat="server" CssClass="form-control form-control-lg" placeholder="Descreva aqui"  required ReadOnly="true"/>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12">
                    <div class="form-group ">
                        <h5 class="subtitulo2">Tem algum tipo de deficiência física? Caso sim, descreva</h5>
                        <div class="row">
                            <div class="col-5">
                                <div class="btn-group" >
                                    <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal" AutoPostBack="true" OnSelectedIndexChanged="RadioButtonList2_SelectedIndexChanged" >
                                        <asp:ListItem Value="1">Sim &nbsp;</asp:ListItem>
                                        <asp:ListItem Value="2" Selected="True">Não</asp:ListItem>
                                    </asp:RadioButtonList>
                                </div>
                            </div>
                            <div class="col-7">
                                <asp:TextBox ID="txtDeficienciaFisica" runat="server" CssClass="form-control form-control-lg" placeholder="Descreva aqui"  required ReadOnly="true"/>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12">
                    <div class="form-group ">
                        <h5 class="subtitulo2">Tem algum tipo de restrição alimentar? Caso sim, descreva</h5>
                        <div class="row">
                            <div class="col-5">
                                <div class="btn-group" >
                                    <asp:RadioButtonList ID="RadioButtonList3" runat="server" RepeatDirection="Horizontal" AutoPostBack="true" OnSelectedIndexChanged="RadioButtonList3_SelectedIndexChanged" >
                                        <asp:ListItem Value="1">Sim &nbsp;</asp:ListItem>
                                        <asp:ListItem Value="2" Selected="True">Não</asp:ListItem>
                                    </asp:RadioButtonList>
                                </div>
                            </div>
                            <div class="col-7">
                                <asp:TextBox ID="txtRestricaoAlimentar" runat="server" CssClass="form-control form-control-lg" placeholder="Descreva aqui"  required ReadOnly="true"/>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12">
                    <div class="form-group ">
                        <h5 class="subtitulo2">Tem algum tipo de restrição a medicamentos? Caso sim, descreva</h5>
                        <div class="row">
                            <div class="col-5">
                                <div class="btn-group" >
                                    <asp:RadioButtonList ID="RadioButtonList4" runat="server" RepeatDirection="Horizontal" AutoPostBack="true" OnSelectedIndexChanged="RadioButtonList4_SelectedIndexChanged" >
                                        <asp:ListItem Value="1">Sim &nbsp;</asp:ListItem>
                                        <asp:ListItem Value="2" Selected="True">Não</asp:ListItem>
                                    </asp:RadioButtonList>
                                </div>
                            </div>
                            <div class="col-7">
                                <asp:TextBox ID="txtRestricaoMedicamento" runat="server" CssClass="form-control form-control-lg" placeholder="Descreva aqui" required ReadOnly="true"/>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12">
                    <div class="form-group">
                        <h5 class="subtitulo2">Tem algum tipo de doença que não se encaixe nos itens acima? Caso sim, descreva</h5>
                        <div class="row">
                            <div class="col-5">
                                <div class="btn-group" >
                                    <asp:RadioButtonList ID="RadioButtonList5" runat="server" RepeatDirection="Horizontal" AutoPostBack="true" OnSelectedIndexChanged="RadioButtonList5_SelectedIndexChanged" >
                                        <asp:ListItem Value="1">Sim &nbsp;</asp:ListItem>
                                        <asp:ListItem Value="2" Selected="True">Não</asp:ListItem>
                                    </asp:RadioButtonList>
                                </div>
                            </div>
                            <div class="col-7">
                                <asp:TextBox ID="txtDoenca" runat="server" CssClass="form-control form-control-lg" placeholder="Descreva aqui" required ReadOnly="true"/>
                            </div>
                        </div>
                    </div>
                </div>


                    <div class="form-group">
                        <div class="">
                            <asp:Button ID="btnTerminarCadastroVulneravel" runat="server" CssClass="btn btn-primary btn-cadastro text-white" Text="Realizar Cadastro" OnClick="btnTerminarCadastroVulneravel_Click" />
                        </div>
                    </div>

            </div>


        </div>


    </div>
</asp:Content>

