using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descrição resumida de Contato
/// </summary>
public class Contato
{
    private int con_id;
    private string con_contato;
    private string con_tipo;
    private Pessoas pes_cpf;

    public int Con_id
    {
        get
        {
            return con_id;
        }

        set
        {
            con_id = value;
        }
    }

    public string Con_contato
    {
        get
        {
            return con_contato;
        }

        set
        {
            con_contato = value;
        }
    }

    public string Con_tipo
    {
        get
        {
            return con_tipo;
        }

        set
        {
            con_tipo = value;
        }
    }

    public Pessoas Pes_cpf
    {
        get
        {
            return pes_cpf;
        }

        set
        {
            pes_cpf = value;
        }
    }
}