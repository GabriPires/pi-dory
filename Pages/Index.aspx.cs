using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Pages_Index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!Page.IsPostBack)
        {
            try
            {
                DataSet ds = DesaparecidoBD.SelectNomeIdadeIdDesaparecidos();
                int qtd = ds.Tables[0].Rows.Count;

                if (qtd > 0)
                {
                    rptCard.DataSource = ds;
                    rptCard.DataBind();
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

                DataSet ds = DesaparecidoBD.SelectDesaparecidoporPessoa(id);
                int qtd = ds.Tables[0].Rows.Count;

                if (qtd > 0)
                {
                    rptDesaparecidos.DataSource = ds;
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

                DataSet ds = VulneravelBD.SelectVulneravelporPessoa(id);
                int qtd = ds.Tables[0].Rows.Count;

                if (qtd > 0)
                {
                    rptVulneravel.DataSource = ds;
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
    protected void CadastrarDesaparecido_Click(object sender, EventArgs e)
    {
        // Response.Redirect("CadastroDesaparecido.aspx");
        Response.Redirect("VerificaDocumentosDesaparecido.aspx");
    }

    protected void CadastrarVulneravel_Click(object sender, EventArgs e)
    {
        Response.Redirect("VerificaDocumentosVulneravel.aspx");
    }

    protected void PessoasEncontradas_Click(object sender, EventArgs e)
    {
        Response.Redirect("PessoasEncontradas.aspx");
    }








    protected void rptCard_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "vermais")
        {
            //ltlTest.Text = e.CommandArgument.ToString();
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "script", "<script>$('#modalTest').modal('show');</script>", false);
            Response.Redirect("Desaparecido.aspx?id=" + e.CommandArgument.ToString());
        }
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