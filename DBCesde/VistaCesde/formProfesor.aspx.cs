using CEntidades;
using CReglas;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VistaCesde{
    public partial class formProfesor : System.Web.UI.Page{
        //verificar si el profesor existe
        private String ver(int id){
            CRProfesor cr = new CRProfesor();
            CEProfesor ce = new CEProfesor { IDP1 = id };
            String res = cr.LeerProf(ce);
            if (res.Equals("ne")) return "ne";
            else return res;
        }

        //CREAR PROFESOR
        protected void btnCP_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idp.Text);
            if (!ver(id).Equals("ne")){
                lblCP1.Text = System.Convert.ToString("Verifique el ID.");
                lblveridp.Text = System.Convert.ToString("ID inválido, ya existe.");
                return;
            }
            String nombre = System.Convert.ToString(nomp.Text);
            String tel = System.Convert.ToString(telp.Text);
            String cargo = System.Convert.ToString(carp.Text);
            if (string.IsNullOrEmpty(nombre) || string.IsNullOrEmpty(tel) || string.IsNullOrEmpty(cargo)){
                lblCP1.Text = System.Convert.ToString("Rellene todos los campos.");
                return;
            }
            CRProfesor cr = new CRProfesor();
            CEProfesor ce = new CEProfesor { IDP1 = id, NomP = nombre, CargoP = cargo, TelP = tel };
            if (cr.CrearProf(ce)) lblCP1.Text = System.Convert.ToString("Se ha creado el profesor.");
            else lblCP1.Text = System.Convert.ToString("No se ha creado el profesor.");
        }

        protected void btnveridp_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idp.Text);
            if (ver(id).Equals("ne")) lblveridp.Text = System.Convert.ToString("ID válido.");
            else lblveridp.Text = System.Convert.ToString("ID inválido, ya existe.");
        }

        //LEER PROFESOR
        protected void btnlp_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idpl.Text);
            String res = this.ver(id);
            if (res.Equals("ne")){
                lbllp1.Text = System.Convert.ToString("Verifique el ID.");
                lblveridpl.Text = System.Convert.ToString("ID inválido, no existe.");
                return;
            }
            lbllp1.Text = System.Convert.ToString(res);
        }
        protected void btnidpl_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idpl.Text);
            if (this.ver(id).Equals("ne")) lblveridpl.Text = System.Convert.ToString("ID inválido, no existe.");
            else lblveridpl.Text = System.Convert.ToString("ID válido.");
        }

        //ACTUALIZAR PROFESOR
        protected void btnap_Click(object sender, EventArgs e){
            int idviejo = System.Convert.ToInt32(idpviejo.Text);
            if (this.ver(idviejo).Equals("ne")){
                lblap1.Text = System.Convert.ToString("Verifique el ID viejo.");
                lblveridpviejo.Text = System.Convert.ToString("ID inválido, no existe.");
                return;
            }
            int id = System.Convert.ToInt32(idap.Text);
            if (!this.ver(id).Equals("ne"))
            {
                lblap1.Text = System.Convert.ToString("Verifique el ID nuevo.");
                lblveridap.Text = System.Convert.ToString("ID inválido, ya existe.");
                return;
            }
            String nombre = System.Convert.ToString(nomap.Text);
            String tel = System.Convert.ToString(telap.Text);
            String cargo = System.Convert.ToString(cargap.Text);
            if (string.IsNullOrEmpty(nombre) || string.IsNullOrEmpty(tel) || string.IsNullOrEmpty(cargo)){
                lblap1.Text = System.Convert.ToString("Rellene todos los campos.");
                return;
            }
            CRProfesor cr = new CRProfesor();
            CEProfesor ce = new CEProfesor { IDP1 = id, NomP= nombre, CargoP = cargo, TelP = tel };
            if (cr.ActProf(ce, idviejo)) lblap1.Text = System.Convert.ToString("Se ha actualizado el profesor.");
            else lblap1.Text = System.Convert.ToString("No se ha actualizado el profesor.");
        }

        protected void btnveridpviejo_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idpviejo.Text);
            if (this.ver(id).Equals("ne")) lblveridpviejo.Text = System.Convert.ToString("ID inválido, no existe.");
            else lblveridpviejo.Text = System.Convert.ToString("ID válido.");
        }

        protected void btnveridap_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idap.Text);
            if (this.ver(id).Equals("ne")) lblveridap.Text = System.Convert.ToString("ID válido.");
            else lblveridap.Text = System.Convert.ToString("ID inválido, ya existe.");
        }

        //BORRAR PROFESOR
        protected void btnbp_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idpb.Text);
            if (this.ver(id).Equals("ne")){
                lblbp1.Text = System.Convert.ToString("Verifique el ID.");
                lblveridpb.Text = System.Convert.ToString("ID inválido, no existe.");
                return;
            }
            CRProfesor cr = new CRProfesor();
            CEProfesor ce = new CEProfesor { IDP1 = id };
            if (cr.BorrarProf(ce)) lblbp1.Text = System.Convert.ToString("Se ha borrado el profesor.");
            else lblbp1.Text = System.Convert.ToString("No se ha borrado el profesor.");
        }

        protected void btnveridpb_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idpb.Text);
            if (this.ver(id).Equals("ne")) lblveridpb.Text = System.Convert.ToString("ID inválido, no existe.");
            else lblveridpb.Text = System.Convert.ToString("ID válido.");
        }
    }
}