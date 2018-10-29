import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams, App } from 'ionic-angular';
import { RegistroPage } from '../registro/registro';
import { RecordarcontrasenaPage } from '../recordarcontrasena/recordarcontrasena';
import { AuthServiceProvider } from '../../providers/auth-service/auth-service';
import { TabsPage } from '../tabs/tabs';

@IonicPage()
@Component({
  selector: 'page-intro',
  templateUrl: 'intro.html',
})
export class IntroPage {

  constructor(public navCtrl: NavController, public navParams: NavParams, public authService: AuthServiceProvider) {
  }
  //LAURA: Por ahora el botón está autenticando. Tocaría hacer validación del usuario y contraseña contra la bd
  loginUser() {
    this.authService.login();
    console.log('Inició sesión');
    this.navCtrl.push(TabsPage);
  }
  //isAuthenticated() {
  //  return this.authService.authenticated();
  //}
  goToRecContrasena() {
    this.navCtrl.push(RecordarcontrasenaPage);
  }
  goToRegistro() {
    this.navCtrl.push(RegistroPage);
  }

}
