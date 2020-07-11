using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CEntidades{
    public class CEProfesor{
        private int IDP;
        private String nomP;
        private String telP;
        private String cargoP;

        public int IDP1 { get => IDP; set => IDP = value; }
        public string NomP { get => nomP; set => nomP = value; }
        public string TelP { get => telP; set => telP = value; }
        public string CargoP { get => cargoP; set => cargoP = value; }
    }
}
