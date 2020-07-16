using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Pages_EditarMaisInfosDesaparecido : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int desId = Convert.ToInt32(Request.QueryString["id"]);
            DataSet ds = DesaparecidoBD.SelectDadosDesaparecido(desId);


            if (ds.Tables[0].Rows.Count >= 1)
            {
                ltlNome.Text = ds.Tables[0].Rows[0]["pes_nome"].ToString();
                txtRestricoesAlimentares.Text = ds.Tables[0].Rows[0]["min_restricao_alimentar"].ToString();
                txtRestricoesMedicamentos.Text = ds.Tables[0].Rows[0]["min_restricao_medicamento"].ToString();
                txtDefMental.Text = ds.Tables[0].Rows[0]["min_deficiencia_mental"].ToString();
                txtDefFisica.Text = ds.Tables[0].Rows[0]["min_deficiencia_fisica"].ToString();
                txtOutros.Text = ds.Tables[0].Rows[0]["min_doencas"].ToString();
            }
            else
            {
                // ERRO
            }
        }
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
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

        int desId = Convert.ToInt32(Request.QueryString["id"]);
        minfo.Des_id = desId;

        switch (DesaparecidoBD.UpdateDesaparecido(minfo))
        {
            case 0:
                Response.Redirect("Desaparecido.aspx?id=" + desId);
                break;
            case -2:
                Response.Redirect("Index.aspx");
                break;
        }
    }
}