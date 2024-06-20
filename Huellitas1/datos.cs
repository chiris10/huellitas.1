using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Huellitas1
{
    public class datos
    {
        public static MySqlConnection ObtenerConexion()
        {
            MySqlConnection datos = new MySqlConnection("server=127.0.0.1; database=ptc; Uid=root; pwd=Info2024/*-;");
            datos.Open();
            return datos;
        }
    }
}