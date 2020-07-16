using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Pages_EditarInfosVulneravel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int vulId = Convert.ToInt32(Request.QueryString["id"]);
            DataSet ds = VulneravelBD.SelectDadosVulneravel(vulId);


            if (ds.Tables[0].Rows.Count >= 1)
            {
                ltlNome.Text = ds.Tables[0].Rows[0]["pes_nome"].ToString();

                txtNome.Text = ds.Tables[0].Rows[0]["pes_nome"].ToString();
                txtCorDosOlhos.Text = ds.Tables[0].Rows[0]["min_cor_olhos"].ToString();
                txtCorDoCabelo.Text = ds.Tables[0].Rows[0]["min_cor_cabelo"].ToString();
                txtAltura.Text = ds.Tables[0].Rows[0]["min_altura"].ToString();
                txtPeso.Text = ds.Tables[0].Rows[0]["min_peso"].ToString();
                txtDescricao.Text = ds.Tables[0].Rows[0]["min_descricao"].ToString();

                txtData.Text = ds.Tables[0].Rows[0]["pes_dataNascimento"].ToString().Substring(0, 10);

                ddlSexo.SelectedValue = ds.Tables[0].Rows[0]["pes_sexo"].ToString() == "M" ? "1" : "2";

                string cutis = ds.Tables[0].Rows[0]["pes_cutis"].ToString();
                switch (cutis)
                {
                    case "Amarela":
                        ddlCutis.SelectedValue = "1";
                        break;

                    case "Branca":
                        ddlCutis.SelectedValue = "2";
                        break;

                    case "Indígena":
                        ddlCutis.SelectedValue = "3";
                        break;

                    case "Negra":
                        ddlCutis.SelectedValue = "4";
                        break;

                    case "Parda":
                        ddlCutis.SelectedValue = "5";
                        break;

                    default:
                        ddlCutis.SelectedValue = "-1";
                        break;

                }

                string sangue = ds.Tables[0].Rows[0]["min_tipo_sanguineo"].ToString();
                switch (sangue)
                {
                    case "A+":
                        ddlSangue.SelectedValue = "1";
                        break;

                    case "A-":
                        ddlSangue.SelectedValue = "2";
                        break;

                    case "B+":
                        ddlSangue.SelectedValue = "3";
                        break;

                    case "B-":
                        ddlSangue.SelectedValue = "4";
                        break;

                    case "O+":
                        ddlSangue.SelectedValue = "5";
                        break;

                    case "O-":
                        ddlSangue.SelectedValue = "6";
                        break;

                    case "AB+":
                        ddlSangue.SelectedValue = "7";
                        break;

                    case "AB-":
                        ddlSangue.SelectedValue = "8";
                        break;

                    default:
                        ddlSangue.SelectedValue = "-1";
                        break;

                }
            }
            else
            {
                // ERRO
            }
        }
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        int vulId = Convert.ToInt32(Request.QueryString["id"]);
        DataSet ds = VulneravelBD.SelectDadosVulneravel(vulId);
        int pesId = Convert.ToInt32(ds.Tables[0].Rows[0]["pes_id"]);

        Mais_Informacoes minfo = new Mais_Informacoes();
        Pessoas p = new Pessoas();

        minfo.Vul_id = vulId;
        minfo.Min_cor_olhos = txtCorDosOlhos.Text;
        minfo.Min_cor_cabelo = txtCorDoCabelo.Text;
        minfo.Min_altura = txtAltura.Text;
        minfo.Min_peso = txtPeso.Text;
        minfo.Min_descricao = txtDescricao.Text;

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

        p.Pes_id = pesId;
        p.Pes_nome = txtNome.Text;
        p.Pes_dataNascimento = Convert.ToDateTime(txtData.Text);

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

        switch (VulneravelBD.UpdateDados(minfo, p))
        {
            case 0:
                Response.Redirect("Vulneravel.aspx?id=" + vulId);
                break;
            case -2:
                Response.Redirect("Index.aspx");
                break;
        }
    }
}