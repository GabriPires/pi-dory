using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class Desaparecidos
{
    private int des_id;
    private DateTime des_encontrado;
    private int pes_id;
    private int vul_id;

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
}