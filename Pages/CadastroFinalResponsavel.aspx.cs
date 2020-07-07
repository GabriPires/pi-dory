using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Pages_CadastroFinalResponsavel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int pesId = Convert.ToInt32(Session["idPessoa"]);
        DataSet ds = ResponsavelBD.SelectDados(pesId);
        DataSet end = ResponsavelBD.SelectEndereco(pesId);

        if (ds.Tables[0].Rows[0]["pes_cpf"] != null)
        {
            txtCPF.Text = ds.Tables[0].Rows[0]["pes_cpf"].ToString();
        }

        if (ds.Tables[0].Rows[0]["pes_rg"] != null)
        {
            txtRG.Text = ds.Tables[0].Rows[0]["pes_rg"].ToString();
        }

        if (end.Tables[0].Rows[0]["end_logradouro"] != null)
        {
            txtEndereco.Text = end.Tables[0].Rows[0]["end_logradouro"].ToString();
        }

        if (end.Tables[0].Rows[0]["end_numero"] != null)
        {
            txtNumero.Text = end.Tables[0].Rows[0]["end_numero"].ToString();
        }

        if (end.Tables[0].Rows[0]["end_bairro"] != null)
        {
            txtBairro.Text = end.Tables[0].Rows[0]["end_cidade"].ToString();
        }

        if (end.Tables[0].Rows[0]["end_cidade"] != null)
        {
            txtCidade.Text = end.Tables[0].Rows[0]["end_bairro"].ToString();
        }

        if (end.Tables[0].Rows[0]["end_estado"] != null)
        {
            txtEstado.Text = end.Tables[0].Rows[0]["end_estado"].ToString();
        }
    }
}