using CEntidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CDatos{
    public class CDEstudiante{
        CConexion ocon = new CConexion();
        SqlCommand ocmd = new SqlCommand();
        public bool CrearEstud(CEEstudiante oest){
            try{ // desactiva la recoleccion automatica de errores
                ocmd.CommandType = CommandType.StoredProcedure;// comando de sql para abrir la conexión
                ocmd.Connection = ocon.conectar("BDCesde");// se emplea para conectar

                ocmd.CommandText = "Cest";
                ocmd.Parameters.Add("@ide_c", oest.IDE1);
                ocmd.Parameters.Add("@nome_c", oest.NomE);
                ocmd.Parameters.Add("@tele_c", oest.TelE);
                ocmd.Parameters.Add("@programa_c", oest.Programa);

                ocmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception err){
                throw new Exception(err.Message); // solo se ejecuta si hay error
            }
        }

        public String LeerEstud(CEEstudiante oest){
            //Se realiza un crud dependiendo de los procedimientos almacenados que se han realizado, se realiza un método por cada procedimiento
            try{ // desactiva la recoleccion automatica de errores
                ocmd.CommandType = CommandType.StoredProcedure;// comando de sql para abrir la conexión
                ocmd.Connection = ocon.conectar("BDCesde");// se emplea para conectar

                ocmd.CommandText = "Rest";
                ocmd.Parameters.Add("@ide_c", oest.IDE1);

                SqlDataAdapter da = new SqlDataAdapter(ocmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count == 0) return "ne";
                String res = "ID: " + ds.Tables[0].Rows[0]["ide"].ToString() + "\nNombre: " + ds.Tables[0].Rows[0]["nome"].ToString() + "\nTelefono: " + ds.Tables[0].Rows[0]["tele"].ToString() + "\nPrograma: " + ds.Tables[0].Rows[0]["programa"].ToString();
                return res;
            }
            catch (Exception err){
                throw new Exception(err.Message); // solo se ejecuta si hay error
            }
        }

        public bool ActuEstud(CEEstudiante oest, int id){
            //Se realiza un crud dependiendo de los procedimientos almacenados que se han realizado, se realiza un método por cada procedimiento
            try{ // desactiva la recoleccion automatica de errores
                ocmd.CommandType = CommandType.StoredProcedure;// comando de sql para abrir la conexión
                ocmd.Connection = ocon.conectar("BDCesde");// se emplea para conectar

                ocmd.CommandText = "Uest";
                ocmd.Parameters.Add("@ide1_c", id);
                ocmd.Parameters.Add("@ide2_c", oest.IDE1);
                ocmd.Parameters.Add("@nome_c", oest.NomE);
                ocmd.Parameters.Add("@tele_c", oest.TelE);
                ocmd.Parameters.Add("@programa_c", oest.Programa);

                ocmd.ExecuteNonQuery();

                return true;
            }
            catch (Exception err){
                throw new Exception(err.Message); // solo se ejecuta si hay error
            }
        }

        public bool BorEstud(CEEstudiante oest){
            //Se realiza un crud dependiendo de los procedimientos almacenados que se han realizado, se realiza un método por cada procedimiento
            try{ // desactiva la recoleccion automatica de errores
                ocmd.CommandType = CommandType.StoredProcedure;// comando de sql para abrir la conexión
                ocmd.Connection = ocon.conectar("BDCesde");// se emplea para conectar

                ocmd.CommandText = "Dest";
                ocmd.Parameters.Add("@ide_c", oest.IDE1);

                ocmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception err)
            {
                throw new Exception(err.Message); // solo se ejecuta si hay error
            }
        }
    }
}
