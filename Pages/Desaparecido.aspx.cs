using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Pages_Desaparecido : System.Web.UI.Page
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
                int idDesaparecido2 = Convert.ToInt32(Request.QueryString["id"]);
                Session["idDesaparecido"] = idDesaparecido2;

                DataSet ds2 = DesaparecidoBD.SelectAtividadeRecente(idDesaparecido2);
                int qtd = ds2.Tables[0].Rows.Count;

                if (qtd > 0)
                {
                    rptatividaderecente.DataSource = ds2;
                    rptatividaderecente.DataBind();
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
        Session["idDesaparecido"] = idDesaparecido;
        DataSet ds = DesaparecidoBD.SelectDadosDesaparecido(idDesaparecido);


        if (ds.Tables[0].Rows.Count >= 1)
        {
            Session["pesIdDesaparecido"] = Convert.ToInt32(ds.Tables[0].Rows[0]["pes_id"]);
            if (ds.Tables[0].Rows[0]["vul_id"].ToString() != "")
            {
                Session["vulIdDesaparecido"] = Convert.ToInt32(ds.Tables[0].Rows[0]["vul_id"]);
            }
            else
            {
                Session["vulIdDesaparecido"] = 0;
            }

            Session["ResposavelPor"] = Convert.ToInt32(ds.Tables[0].Rows[0]["res_id"]);
            int idLogado = Convert.ToInt32(Session["idResponsavel"]);

            ltlNomeDesaparecido.Text = ds.Tables[0].Rows[0]["pes_nome"].ToString();

            DateTime dataInicial = (DateTime)ds.Tables[0].Rows[0]["pes_dataNascimento"];
            DateTime dataFinal = DateTime.Now;
            int ano = dataFinal.Year;
            int anoInicial = dataInicial.Year;
            int idade = ano - anoInicial;


            ltlIdadeDesaparecido.Text = idade.ToString();

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
        }
        else
        {
            // ERRO
        }
    }

    protected void CadastroDesaparecido_Click(object sender, EventArgs e)
    {
        Response.Redirect("VerificaDocumentosDesaparecido.aspx");
    }

    protected void CadastrarVulneravel_Click(object sender, EventArgs e)
    {
        Response.Redirect("VerificaDocumentosVulneravel.aspx");
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

    protected void PessoasEncontradas_Click(object sender, EventArgs e)
    {
        Response.Redirect("PessoasEncontradas.aspx");
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

    protected void btnReport_Click(object sender, EventArgs e)
    {
        Page.ClientScript.RegisterStartupScript(this.GetType(), "script", "<script>$('#report').modal('show');</script>", false);
    }

    protected void Dicas_Click(object sender, EventArgs e)
    {
        Response.Redirect("Dicas.aspx");
    }

    protected void btnEncontrei_Click(object sender, EventArgs e)
    {
        Page.ClientScript.RegisterStartupScript(this.GetType(), "script", "<script>$('#encontrei').modal('show');</script>", false);
    }

    protected void btnEncontreiCadastro_Click(object sender, EventArgs e)
    {
        Response.Redirect("CadastroInicialResponsavel.aspx");
    }

    protected void btnEncontreiDeslogado_Click(object sender, EventArgs e)
    {
        Page.ClientScript.RegisterStartupScript(this.GetType(), "script", "<script>$('#encontreiDeslogado').modal('show');</script>", false);
    }

    protected void btnVulEncontrado_Click(object sender, EventArgs e)
    {
        Page.ClientScript.RegisterStartupScript(this.GetType(), "script", "<script>$('#encontreiVulneravel').modal('show');</script>", false);
    }

    protected void btnConfirmarEncontrei_Click(object sender, EventArgs e)
    {
        Vulneraveis v = new Vulneraveis();

        v.Vul_status = false;
        int vulId = Convert.ToInt32(Session["vulIdDesaparecido"]);

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


    protected void btnDesEncontrado_Click(object sender, EventArgs e)
    {
        Page.ClientScript.RegisterStartupScript(this.GetType(), "script", "<script>$('#encontreiDesaparecido').modal('show');</script>", false);
    }

    protected void btnConfirmaEcontreiDesaparecido_Click(object sender, EventArgs e)
    {

        Desaparecidos d = new Desaparecidos();
        d.Des_encontrado = Convert.ToDateTime(txtDataDes.Text);
        int desId = Convert.ToInt32(Session["idDesaparecido"]);
        switch (DesaparecidoBD.UpdateDesaparecidoEncontrado(d, desId))
        {
            case 0:
                Response.Redirect("Desaparecido.aspx?id=" + desId);
                break;

            case -2:
                break;
        }

    }

    protected void btnViEssaPessoa_Click(object sender, EventArgs e)
    {
        Caso_De_Desaparecimento c = new Caso_De_Desaparecimento();
        c.Des_id = Convert.ToInt32(Session["idDesaparecido"]);

        if (txtUltimaLocalizacao.Text != "")
        {
            c.Cde_ultima_localizacao = txtUltimaLocalizacao.Text;
        }
        else
        {
            c.Cde_ultima_localizacao = "Não foi informado";
        }

        if (txtUltimaRoupa.Text != "")
        {
            c.Cde_ultima_roupa = txtUltimaRoupa.Text;
        }
        else
        {
            c.Cde_ultima_roupa = "Não foi informado";
        }

        if (txtUltimoLocal.Text != "")
        {
            c.Cde_ultimo_encontrado = txtUltimoLocal.Text;
        }
        else
        {
            c.Cde_ultimo_encontrado = "Não foi informado";
        }

        if (txtUltimaHora.Text != "")
        {
            c.Cde_ultimo_horario_visto = txtUltimaHora.Text;
        }
        else
        {
            c.Cde_ultimo_horario_visto = "Não foi informado";
        }

        switch (DesaparecidoBD.InsertCasoDeDesaparecimento(c))
        {
            case 0:
                Response.Redirect("Desaparecido.aspx?id=" + Convert.ToInt32(Session["idDesaparecido"]));
                break;

            case -2:
                break;
        }
    }
}