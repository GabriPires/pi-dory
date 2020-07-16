using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Pages_Vulneravel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {


            try
            {
                int id = Convert.ToInt32(Session["idResponsavel"]);

                DataSet ds2 = DesaparecidoBD.SelectDesaparecidoporPessoa(id);
                int qtd = ds2.Tables[0].Rows.Count;

                if (qtd > 0)
                {
                    rptDesaparecidos.DataSource = ds2;
                    rptDesaparecidos.DataBind();
                }
                else
                {
                    // Caso nao tenha nenhum desaparecido
                }


            }
            catch (Exception)
            {
                //erro

            }

            try
            {
                int id = Convert.ToInt32(Session["idResponsavel"]);

                DataSet ds2 = VulneravelBD.SelectVulneravelporPessoa(id);
                int qtd = ds2.Tables[0].Rows.Count;

                if (qtd > 0)
                {
                    rptVulneravel.DataSource = ds2;
                    rptVulneravel.DataBind();
                }
                else
                {
                    // Caso nao tenha nenhum desaparecido
                }


            }
            catch (Exception)
            {
                //erro

            }

            try
            {
                DataSet ds2 = DesaparecidoBD.SelectAtividadeRecente();
                int qtd = ds2.Tables[0].Rows.Count;

                if (qtd > 0)
                {
                    rptAtividadeRecente.DataSource = ds2;
                    rptAtividadeRecente.DataBind();
                }
                else
                {
                    // Caso nao tenha nenhum desaparecido
                }
            }
            catch (Exception)
            {
                //erro
            }
        }

        int idDesaparecido = Convert.ToInt32(Request.QueryString["id"]);
        Session["idVulneravel"] = idDesaparecido;
        DataSet ds = VulneravelBD.SelectDadosVulneravel(idDesaparecido);


        if (ds.Tables[0].Rows.Count >= 1)
        {
            Session["pesIdVulneravel"] = Convert.ToInt32(ds.Tables[0].Rows[0]["pes_id"]);
            Session["ResposavelPor"] = Convert.ToInt32(ds.Tables[0].Rows[0]["res_id"]);
            int idLogado = Convert.ToInt32(Session["idResponsavel"]);

            ltlNome.Text = ds.Tables[0].Rows[0]["pes_nome"].ToString();

            DateTime dataInicial = (DateTime)ds.Tables[0].Rows[0]["pes_dataNascimento"];
            DateTime dataFinal = DateTime.Now;
            int ano = dataFinal.Year;
            int anoInicial = dataInicial.Year;
            int idade = ano - anoInicial;


            ltlIdade.Text = idade.ToString();

            ltlTipoSanguineo.Text = ds.Tables[0].Rows[0]["min_tipo_sanguineo"].ToString();
            ltlSexo.Text = ds.Tables[0].Rows[0]["pes_sexo"].ToString() == "M" ? "Masculino" : "Feminino";
            ltlEtnia.Text = ds.Tables[0].Rows[0]["pes_cutis"].ToString();
            ltlCabelo.Text = ds.Tables[0].Rows[0]["min_cor_cabelo"].ToString();
            ltlOlhos.Text = ds.Tables[0].Rows[0]["min_cor_olhos"].ToString();
            ltlAltura.Text = ds.Tables[0].Rows[0]["min_altura"].ToString();
            ltlPeso.Text = ds.Tables[0].Rows[0]["min_peso"].ToString();
            ltlDescricao.Text = ds.Tables[0].Rows[0]["min_descricao"].ToString();

            ltlAlimentos.Text = ds.Tables[0].Rows[0]["min_restricao_alimentar"].ToString();
            ltlMedicamentos.Text = ds.Tables[0].Rows[0]["min_restricao_medicamento"].ToString();
            ltlDeficienciaMental.Text = ds.Tables[0].Rows[0]["min_deficiencia_mental"].ToString();
            ltlDeficienciaFisica.Text = ds.Tables[0].Rows[0]["min_deficiencia_fisica"].ToString();
            ltlDoencas.Text = ds.Tables[0].Rows[0]["min_doencas"].ToString();

            txtRestricoesAlimentares.Text = ds.Tables[0].Rows[0]["min_restricao_alimentar"].ToString();
            txtRestricoesMedicamentos.Text = ds.Tables[0].Rows[0]["min_restricao_medicamento"].ToString();
            txtDefMental.Text = ds.Tables[0].Rows[0]["min_deficiencia_mental"].ToString();
            txtDefFisica.Text = ds.Tables[0].Rows[0]["min_deficiencia_fisica"].ToString();
            txtOutros.Text = ds.Tables[0].Rows[0]["min_doencas"].ToString();

            int status = Convert.ToInt32(ds.Tables[0].Rows[0]["vul_status"]);

            Session["StatusVulneravel"] = status;
        }
        else
        {
            // ERRO
        }


    }

    protected void CadastrarVulneravel_Click(object sender, EventArgs e)
    {
        Response.Redirect("VerificaDocumentosVulneravel.aspx");
    }

    protected void CadastrarDesaparecido_Click(object sender, EventArgs e)
    {
        Response.Redirect("VerificaDocumentosDesaparecido.aspx");
    }

    protected void temporario_Click(object sender, EventArgs e)
    {
        Page.ClientScript.RegisterStartupScript(this.GetType(), "script", "<script>$('#modalTornarDesaparecido').modal('show');</script>", false);
    }

    protected void Facebook_Click(object sender, EventArgs e)
    {
        Response.Redirect("https://www.facebook.com/asp.net");
    }

    protected void instagram_Click(object sender, EventArgs e)
    {
        Response.Redirect("https://www.instagram.com/asp.net_learning/");
    }

    protected void twitter_Click(object sender, EventArgs e)
    {
        Response.Redirect("https://twitter.com/aspnet");
    }

    protected void youtube_Click(object sender, EventArgs e)
    {
        Response.Redirect("https://www.youtube.com/channel/UC-NZkLwbVeVi9BzAAaRdWSw");
    }


    protected void rptVulneravel_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

        if (e.CommandName == "vulneravel")
        {
            //ltlTest.Text = e.CommandArgument.ToString();
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "script", "<script>$('#modalTest').modal('show');</script>", false);
            Response.Redirect("Vulneravel.aspx?id=" + e.CommandArgument.ToString());
        }

    }

    protected void rptDesaparecidos_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "desaparecido")
        {
            //ltlTest.Text = e.CommandArgument.ToString();
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "script", "<script>$('#modalTest').modal('show');</script>", false);
            Response.Redirect("Desaparecido.aspx?id=" + e.CommandArgument.ToString());
        }
    }

    protected void PessoasEncontradas_Click(object sender, EventArgs e)
    {
        Response.Redirect("PessoasEncontradas.aspx");
    }

    protected void btnDesapareceu_Click(object sender, EventArgs e)
    {
        Page.ClientScript.RegisterStartupScript(this.GetType(), "script", "<script>$('#modalTornarDesaparecido').modal('show');</script>", false);
    }

    protected void btnEncontrado_Click(object sender, EventArgs e)
    {
        Page.ClientScript.RegisterStartupScript(this.GetType(), "script", "<script>$('#modalEncontrei').modal('show');</script>", false);
    }

    protected void btnConfirmaDesaparecimento_Click(object sender, EventArgs e)
    {
        Vulneraveis v = new Vulneraveis();

        v.Vul_status = true;
        int vulId = Convert.ToInt32(Session["idVulneravel"]);

        switch (VulneravelBD.AlteraStatus(v, vulId))
        {
            case 0:
                Desaparecidos d = new Desaparecidos();
                d.Pes_id = Convert.ToInt32(Session["pesIdVulneravel"]);
                d.Vul_id = vulId;
                switch (VulneravelBD.InsertVulneravelDesaparecidos(d))
                {
                    case 0:
                        Mais_Informacoes m = new Mais_Informacoes();
                        DataSet ds = DesaparecidoBD.SelectPesIdDesaparecido();
                        int desId = Convert.ToInt32(ds.Tables[0].Rows[0]["des_id"]);
                        m.Des_id = desId;
                        switch (VulneravelBD.UpdateMinfoVulneravelDesaparecido(m, vulId))
                        {
                            case 0:
                                Response.Redirect("TelaBO.aspx");
                                break;

                            case -2:
                                break;
                        }
                        break;

                    case -2:
                        break;
                }
                break;

            case -2:
                break;
        }
    }

    protected void btnConfirmarEncontrei_Click(object sender, EventArgs e)
    {
        Vulneraveis v = new Vulneraveis();

        v.Vul_status = false;
        int vulId = Convert.ToInt32(Session["idVulneravel"]);

        switch (VulneravelBD.AlteraStatus(v, vulId))
        {
            case 0:
                Desaparecidos d = new Desaparecidos();
                d.Des_encontrado = Convert.ToDateTime(txtData.Text);
                DataSet ds = DesaparecidoBD.SelectDesIdVulneravel(vulId);
                int desId = Convert.ToInt32(ds.Tables[0].Rows[0]["des_id"]);
                switch (DesaparecidoBD.UpdateVulneravelDesaparecidoEncontrado(d, desId))
                {
                    case 0:
                        Response.Redirect("Vulneravel.aspx?id=" + vulId);
                        break;

                    case -2:
                        break;
                }
                break;

            case -2:
                break;
        }
    }

    protected void Dicas_Click(object sender, EventArgs e)
    {
        Response.Redirect("Dicas.aspx");
    }

    protected void btnEditarAdicional_Click(object sender, EventArgs e)
    {
        Page.ClientScript.RegisterStartupScript(this.GetType(), "script", "<script>$('#modalEditarSaude').modal('show');</script>", false);
    }
    protected void btnEditarSaude_Click(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Mais_Informacoes minfo = new Mais_Informacoes();

            // Deficiencia mental
            if (txtDefMental.Text != "")
            {
                minfo.Min_deficiencia_mental = txtDefMental.Text;
            }
            else
            {
                minfo.Min_deficiencia_mental = "Não tem ou não foi informado";
            }

            // Deficiencia fisica
            if (txtDefFisica.Text != "")
            {
                minfo.Min_deficiencia_fisica = txtDefFisica.Text;
            }
            else
            {
                minfo.Min_deficiencia_fisica = "Não tem ou não foi informado";
            }

            // Restricao alimentar
            if (txtRestricoesAlimentares.Text != "")
            {
                minfo.Min_restricao_alimentar = txtRestricoesAlimentares.Text;
            }
            else
            {
                minfo.Min_restricao_alimentar = "Não tem ou não foi informado";
            }

            // Restricao medicamentos
            if (txtRestricoesMedicamentos.Text != "")
            {
                minfo.Min_restricao_medicamento = txtRestricoesMedicamentos.Text;
            }
            else
            {
                minfo.Min_restricao_medicamento = "Não tem ou não foi informado";
            }

            // Outros
            if (txtOutros.Text != "")
            {
                minfo.Min_doencas = txtOutros.Text;
            }
            else
            {
                minfo.Min_doencas = "Não tem ou não foi informado";
            }

            int vulId = Convert.ToInt32(Session["idVulneravel"]);
            minfo.Vul_id = vulId;

            switch (VulneravelBD.UpdateVulneravel(minfo))
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

    protected void btnRemover_Click(object sender, EventArgs e)
    {
        Page.ClientScript.RegisterStartupScript(this.GetType(), "script", "<script>$('#modalRemover').modal('show');</script>", false);
    }

    protected void btnConfirmaRemover_Click(object sender, EventArgs e)
    {
        int vulId = Convert.ToInt32(Request.QueryString["id"]);
        DataSet ds = VulneravelBD.SelectDadosVulneravel(vulId);
        int pesId = Convert.ToInt32(ds.Tables[0].Rows[0]["pes_id"]);

        switch (VulneravelBD.DeleteVulneravel(vulId, pesId))
        {
            case 0:
                Response.Redirect("Index.aspx");
                break;
            case -2:
                Response.Redirect("QuemSomos.aspx");
                break;
        }
    }
}