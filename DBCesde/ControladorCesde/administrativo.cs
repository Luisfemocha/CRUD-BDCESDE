using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ControladorCesde{
    public sealed class administrativo:empleado{
        private SqlCommand ocmd;
        public administrativo(int ida, String noma, String tela, String cargoa) : base(ida, noma, tela, cargoa){
            ocmd = new SqlCommand();
            try{ // desactiva la recoleccion automatica de errores
                ocmd.CommandType = CommandType.StoredProcedure;// comando de sql para abrir la conexión
                ocmd.Connection = this.conectar("BDCesde");// se emplea para conectar

                ocmd.CommandText = "Cadmin";
                ocmd.Parameters.Add("@ida_c", ida);
                ocmd.Parameters.Add("@noma_c", noma);
                ocmd.Parameters.Add("@tela_c", tela);
                ocmd.Parameters.Add("@cargoa_c", cargoa);

                ocmd.ExecuteNonQuery();
            }
            catch (Exception err){
                throw new Exception(err.Message); // solo se ejecuta si hay error
            }
        }
        public String leer(){
            //Se realiza un crud dependiendo de los procedimientos almacenados que se han realizado, se realiza un método por cada procedimiento
            ocmd = new SqlCommand();
            try{ // desactiva la recoleccion automatica de errores
                ocmd.CommandType = CommandType.StoredProcedure;// comando de sql para abrir la conexión
                ocmd.Connection = conectar("BDCesde");// se emplea para conectar

                ocmd.CommandText = "Rprof";
                ocmd.Parameters.Add("@idp_c", ID1);

                SqlDataAdapter da = new SqlDataAdapter(ocmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                String res="ID:"
                return ds;
            }
            catch (Exception err)
            {
                throw new Exception(err.Message); // solo se ejecuta si hay error
            }
        }
        public bool actualizar(int id1, int idp, String nomp, String telp, String cargop)
        {
            //Se realiza un crud dependiendo de los procedimientos almacenados que se han realizado, se realiza un método por cada procedimiento
            ocmd = new SqlCommand();
            try
            { // desactiva la recoleccion automatica de errores
                ocmd.CommandType = CommandType.StoredProcedure;// comando de sql para abrir la conexión
                ocmd.Connection = conectar("BDCesde");// se emplea para conectar

                ocmd.CommandText = "Uprof";
                ocmd.Parameters.Add("@idp1_c", id1);
                ocmd.Parameters.Add("@idp2_c", idp);
                ocmd.Parameters.Add("@nomp_c", nomp);
                ocmd.Parameters.Add("@telp_c", telp);
                ocmd.Parameters.Add("@cargop_c", cargop);

                ocmd.ExecuteNonQuery();

                this.ID1 = id1;
                this.Nombre = nomp;
                this.Tel = telp;
                this.Cargo = cargop;
                return true;
            }
            catch (Exception err)
            {
                throw new Exception(err.Message); // solo se ejecuta si hay error
            }
        }

        public bool borrar()
        {
            //Se realiza un crud dependiendo de los procedimientos almacenados que se han realizado, se realiza un método por cada procedimiento
            ocmd = new SqlCommand();
            try
            { // desactiva la recoleccion automatica de errores
                ocmd.CommandType = CommandType.StoredProcedure;// comando de sql para abrir la conexión
                ocmd.Connection = conectar("BDCesde");// se emplea para conectar

                ocmd.CommandText = "Dprof";
                ocmd.Parameters.Add("@idp_c", ID1);

                ocmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception err)
            {
                throw new Exception(err.Message); // solo se ejecuta si hay error
            }
        }

        public SqlConnection conectar(string Cnx)
        { // es una funcion para abrir la base de datos
            try
            { // desactiva la recoleccion automatica de errores
                SqlConnection oconectar = new SqlConnection(ConfigurationSettings.AppSettings[Cnx].ToString());
                oconectar.Open(); //abrir la base de datos
                return oconectar; //se lo retorna al q lo necesite
            }
            catch (Exception err)
            {
                throw new Exception(err.Message); // solo se ejecuta si hay error
            }
        }
    }
}
