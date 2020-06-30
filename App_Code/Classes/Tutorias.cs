using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descrição resumida de Tutorias
/// </summary>
public class Tutorias
{
    private int tut_id;
    private int res_id;
    private int pes_id;
    private DateTime tut_cadastro;
    private Boolean tut_ativo;

    public int Tut_id
    {
        get
        {
            return tut_id;
        }

        set
        {
            tut_id = value;
        }
    }

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

    public int Pes_id
    {
        get
        {
            return pes_id;
        }

        set
        {
            pes_id = value;
        }
    }

    public DateTime Tut_cadastro
    {
        get
        {
            return tut_cadastro;
        }

        set
        {
            tut_cadastro = value;
        }
    }

    public bool Tut_ativo
    {
        get
        {
            return tut_ativo;
        }

        set
        {
            tut_ativo = value;
        }
    }
}