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
        if (!IsPostBack)
        {
            int pesId = Convert.ToInt32(Session["idPessoa"]);

            switch(ResponsavelBD.InsertInicialEndereco(pesId))
            {
                case 0:
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
                    break;

                case -2:
                    Response.Redirect("Index.aspx");
                    break;
            }
        }
    }

    protected void btnFimCadastro_Click(object sender, EventArgs e)
    {
        int pesId = Convert.ToInt32(Session["idPessoa"]);
        DataSet ds = ResponsavelBD.SelectDados(pesId);
        DataSet end = ResponsavelBD.SelectEndereco(pesId);
        int endId = Convert.ToInt32(end.Tables[0].Rows[0]["end_id"]);

        Pessoas pessoa = new Pessoas();
        Endereco endereco = new Endereco();

        pessoa.Pes_cpf = txtCPF.Text;
        pessoa.Pes_rg = txtRG.Text;

        endereco.End_logradouro = txtEndereco.Text;
        endereco.End_cidade = txtCidade.Text;
        endereco.End_bairro = txtBairro.Text;
        endereco.End_estado = txtEstado.Text;
        endereco.End_numero = txtNumero.Text;
        endereco.End_pais = "Brasil";

        switch (ResponsavelBD.UpdateResponsavel(pessoa, pesId))
        {
            case 0:
                switch (ResponsavelBD.UpdateEnderecoResponsavel(endereco, endId))
                {
                    case 0:
                        Response.Redirect("CadastroDesaparecido.aspx");
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