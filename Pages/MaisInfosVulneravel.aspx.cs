using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_MaisInfosVulneravel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void btnTerminarCadastroVulneravel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Vulneravel.aspx");
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
}