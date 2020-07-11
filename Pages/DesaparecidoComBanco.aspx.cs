using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;

public partial class Pages_DesaparecidoComBanco : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        int id = Convert.ToInt32(Session["idDesaparecido"]);
        DataSet ds = DesaparecidoBD.SelectDadosDesaparecido();

        if (ds.Tables[0].Rows.Count >= 1)
        {
            ltlNomeDesaparecido.Text = ds.Tables[0].Rows[0]["pes_nome"].ToString();

            DateTime dataInicial = (DateTime)ds.Tables[0].Rows[0]["pes_dataNascimento"];
            DateTime dataFinal = DateTime.Now;
            int ano = dataFinal.Year;
            int anoInicial = dataInicial.Year;
            int idade = ano - anoInicial;


            ltlIdadeDesaparecido.Text = idade.ToString();

            ltlTipoSanguineo.Text = ds.Tables[0].Rows[0]["min_tipo_sanguineo"].ToString();
            ltlSexo.Text = ds.Tables[0].Rows[0]["pes_sexo"].ToString();
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
    protected void btnReport_Click(object sender, EventArgs e)
    {
        Page.ClientScript.RegisterStartupScript(this.GetType(), "script", "<script>$('#report').modal('show');</script>", false);
    }

    protected void btnEncontrei_Click(object sender, EventArgs e)
    {
        Page.ClientScript.RegisterStartupScript(this.GetType(), "script", "<script>$('#encontrei').modal('show');</script>", false);
    }

    protected void CadastroDesaparecido_Click(object sender, EventArgs e)
    {
        Response.Redirect("CadastroDesaparecido.aspx");
    }

    protected void CadastrarVulneravel_Click(object sender, EventArgs e)
    {
        Response.Redirect("CadastroVulneravel.aspx");
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
}