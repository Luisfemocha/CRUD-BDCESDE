using CDatos;
using CEntidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CReglas{
    public class CRProfesor{
        CDProfesor odp = new CDProfesor();

        public bool CrearProf(CEProfesor oep){
            return odp.CrearProf(oep);
        }

        public String LeerProf(CEProfesor oep){
            return odp.LeerProf(oep);
        }

        public bool ActProf(CEProfesor oep, int id){
            return odp.ActuProf(oep, id);
        }

        public bool BorrarProf(CEProfesor oep){
            return odp.BorProf(oep);
        }     
    }
}
