using CEntidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CDatos{
    public class CDProfesor{
        CConexion ocon = new CConexion();
        SqlCommand ocmd = new SqlCommand();

        public bool CrearProf(CEProfesor oprof){

            try{ // desactiva la recoleccion automatica de errores
                ocmd.CommandType = CommandType.StoredProcedure;// comando de sql para abrir la conexión
                ocmd.Connection = ocon.conectar("BDCesde");// se emplea para conectar

                ocmd.CommandText = "Cprof";
                ocmd.Parameters.Add("@idp_c", oprof.IDP1);
                ocmd.Parameters.Add("@nomp_c", oprof.NomP);
                ocmd.Parameters.Add("@telp_c", oprof.TelP);
                ocmd.Parameters.Add("@cargop_c", oprof.CargoP);

                ocmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception err){
                throw new Exception(err.Message); // solo se ejecuta si hay error
            }
        }

        public String LeerProf(CEProfesor oprof){
            //Se realiza un crud dependiendo de los procedimientos almacenados que se han realizado, se realiza un método por cada procedimiento
            try{ // desactiva la recoleccion automatica de errores
                ocmd.CommandType = CommandType.StoredProcedure;// comando de sql para abrir la conexión
                ocmd.Connection = ocon.conectar("BDCesde");// se emplea para conectar

                ocmd.CommandText = "Rprof";
                ocmd.Parameters.Add("@idp_c", oprof.IDP1);

                SqlDataAdapter da = new SqlDataAdapter(ocmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count == 0) return "ne";
                return "ID: " + ds.Tables[0].Rows[0]["idp"].ToString() + "\nNombre: " + ds.Tables[0].Rows[0]["nomp"].ToString() + "\nTelefono: " + ds.Tables[0].Rows[0]["telp"].ToString() + "\nCargo: "+ ds.Tables[0].Rows[0]["cargop"].ToString();
            }
            catch (Exception err){
                throw new Exception(err.Message); // solo se ejecuta si hay error
            }
        }

        public bool ActuProf(CEProfesor oprof, int id){
            //Se realiza un crud dependiendo de los procedimientos almacenados que se han realizado, se realiza un método por cada procedimiento
            try{ // desactiva la recoleccion automatica de errores
                ocmd.CommandType = CommandType.StoredProcedure;// comando de sql para abrir la conexión
                ocmd.Connection = ocon.conectar("BDCesde");// se emplea para conectar

                ocmd.CommandText = "Uprof";
                ocmd.Parameters.Add("@idp1_c", id);
                ocmd.Parameters.Add("@idp2_c", oprof.IDP1);
                ocmd.Parameters.Add("@nomp_c", oprof.NomP);
                ocmd.Parameters.Add("@telp_c", oprof.TelP);
                ocmd.Parameters.Add("@cargop_c", oprof.CargoP);

                ocmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception err){
                throw new Exception(err.Message); // solo se ejecuta si hay error
            }
        }

        public bool BorProf(CEProfesor oprof){
            //Se realiza un crud dependiendo de los procedimientos almacenados que se han realizado, se realiza un método por cada procedimiento
            ocmd = new SqlCommand();
            try{ // desactiva la recoleccion automatica de errores
                ocmd.CommandType = CommandType.StoredProcedure;// comando de sql para abrir la conexión
                ocmd.Connection = ocon.conectar("BDCesde");// se emplea para conectar

                ocmd.CommandText = "Dprof";
                ocmd.Parameters.Add("@idp_c", oprof.IDP1);

                ocmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception err){
                throw new Exception(err.Message); // solo se ejecuta si hay error
            }
        }
    }
}