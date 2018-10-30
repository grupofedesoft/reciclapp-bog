import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams, ViewController } from 'ionic-angular';

@IonicPage()
@Component({
  selector: 'page-editarcuenta',
  templateUrl: 'editarcuenta.html',
})
export class EditarcuentaPage {
  contrasena: string = "testcontrasena";
  localidad: string = "Usaquén";
  upz: string = "Los cedros";
  barrio: string = "Acacias";
  email: string;
  //LAURA: Este campo de email se llena con el dato "usuario" que se está trayendo del cuenta.ts. allá se debe configurar para que sepa qué usuario editar.
  constructor(public navCtrl: NavController, public navParams: NavParams, private viewCtrl: ViewController) {
    this.email = navParams.get("usuario");
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad EditarcuentaPage');
  }
  close() {
    this.viewCtrl.dismiss();
  }
  closeAndSave() {
    //LAURA: Falta además guardar los datos actualizados desde esta línea, pero aún no tengo la conexión a la bd. El resto de la data envía el mensaje de éxito al cuenta.ts para que abra una alerta.
    let data = {
    status: "Ok",
    message: "Datos actualizados exitosamente"
    }
    this.viewCtrl.dismiss(data);
  }

}
