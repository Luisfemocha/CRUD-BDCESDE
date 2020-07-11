using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ControladorCesde{
    public abstract class empleado:persona{
        private String cargo;

        //constructor
        protected empleado(int idc, String nombrec, String telc, string cargoc):base(idc, nombrec, telc){
            cargo = cargoc;
        }

        //setter y getter
        public string Cargo { get => cargo; set => cargo = value; }
    }
}
