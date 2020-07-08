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

    protected void btnVer_Mais_Click(object sender, EventArgs e)
    {


        Response.Redirect("PessoasEncontradas.aspx");
    }
}