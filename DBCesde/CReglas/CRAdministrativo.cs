using CDatos;
using CEntidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CReglas{
    public class CRAdministrativo{
        CDAdministrativo oda = new CDAdministrativo();

        public bool CrearAdmin(CEAdministrativo oea){
            return oda.CrearAdmin(oea);
        }

        public String LeerAdmin(CEAdministrativo oea){
            return oda.LeerAdmin(oea);
        }

        public bool ActAdmin(CEAdministrativo oea, int id){
            return oda.ActuAdmin(oea, id);
        }

        public bool BorrarAdmin(CEAdministrativo oea){
            return oda.BorAdmin(oea);
        }
    }
}
