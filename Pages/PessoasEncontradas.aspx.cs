using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Pages_PessoasEncontradas : System.Web.UI.Page
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
}