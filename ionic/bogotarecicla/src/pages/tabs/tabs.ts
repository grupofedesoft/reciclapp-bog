import { Component } from '@angular/core';
import { HomePage } from '../home/home';
import { HorariosPage } from '../horarios/horarios';
import { TipsPage } from '../tips/tips';
import { CuentaPage } from '../cuenta/cuenta';
import { AuthServiceProvider } from '../../providers/auth-service/auth-service';
import { NavController, NavParams } from 'ionic-angular';
import { IntroPage } from '../intro/intro';

@Component({
  selector: 'page-tabs',
  templateUrl: 'tabs.html',
})
export class TabsPage {
  home: any;
  horarios: any;
  tips: any;
  cuenta: any;
  constructor(public navCtrl: NavController, public navParams: NavParams, public authService: AuthServiceProvider) {
    this.home = HomePage;
    this.horarios = HorariosPage;
    this.tips = TipsPage;
    this.cuenta = CuentaPage;
  }

  ionViewCanEnter() {
    if(this.authService.authenticated()) return true;
    else(this.navCtrl.push(IntroPage));
  }

}
