using CEntidades;
using CReglas;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VistaCesde{
    public partial class formEstudiante : System.Web.UI.Page{

        //verificar si el estudiante existe
        private String ver(int id){
            CREstudiante cr = new CREstudiante();
            CEEstudiante ce = new CEEstudiante { IDE1 = id };
            String res = cr.LeerEst(ce);
            if (res.Equals("ne")) return "ne";
            else return res;
        }

        //CREAR ESTUDIANTE
        protected void btnCE_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(ide.Text);
            if (!ver(id).Equals("ne")){
                lblCE1.Text = System.Convert.ToString("Verifique el ID.");
                lblveride.Text = System.Convert.ToString("ID inválido, ya existe.");
                return;
            }
            String nombre = System.Convert.ToString(nome.Text);
            String tel = System.Convert.ToString(tele.Text);
            String progra = System.Convert.ToString(prog.Text);
            if (id == 0 || string.IsNullOrEmpty(nombre) || string.IsNullOrEmpty(tel) || string.IsNullOrEmpty(progra)){
                lblCE1.Text = System.Convert.ToString("Rellene todos los campos.");
                return;
            }
            CREstudiante cr = new CREstudiante();
            CEEstudiante ce = new CEEstudiante { IDE1 = id, NomE = nombre, Programa = progra, TelE = tel };
            if (cr.CrearEst(ce)) lblCE1.Text = System.Convert.ToString("Se ha creado el estudiante.");
            else lblCE1.Text = System.Convert.ToString("No se ha creado el estudiante.");
        }

        protected void btnveride_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(ide.Text);
            if (ver(id).Equals("ne")) lblveride.Text = System.Convert.ToString("ID válido.");
            else lblveride.Text = System.Convert.ToString("ID inválido, ya existe.");
        }

        //LEER ESTUDIANTE
        protected void btnle_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idel.Text);
            String res = this.ver(id);
            if (res.Equals("ne")){
                lblle1.Text = System.Convert.ToString("Verifique el ID.");
                lblveridel.Text = System.Convert.ToString("ID inválido, no existe.");
                return;
            }
            lblle1.Text = System.Convert.ToString(res);
        }
        protected void btnidel_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idel.Text);
            if (this.ver(id).Equals("ne")) lblveridel.Text = System.Convert.ToString("ID inválido, no existe.");
            else lblveridel.Text = System.Convert.ToString("ID válido.");
        }

        //ACTUALIZAR ESTUDIANTE
        protected void btnae_Click(object sender, EventArgs e){
            int idviejo = System.Convert.ToInt32(ideviejo.Text);
            if (this.ver(idviejo).Equals("ne")){
                lblae1.Text = System.Convert.ToString("Verifique el ID viejo.");
                lblverideviejo.Text = System.Convert.ToString("ID inválido, no existe.");
                return;
            }
            int id = System.Convert.ToInt32(idea.Text);
            if (!this.ver(id).Equals("ne")){
                lblae1.Text = System.Convert.ToString("Verifique el ID nuevo.");
                lblveridea.Text = System.Convert.ToString("ID inválido, ya existe.");
                return;
            }
            String nombre = System.Convert.ToString(nomea.Text);
            String tel = System.Convert.ToString(telea.Text);
            String progra = System.Convert.ToString(proga.Text);
            if (id == 0 || string.IsNullOrEmpty(nombre) || string.IsNullOrEmpty(tel) || string.IsNullOrEmpty(progra)){
                lblae1.Text = System.Convert.ToString("Rellene todos los campos.");
                return;
            }
            CREstudiante cr = new CREstudiante();
            CEEstudiante ce = new CEEstudiante { IDE1 = id, NomE = nombre, Programa=progra, TelE = tel };
            if (cr.ActEst(ce, idviejo)) lblae1.Text = System.Convert.ToString("Se ha actualizado el estudiante.");
            else lblae1.Text = System.Convert.ToString("No se ha actualizado el estudiante.");
        }

        protected void btnverideviejo_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(ideviejo.Text);
            if (this.ver(id).Equals("ne")) lblverideviejo.Text = System.Convert.ToString("ID inválido, no existe.");
            else lblverideviejo.Text = System.Convert.ToString("ID válido.");
        }

        protected void btnveridea_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idea.Text);
            if (this.ver(id).Equals("ne")) lblveridea.Text = System.Convert.ToString("ID válido.");
            else lblveridea.Text = System.Convert.ToString("ID inválido, ya existe.");
        }

        //BORRAR ESTUDIANTE
        protected void btnbe_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(ideb.Text);
            if (this.ver(id).Equals("ne")){
                lblbe1.Text = System.Convert.ToString("Verifique el ID.");
                lblverideb.Text = System.Convert.ToString("ID inválido, no existe.");
                return;
            }
            CREstudiante cr = new CREstudiante();
            CEEstudiante ce = new CEEstudiante { IDE1 = id };
            if (cr.BorrarEst(ce)) lblbe1.Text = System.Convert.ToString("Se ha borrado el estudiante.");
            else lblbe1.Text = System.Convert.ToString("No se ha borrado el estudiante.");
        }

        protected void btnverideb_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(ideb.Text);
            if (this.ver(id).Equals("ne")) lblverideb.Text = System.Convert.ToString("ID inválido, no existe.");
            else lblverideb.Text = System.Convert.ToString("ID válido.");
        }
    }
}