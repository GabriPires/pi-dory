using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class Vulneraveis
{
    private int vul_id;
    private string vul_observacoes;
    private Boolean vul_status;
    private Pessoas pes_id;

    public int Vul_id
    {
        get
        {
            return vul_id;
        }

        set
        {
            vul_id = value;
        }
    }

    public string Vul_observacoes
    {
        get
        {
            return vul_observacoes;
        }

        set
        {
            vul_observacoes = value;
        }
    }

    public bool Vul_status
    {
        get
        {
            return vul_status;
        }

        set
        {
            vul_status = value;
        }
    }

    public Pessoas Pes_id
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
}