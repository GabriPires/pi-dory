using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descrição resumida de Responsaveis
/// </summary>
public class Responsaveis
{
    private int res_id;
    private string res_email;
    private string res_senha;
    private Pessoas pes_cpf;

    public int Res_id
    {
        get
        {
            return res_id;
        }

        set
        {
            res_id = value;
        }
    }

    public string Res_email
    {
        get
        {
            return res_email;
        }

        set
        {
            res_email = value;
        }
    }

    public string Res_senha
    {
        get
        {
            return res_senha;
        }

        set
        {
            res_senha = value;
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