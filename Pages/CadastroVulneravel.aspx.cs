using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_CadastroVulneravel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnContinuaCadastroVulneravel_Click(object sender, EventArgs e)
    {
        Pessoas p = new Pessoas();
        Vulneraveis v = new Vulneraveis();
        Mais_Informacoes minfo = new Mais_Informacoes();
        Tutorias tut = new Tutorias();

        p.Pes_nome = txtNome.Text + " " + txtSobrenome.Text;
        
        // Switch do sexo
        switch (ddlSexo.SelectedValue)
        {
            case "1":
                p.Pes_sexo = "Masculino";
                break;

            case "2":
                p.Pes_sexo = "Feminino";
                break;

            case "3":
                p.Pes_sexo = "Outro";
                break;

            default:
                p.Pes_sexo = "Outro";
                break;

        }

        // Switch da cutis
        switch (ddlCutis.SelectedValue)
        {
            case "1":
                p.Pes_cutis = "Amarela";
                break;

            case "2":
                p.Pes_cutis = "Branca";
                break;

            case "3":
                p.Pes_cutis = "Indígena";
                break;

            case "4":
                p.Pes_cutis = "Negra";
                break;

            case "5":
                p.Pes_cutis = "Parda";
                break;

            default:
                p.Pes_cutis = "";
                break;

        }

        minfo.Min_cor_olhos = txtCorDosOlhos.Text;
        minfo.Min_cor_cabelo = txtCorDoCabelo.Text;

        // Switch do sangue
        switch (ddlSangue.SelectedValue)
        {
            case "1":
                minfo.Min_tipo_sanguineo = "A+";
                break;

            case "2":
                minfo.Min_tipo_sanguineo = "A-";
                break;

            case "3":
                minfo.Min_tipo_sanguineo = "B+";
                break;

            case "4":
                minfo.Min_tipo_sanguineo = "B-";
                break;

            case "5":
                minfo.Min_tipo_sanguineo = "O+";
                break;

            case "6":
                minfo.Min_tipo_sanguineo = "0-";
                break;

            case "7":
                minfo.Min_tipo_sanguineo = "AB+";
                break;

            case "8":
                minfo.Min_tipo_sanguineo = "AB-";
                break;

            default:
                minfo.Min_tipo_sanguineo = "";
                break;

        }

        minfo.Min_altura = txtAltura.Text;
        minfo.Min_peso = txtPeso.Text;
        minfo.Min_descricao = txtDescricao.Text;

        v.Vul_status = false;
        v.Vul_observacoes = "";

        switch (VulneravelBD.InsertVulneravel(p, v, minfo))
        {
            case 0:
                tut.Pes_id = 1; /* Busca do ID do Vulneravel VulneravelBD.SelectPesIdVulneravel();*/
                tut.Res_id = Convert.ToInt32(Session["idResponsavel"]);
                tut.Tut_cadastro = DateTime.Today;
                tut.Tut_ativo = false;

                switch (VulneravelBD.insertTutorias(tut))
                {
                    case 0:
                        Response.Redirect("MaisInfosVulneravel.aspx");
                        break;
                    case -2:
                        Response.Redirect("Index.aspx");
                        break;
                }
                break;
            case -2:
                Response.Redirect("Index.aspx");
                break;
        }

        
    }
}