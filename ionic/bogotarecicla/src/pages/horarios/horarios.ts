import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams, App } from 'ionic-angular';
import { AuthServiceProvider } from '../../providers/auth-service/auth-service';
import { IntroPage } from '../intro/intro';

@IonicPage()
@Component({
  selector: 'page-horarios',
  templateUrl: 'horarios.html',
})
export class HorariosPage {
  localidad: string = "Usaquén";
  barrio: string = "Acacias";
  operador: string = "Lime";
  frecuencia: string = "Lunes, Miércoles y Viernes";
  jornada: string = "Noche";
  horarios: string = "7pm a 5am";

  constructor(public navCtrl: NavController, public navParams: NavParams, private app: App, public authService: AuthServiceProvider) {
  }

  ionViewCanEnter() {
    if(this.authService.authenticated()) return true;
    else(this.navCtrl.push(IntroPage));
  }
  goToHome() {
    //this.navCtrl.pop();
    this.app.getRootNav().getActiveChildNav().select(0);
  }

}
