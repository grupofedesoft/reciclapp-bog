import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { InAppBrowser } from '@ionic-native/in-app-browser';
import { IntroPage } from '../intro/intro';

@IonicPage()
@Component({
  selector: 'page-registro',
  templateUrl: 'registro.html',
})
export class RegistroPage {

  constructor(public navCtrl: NavController, public navParams: NavParams, private iab: InAppBrowser) {
  }
  
  //LAURA: Faltaría llenar registerUser para crear los usuarios
  registerUser() {}
  goToExternalLink() {
    const browser = this.iab.create('https://mapas.bogota.gov.co/');
    browser.show();
  }
  goToIntro() {
    this.navCtrl.push(IntroPage);
  }
}
