using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ControladorCesde{
    public abstract class persona {
        private int ID;
        private String nombre;
        private String tel;

        //constructor
        protected persona(int idc, String nombrec, String telc){
            ID = idc;
            nombre = nombrec;
            tel = telc;
        }

        //getters y setters
        public int ID1 { get => ID; set => ID = value; }
        public string Nombre { get => nombre; set => nombre = value; }
        public string Tel { get => tel; set => tel = value; }
    }
}
