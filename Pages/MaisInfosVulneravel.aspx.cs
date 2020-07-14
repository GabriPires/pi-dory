using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Pages_MaisInfosVulneravel : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnTerminarCadastroVulneravel_Click(object sender, EventArgs e)
    {
        Mais_Informacoes minfo = new Mais_Informacoes();

        // Deficiencia mental
        if (txtDeficienciaMental.Text != "")
        {
            minfo.Min_deficiencia_mental = txtDeficienciaMental.Text;
        }
        else
        {
            minfo.Min_deficiencia_mental = "Não tem ou não foi informado";
        }

        // Deficiencia fisica
        if (txtDeficienciaFisica.Text != "")
        {
            minfo.Min_deficiencia_fisica = txtDeficienciaFisica.Text;
        }
        else
        {
            minfo.Min_deficiencia_fisica = "Não tem ou não foi informado";
        }

        // Restricao alimentar
        if (txtRestricaoAlimentar.Text != "")
        {
            minfo.Min_restricao_alimentar = txtRestricaoAlimentar.Text;
        }
        else
        {
            minfo.Min_restricao_alimentar = "Não tem ou não foi informado";
        }

        // Restricao medicamentos
        if (txtRestricaoMedicamento.Text != "")
        {
            minfo.Min_restricao_medicamento = txtRestricaoMedicamento.Text;
        }
        else
        {
            minfo.Min_restricao_medicamento = "Não tem ou não foi informado";
        }

        // Outros
        if (txtDoenca.Text != "")
        {
            minfo.Min_doencas = txtDoenca.Text;
        }
        else
        {
            minfo.Min_doencas = "Não tem ou não foi informado";
        }

        DataSet ds = VulneravelBD.SelectPesIdVulneravel();
        minfo.Vul_id = Convert.ToInt32(ds.Tables[0].Rows[0]["vul_id"]);
        int vulId = Convert.ToInt32(ds.Tables[0].Rows[0]["vul_id"]);

        switch (VulneravelBD.UpdateVulneravel(minfo))
        {
            case 0:
                Response.Redirect("Vulneravel.aspx?id=" + vulId);
                break;
            case -2:
                Response.Redirect("Index.aspx");
                break;
        }
    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedValue == "2")
        {
            txtDeficienciaMental.ReadOnly = true;
        }
        else
        {
            txtDeficienciaMental.ReadOnly = false;
        }
    }

    protected void RadioButtonList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList2.SelectedValue == "2")
        {
            txtDeficienciaFisica.ReadOnly = true;
        }
        else
        {
            txtDeficienciaFisica.ReadOnly = false;
        }
    }

    protected void RadioButtonList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList3.SelectedValue == "2")
        {
            txtRestricaoAlimentar.ReadOnly = true;
        }
        else
        {
            txtRestricaoAlimentar.ReadOnly = false;
        }
    }

    protected void RadioButtonList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList4.SelectedValue == "2")
        {
            txtRestricaoMedicamento.ReadOnly = true;
        }
        else
        {
            txtRestricaoMedicamento.ReadOnly = false;
        }
    }

    protected void RadioButtonList5_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList5.SelectedValue == "2")
        {
            txtDoenca.ReadOnly = true;
        }
        else
        {
            txtDoenca.ReadOnly = false;
        }
    }
}