using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Huellitas1
{
    public class conexiones
    {
        //**************************** Método para verificar si se repiten los usuario ****************************
        public static int UsuariosRepetidos(string usuario, string contra, string nombre, string apellido, string correo)
        {
            int valor = 0;
            MySqlConnection conexion = datos.ObtenerConexion();

            // Crear el comando SQL con parámetros para evitar inyecciones SQL
            string query = "SELECT COUNT(Id_Usuario) FROM usuarios WHERE LOWER(Nombre_Usuario) = LOWER(@usuario) OR LOWER(Correo) = LOWER(@correo)";
            MySqlCommand cmd = new MySqlCommand(query, conexion);
            cmd.Parameters.AddWithValue("@usuario", usuario);
            cmd.Parameters.AddWithValue("@correo", correo);

            // Ejecutar el comando y obtener el resultado
            valor = Convert.ToInt32(cmd.ExecuteScalar());

            // Verificar si hay coincidencias
            if (valor != 0)
            {
                // Aquí puedes manejar el caso de usuario o correo ya existente
                // Por ejemplo, podrías lanzar una excepción o devolver un código de error específico
                Console.WriteLine("El usuario o correo ya están registrados.");
            }
            else
            {
                // Si no hay coincidencias, agregar el nuevo usuario
                conexiones.AgregarUsuario(nombre, apellido, usuario, contra, correo);
            }

            // Cerrar la conexión
            conexion.Close();
            return valor;
        }




        //**************************** Método para los usuario ****************************
        public static int AgregarUsuario(string nombre, string apellido, string usuario, string contra, string correo)
        {
            int retorno = 0;
            MySqlCommand comando = new MySqlCommand(string.Format("Insert into usuarios (Nombre, Apellido, Nombre_Usuario, Password,Correo) values ('{0}','{1}','{2}','{3}','{4}')", nombre, apellido, usuario, contra, correo), datos.ObtenerConexion());
            retorno = comando.ExecuteNonQuery();

            return retorno;
        }

        //**************************** Método para agregar imagen ****************************
        public static int AgregarImagen(string foto)
        {
            MySqlConnection conn = datos.ObtenerConexion();
            int retorno = 0;
            MySqlCommand comando = new MySqlCommand(string.Format("INSERT INTO imagenes_carrusel (Direccion) VALUES('{0}'); ", foto), conn);

            retorno = comando.ExecuteNonQuery();
            return retorno;
        }

        //**************************** Método para obtener las imágenes ****************************
        public static string[] ObtenerImagenes()
        {
            MySqlConnection conn = datos.ObtenerConexion();
            MySqlDataAdapter DA = new MySqlDataAdapter();
            DA.SelectCommand = new MySqlCommand(string.Format("SELECT * from imagenes_carrusel;"), conn);
            DataTable table = new DataTable();
            DA.Fill(table);
            string imagenes = "";
            string indicators = "";
            int contador = 0;
            foreach (DataRow row in table.Rows)
            {
                if (row["ID"].ToString() == "1")
                {
                    imagenes = imagenes + "<div class='carousel-item active'><img src='images/" + row["Direccion"] + "'width = '1100' height = '500'/><div class='carousel-caption d-none d-md-block'><h5>" + row["Texto"] + "</h5></div></div>";

                }
                else
                {
                    imagenes = imagenes + "<div class='carousel-item'><img src='images/" + row["Direccion"] + "'width='1100'height='500'/><div class='carousel-caption d-none d-md-block'><h5>" + row["Texto"] + "</h5></div></div>";

                }
                if (contador == 0)
                {
                    indicators = indicators + "<li data-target='#demo' data-slide-to='" + contador.ToString() + "'class='active'></li>";
                }
                else
                {
                    indicators = indicators + "<li data-target='#demo' data-slide-to='" + contador.ToString() + "'></li>";
                }
                contador = contador + 1;
            }
            string[] retorno = new string[2];
            retorno[0] = imagenes;
            retorno[1] = indicators;
            return retorno;
        }
    }
}