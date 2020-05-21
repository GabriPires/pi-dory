using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class Endereco
{
    private int end_id;
    private string end_logradouro;
    private string end_numero;
    private string end_bairro;
    private int end_cidade;
    private string end_municipio;
    private string end_pais;

    public int End_id
    {
        get
        {
            return end_id;
        }

        set
        {
            end_id = value;
        }
    }

    public string End_logradouro
    {
        get
        {
            return end_logradouro;
        }

        set
        {
            end_logradouro = value;
        }
    }

    public string End_numero
    {
        get
        {
            return end_numero;
        }

        set
        {
            end_numero = value;
        }
    }

    public string End_bairro
    {
        get
        {
            return end_bairro;
        }

        set
        {
            end_bairro = value;
        }
    }

    public int End_cidade
    {
        get
        {
            return end_cidade;
        }

        set
        {
            end_cidade = value;
        }
    }

    public string End_municipio
    {
        get
        {
            return end_municipio;
        }

        set
        {
            end_municipio = value;
        }
    }

    public string End_pais
    {
        get
        {
            return end_pais;
        }

        set
        {
            end_pais = value;
        }
    }
}