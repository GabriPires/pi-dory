using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_TelaBO : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            DataSet ds = DesaparecidoBD.SelectPesIdDesaparecido();

            int desId = Convert.ToInt32(ds.Tables[0].Rows[0]["pes_id"]);
            int resId = Convert.ToInt32(Session["idPessoa"]);

            DataSet dsR = ResponsavelBD.SelectDados(resId);
            DataSet dsDd = DesaparecidoBD.SelectDados(desId);

            if (dsR.Tables[0].Rows[0]["pes_cpf"] != null)
            {
                txtCPF.Text = dsR.Tables[0].Rows[0]["pes_cpf"].ToString();
            }

            if (dsR.Tables[0].Rows[0]["pes_rg"] != null)
            {
                txtRG.Text = dsR.Tables[0].Rows[0]["pes_rg"].ToString();
            }

            if (dsDd.Tables[0].Rows[0]["pes_cpf"] != null)
            {
                txtCPFDesaparecido.Text = dsDd.Tables[0].Rows[0]["pes_cpf"].ToString();
            }

            if (dsDd.Tables[0].Rows[0]["pes_rg"] != null)
            {
                //desRg = dsDd.Tables[0].Rows[0]["pes_rg"].ToString();
                txtRGDesaparecido.Text = dsDd.Tables[0].Rows[0]["pes_rg"].ToString();
            }
        }
    }

    protected void btnFinalizarCadastro_Click(object sender, EventArgs e)
    {
        DataSet ds = DesaparecidoBD.SelectPesIdDesaparecido();
        int desId = Convert.ToInt32(ds.Tables[0].Rows[0]["pes_id"]);
        int desIdId = Convert.ToInt32(ds.Tables[0].Rows[0]["des_id"]);

        int resId = Convert.ToInt32(Session["idPessoa"]);
        DataSet dsR = ResponsavelBD.SelectDados(resId);

        string cpfDigitado = txtCPF.Text;
        string rgDigitado = txtRG.Text;

        string cpfCadastrado = dsR.Tables[0].Rows[0]["pes_cpf"].ToString();
        string rgCadastrado = dsR.Tables[0].Rows[0]["pes_rg"].ToString();

        if (cpfCadastrado != cpfDigitado && rgCadastrado != rgDigitado)
        {
            // ERRO
        }
        else
        {
            //TODO VERIFICAR SE CPF DO DESAPARECIDO JA NAO ESTA CADASTRADO
            Pessoas pessoaD = new Pessoas();

            pessoaD.Pes_cpf = txtCPFDesaparecido.Text;
            pessoaD.Pes_rg = txtRGDesaparecido.Text;

            switch (DesaparecidoBD.UpdateDocumentos(pessoaD, desId))
            {
                case 0:
                    Response.Redirect("Desaparecido.aspx?id=" + desIdId);
                    break;
                case -2:
                    Response.Redirect("ExibirPerfil.aspx");
                    break;
            }
        }
    }



    protected void Pergunta_Click(object sender, EventArgs e)
    {
        Page.ClientScript.RegisterStartupScript(this.GetType(), "script", "<script>$('#modalpergunta').modal('show');</script>", false);
    }
}