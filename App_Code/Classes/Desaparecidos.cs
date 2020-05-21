using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class Desaparecidos
{
    private int des_id;
    private DateTime des_encontrado;
    private Pessoas pes_cpf;
    private Vulneraveis vul_id;

    public int Des_id
    {
        get
        {
            return des_id;
        }

        set
        {
            des_id = value;
        }
    }

    public DateTime Des_encontrado
    {
        get
        {
            return des_encontrado;
        }

        set
        {
            des_encontrado = value;
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

    public Vulneraveis Vul_id
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
}