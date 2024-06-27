using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Huellitas1
{
    public class datos1
    {
        private static string _valorGlobal = string.Empty;
        public static string valorGlobal
        {
            get { return _valorGlobal; }
            set { _valorGlobal = value; }
        }
    }
    public class usuarios
    {
        public string Nombres { get; set; }

        public string Apellido { get; set; }

        public string Password { get; set; }

        public string IdRol { get; set; }

        public string Correo { get; set; }

        public string Id_Usuario { get; set; }

        public string Nombre_Usuario { get; set; }



    }
}