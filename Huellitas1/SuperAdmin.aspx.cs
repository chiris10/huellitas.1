using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Huellitas1
{
    public partial class SuperAdmin : System.Web.UI.Page
    {
        MySqlConnection conec = new MySqlConnection("server=127.0.0.1; database=ptc; Uid=root; pwd=Info2024/*-;");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] == null)
            {
                Response.Redirect("Index.aspx");
            }
            conec.Open();
            MySqlCommand cmd = conec.CreateCommand();
            cmd.CommandText = "select * from usuarios";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            da.Fill(dt);
            gvdlista.DataSource = dt;
            gvdlista.DataBind();
            conec.Close();
        }
        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            if (txtid.Text.Trim() != "" && txtidrol.Text.Trim() != "" && txtnombre.Text.Trim() != "" && txtapellido.Text.Trim() != "" && txtusuario.Text.Trim() != "" && txtemail.Text.Trim() != "")
            {

                MySqlConnection conexion = datos.ObtenerConexion();
                string query = "UPDATE usuarios SET Id_Usuario = @idusuario, IdRol = @idrol, Nombre = @nombre, Apellido = @apellido, Nombre_Usuario = @nombreusuario, Password = @password, Correo = @correo WHERE Id_Usuario=@idusuario";
                MySqlCommand comando = new MySqlCommand(query, conexion);

                comando.Parameters.AddWithValue("@idusuario", txtid.Text);
                comando.Parameters.AddWithValue("@idrol", txtidrol.Text);
                comando.Parameters.AddWithValue("@nombre", txtnombre.Text);
                comando.Parameters.AddWithValue("@apellido", txtapellido.Text);
                comando.Parameters.AddWithValue("@nombreusuario", txtusuario.Text);
                comando.Parameters.AddWithValue("@password", txtpassword.Text);
                comando.Parameters.AddWithValue("@correo", txtemail.Text);
                comando.ExecuteNonQuery();
                conexion.Close();
                conec.Open();
                MySqlCommand cmd = conec.CreateCommand();
                cmd.CommandText = "select * from usuarios";
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                da.Fill(dt);
                gvdlista.DataSource = dt;
                gvdlista.DataBind();
                conec.Close();

                txtid.Text = "";
                txtidrol.Text = "";
                txtnombre.Text = "";
                txtapellido.Text = "";
                txtusuario.Text = "";
                txtpassword.Text = "";
                txtemail.Text = "";

                alerta.Text = "<script>Swal.fire('El usuario se Editado con exito.', '¡Gracias por preferirnos!', 'success'); </script>";
            }
            else
            {
                alerta.Text = "<script>Swal.fire('OOPS', 'No deje espacios en blanco', 'error') </script>";
            }
        }
        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            try
            {
                MySqlConnection conexion = datos.ObtenerConexion();
                MySqlCommand comand = new MySqlCommand("SELECT * FROM usuarios WHERE Id_Usuario=@idusuario", conexion);
                comand.Parameters.AddWithValue("@idusuario", txtid.Text);
                MySqlDataReader registro = comand.ExecuteReader();
                if (registro.Read())
                {
                    alerta.Text = "<script>Swal.fire('Sea seleccionado con exito.', '', 'success'); </script>";

                    txtidrol.Text = registro["IdRol"].ToString();
                    txtnombre.Text = registro["Nombre"].ToString();
                    txtapellido.Text = registro["Apellido"].ToString();
                    txtusuario.Text = registro["Nombre_Usuario"].ToString();
                    txtpassword.Text = registro["Password"].ToString();
                    txtemail.Text = registro["Correo"].ToString();


                }
                conexion.Close();
            }
            catch
            {
                alerta.Text = "<script>Swal.fire('Algo salio mal Intentalo otra vez', 'Verifique que ID se correcto', 'error') </script>";

            }
        }
    }
}