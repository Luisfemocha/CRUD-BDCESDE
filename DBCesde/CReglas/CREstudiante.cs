using CDatos;
using CEntidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CReglas{
    public class CREstudiante{
        CDEstudiante ode = new CDEstudiante();

        public bool CrearEst(CEEstudiante oee){
            return ode.CrearEstud(oee);
        }

        public String LeerEst(CEEstudiante oee){
            return ode.LeerEstud(oee);
        }

        public bool ActEst(CEEstudiante oee, int id){
            return ode.ActuEstud(oee, id);
        }

        public bool BorrarEst(CEEstudiante oee){
            return ode.BorEstud(oee);
        }
    }
}
