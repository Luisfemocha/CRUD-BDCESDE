using CEntidades;
using CReglas;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VistaCesde{
    public partial class formAdministrativo : System.Web.UI.Page{
        protected void Page_Load(object sender, EventArgs e){}

        //verificar si el administrativo existe
        private String ver(int id){
            CRAdministrativo cr = new CRAdministrativo();
            CEAdministrativo ce = new CEAdministrativo { IDA1 = id };
            String res = cr.LeerAdmin(ce);
            if (res.Equals("ne")) return "ne";
            else return res;
        }

        //CREAR ADMINISTRADOR
        protected void btnCA_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(ida.Text);
            if (!ver(id).Equals("ne")){
                lblCA1.Text = System.Convert.ToString("Verifique el ID.");
                lblverida.Text = System.Convert.ToString("ID inválido, ya existe.");
                return;
            }
            String nombre = System.Convert.ToString(noma.Text);
            String tel = System.Convert.ToString(tela.Text);
            String cargo = System.Convert.ToString(carga.Text);
            if (string.IsNullOrEmpty(nombre) || string.IsNullOrEmpty(tel) || string.IsNullOrEmpty(cargo)){
                lblCA1.Text = System.Convert.ToString("Rellene todos los campos.");
                return;
            }
            CRAdministrativo cr = new CRAdministrativo();
            CEAdministrativo ce = new CEAdministrativo {IDA1 = id, NomA = nombre, CargoA = cargo, TelA = tel};
            if (cr.CrearAdmin(ce)) lblCA1.Text = System.Convert.ToString("Se ha creado el administrativo.");
            else lblCA1.Text = System.Convert.ToString("No se ha creado el administrativo.");
        }

        protected void btnverida_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(ida.Text);
            if (ver(id).Equals("ne")) lblverida.Text = System.Convert.ToString("ID válido.");
            else lblverida.Text = System.Convert.ToString("ID inválido, ya existe.");
        }

        //LEER ADMINISTRATIVO
        protected void btnla_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idal.Text);
            String res = this.ver(id);
            if (res.Equals("ne")){
                lblla1.Text = System.Convert.ToString("Verifique el ID.");
                lblveridal.Text = System.Convert.ToString("ID inválido, no existe.");
                return;
            }
            lblla1.Text = System.Convert.ToString(res);
        }
        protected void btnidal_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idal.Text);
            if (this.ver(id).Equals("ne")) lblveridal.Text = System.Convert.ToString("ID inválido, no existe.");
            else lblveridal.Text = System.Convert.ToString("ID válido.");
        }

        //ACTUALIZAR ADMINISTRATIVO
        protected void btnaa_Click(object sender, EventArgs e){
            int idviejo = System.Convert.ToInt32(idaviejo.Text);
            if (this.ver(idviejo).Equals("ne")){
                lblaa1.Text = System.Convert.ToString("Verifique el ID viejo.");
                lblveridaviejo.Text = System.Convert.ToString("ID inválido, no existe.");
                return;
            }
            int id = System.Convert.ToInt32(idaa.Text);
            if (!this.ver(id).Equals("ne")){
                lblaa1.Text = System.Convert.ToString("Verifique el ID nuevo.");
                lblveridaa.Text = System.Convert.ToString("ID inválido, ya existe.");
                return;
            }
            String nombre = System.Convert.ToString(nomaa.Text);
            String tel = System.Convert.ToString(telaa.Text);
            String cargo = System.Convert.ToString(cargaa.Text);
            if (string.IsNullOrEmpty(nombre) || string.IsNullOrEmpty(tel) || string.IsNullOrEmpty(cargo)){
                lblaa1.Text = System.Convert.ToString("Rellene todos los campos.");
                return;
            }
            CRAdministrativo cr = new CRAdministrativo();
            CEAdministrativo ce = new CEAdministrativo { IDA1 = id, NomA = nombre, CargoA = cargo, TelA = tel };
            if (cr.ActAdmin(ce, idviejo)) lblaa1.Text = System.Convert.ToString("Se ha actualizado el administrativo.");
            else lblaa1.Text = System.Convert.ToString("No se ha actualizado el administrativo.");
        }

        protected void btnveridaviejo_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idaviejo.Text);
            if (this.ver(id).Equals("ne")) lblveridaviejo.Text = System.Convert.ToString("ID inválido, no existe.");
            else lblveridaviejo.Text = System.Convert.ToString("ID válido.");
        }

        protected void btnveridaa_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idaa.Text);
            if (this.ver(id).Equals("ne")) lblveridaa.Text = System.Convert.ToString("ID válido.");
            else lblveridaa.Text = System.Convert.ToString("ID inválido, ya existe.");
        }

        //BORRAR ADMINISTRATIVO
        protected void btnba_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idab.Text);
            if (this.ver(id).Equals("ne")){
                lblba1.Text = System.Convert.ToString("Verifique el ID.");
                lblveridab.Text = System.Convert.ToString("ID inválido, no existe.");
                return;
            }
            CRAdministrativo cr = new CRAdministrativo();
            CEAdministrativo ce = new CEAdministrativo { IDA1 = id };
            if(cr.BorrarAdmin(ce)) lblba1.Text = System.Convert.ToString("Se ha borrado el administrativo.");
            else lblba1.Text = System.Convert.ToString("No se ha borrado el administrativo.");
        }

        protected void btnveridab_Click(object sender, EventArgs e){
            int id = System.Convert.ToInt32(idab.Text);
            if(this.ver(id).Equals("ne")) lblveridab.Text = System.Convert.ToString("ID inválido, no existe.");
            else lblveridab.Text = System.Convert.ToString("ID válido.");
        }
    }
}