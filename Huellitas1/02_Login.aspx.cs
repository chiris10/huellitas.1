using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Huellitas1
{
    public partial class _02_Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Login(object sender, EventArgs e)
        {

            string usuario = txtusuario.Text;
            string contra = txtclave.Text;
            string correo = txtusuario.Text;

            if (usuario == "root" && contra == "Info2024/*-")
            {
                alerta.Text = "<script>swal('Acceso Concedido', 'Bienvenido Administrador', 'success').then(function() {window.location.href = '1admin.aspx';});</script>";
            }
            else
            {
                if (txtclave.Text != "" && txtusuario.Text != "")
                {

                    contra = EncryptString(txtclave.Text, initVector);

                    usuario = txtusuario.Text;
                    correo = txtusuario.Text;

                    datos1.valorGlobal = usuario;


                    MySqlConnection conexion = new MySqlConnection("Server=127.0.0.1; database=ptc; Uid=root; pwd=Info2024/*-;");
                    var cmd = "SELECT id_Usuario from usuarios WHERE Nombre_Usuario='" + usuario + " ' OR Correo= '" + correo + "';";
                    var cmd2 = "SELECT id_Usuario from usuarios WHERE Password='" + contra + "';";

                    MySqlCommand comando = new MySqlCommand(cmd, conexion);
                    MySqlCommand comando2 = new MySqlCommand(cmd2, conexion);
                    conexion.Open();
                    int retorno = Convert.ToInt32(comando.ExecuteScalar());
                    int retorno2 = Convert.ToInt32(comando2.ExecuteScalar());
                    if (retorno != 0 && retorno2 != 0)
                    {
                        Session["usermane"] = txtusuario;
                        alerta.Text = "<script>swal('Éxito', 'Sesion iniciada', 'success').then(function() {window.location.href = 'Index.aspx';});</script>";
                    }
                    else
                    {
                        alerta.Text = "<script>Swal.fire('Algo salio mal', 'Su usuario o contraseña no son correctos', 'error') </script>";
                        txtclave.Text = "";
                        txtusuario.Text = "";
                    }
                }
                else
                {
                    alerta.Text = "<script>Swal.fire('OOPS', 'No deje espacios en blanco', 'error') </script>";
                }
            }

        }
        private const string initVector = "huellitasptc2024";
        // This constant is used to determine the keysize of the encryption algorithm
        private const int keysize = 256;
        //Encrypt
        public static string EncryptString(string plainText, string passPhrase)
        {
            byte[] initVectorBytes = Encoding.UTF8.GetBytes(initVector);
            byte[] plainTextBytes = Encoding.UTF8.GetBytes(plainText);
            PasswordDeriveBytes password = new PasswordDeriveBytes(passPhrase, null);
            byte[] keyBytes = password.GetBytes(keysize / 8);
            RijndaelManaged symmetricKey = new RijndaelManaged();
            symmetricKey.Mode = CipherMode.CBC;
            ICryptoTransform encryptor = symmetricKey.CreateEncryptor(keyBytes, initVectorBytes);
            MemoryStream memoryStream = new MemoryStream();
            CryptoStream cryptoStream = new CryptoStream(memoryStream, encryptor, CryptoStreamMode.Write);
            cryptoStream.Write(plainTextBytes, 0, plainTextBytes.Length);
            cryptoStream.FlushFinalBlock();
            byte[] cipherTextBytes = memoryStream.ToArray();
            memoryStream.Close();
            cryptoStream.Close();
            return Convert.ToBase64String(cipherTextBytes);

            //OCUPAR RIJNDAEL-256 BITS
        }
    }
}
