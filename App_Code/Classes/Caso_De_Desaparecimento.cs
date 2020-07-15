using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descrição resumida de Caso_De_Desaparecimento
/// </summary>
public class Caso_De_Desaparecimento
{
    private int cde_id;
    private string cde_ultima_roupa;
    private string cde_ultima_localizacao;
    private string cde_ultimo_encontrado;
    private string cde_ultimo_horario_visto;
    private int des_id;

    public int Cde_id
    {
        get
        {
            return cde_id;
        }

        set
        {
            cde_id = value;
        }
    }

    public string Cde_ultima_roupa
    {
        get
        {
            return cde_ultima_roupa;
        }

        set
        {
            cde_ultima_roupa = value;
        }
    }

    public string Cde_ultima_localizacao
    {
        get
        {
            return cde_ultima_localizacao;
        }

        set
        {
            cde_ultima_localizacao = value;
        }
    }

    public string Cde_ultimo_encontrado
    {
        get
        {
            return cde_ultimo_encontrado;
        }

        set
        {
            cde_ultimo_encontrado = value;
        }
    }

    public string Cde_ultimo_horario_visto
    {
        get
        {
            return cde_ultimo_horario_visto;
        }

        set
        {
            cde_ultimo_horario_visto = value;
        }
    }

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
}