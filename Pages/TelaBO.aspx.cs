using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_TelaBO : System.Web.UI.Page
{

    string resCpf = "";
    string resRg = "";
    string desCpf = "";
    string desRg = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        DataSet ds = DesaparecidoBD.SelectPesIdDesaparecido();

        //if (Convert.ToInt32(ds.Tables[0].Rows[0]["vul_id"]) != null)
        //{
        //    int vulId = Convert.ToInt32(ds.Tables[0].Rows[0]["vul_id"]);
        //}

        int desId = Convert.ToInt32(ds.Tables[0].Rows[0]["pes_id"]);
        int resId = Convert.ToInt32(Session["idPessoa"]);

        DataSet dsR = ResponsavelBD.SelectDados(resId);
        DataSet dsDd = DesaparecidoBD.SelectDados(desId);

        

        if (dsR.Tables[0].Rows[0]["pes_cpf"] != null)
        {
            txtCPF.Text = resCpf;
        }

        if (dsR.Tables[0].Rows[0]["pes_rg"] != null)
        {
            txtRG.Text = resRg;
        }

        if (dsDd.Tables[0].Rows[0]["pes_cpf"] != null)
        {
            txtCPFDesaparecido.Text = desCpf;
        }

        if (dsDd.Tables[0].Rows[0]["pes_rg"] != null)
        {
            //desRg = dsDd.Tables[0].Rows[0]["pes_rg"].ToString();
            txtRGDesaparecido.Text = desRg;
        }

        if(desRg == "")
        {
            txtRGDesaparecido.Text = "Nao tem";
        }
    }

    protected void btnFinalizarCadastro_Click(object sender, EventArgs e)
    {
        /* if(resCpf != "")
        {
            string cpfDigitado = txtCPF.Text;
            string rgDigitado = txtRG.Text;

            if(cpfDigitado != resCpf || rgDigitado != resRg)
            {
                // CHAMA A MODAL
            }
            else
            {
                Pessoas pessoaD = new Pessoas();
                Pessoas pessoaR = new Pessoas();

                pessoaD.Pes_cpf = txtCPFDesaparecido.Text;
            }
        } */
        Response.Redirect("Desaparecido.aspx");
    }

   

    protected void Pergunta_Click(object sender, EventArgs e)
    {
        Page.ClientScript.RegisterStartupScript(this.GetType(), "script", "<script>$('#modalpergunta').modal('show');</script>", false);
    }
}