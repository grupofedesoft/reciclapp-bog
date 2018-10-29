import { Component } from '@angular/core';
import { NavController, App } from 'ionic-angular';
import { AuthServiceProvider } from '../../providers/auth-service/auth-service';
import { IntroPage } from '../intro/intro';
//import { HorariosPage } from '../horarios/horarios';
//import { TipsPage } from '../tips/tips';
//import { CuentaPage } from '../cuenta/cuenta';

@Component({
  selector: 'page-home',
  templateUrl: 'home.html'
})
export class HomePage {

  constructor(public navCtrl: NavController, private app: App, public authService: AuthServiceProvider) {

  }
  ionViewCanEnter() {
    if(this.authService.authenticated()) return true;
    else(this.navCtrl.push(IntroPage));
  }
  goToHorarios() {
    //this.navCtrl.push(HorariosPage);
    this.app.getRootNav().getActiveChildNav().select(1);
  }
  goToTips() {
    //this.navCtrl.push(TipsPage);
    this.app.getRootNav().getActiveChildNav().select(2);
  }
  goToCuenta() {
    //this.navCtrl.push(CuentaPage);
    this.app.getRootNav().getActiveChildNav().select(3);
  }

}
