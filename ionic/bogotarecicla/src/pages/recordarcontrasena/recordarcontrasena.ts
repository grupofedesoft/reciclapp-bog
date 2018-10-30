import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { RegistroPage } from '../registro/registro';

@IonicPage()
@Component({
  selector: 'page-recordarcontrasena',
  templateUrl: 'recordarcontrasena.html',
})
export class RecordarcontrasenaPage {

  constructor(public navCtrl: NavController, public navParams: NavParams) {
  }

  //LAURA: Faltaría llenar enviarContrasena para enviar la contraseña temporal al correo
  enviarContrasena() {}
  goToRegistro() {
    this.navCtrl.push(RegistroPage);
  }

}
