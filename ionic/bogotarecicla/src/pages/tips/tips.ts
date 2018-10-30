import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams, App } from 'ionic-angular';
import { AuthServiceProvider } from '../../providers/auth-service/auth-service';
import { IntroPage } from '../intro/intro';

@IonicPage()
@Component({
  selector: 'page-tips',
  templateUrl: 'tips.html',
})
export class TipsPage {
  titulo: string = "Reciclar plástico";
  contenido: string = "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna nibh, viverra non, semper suscipit, posuere a, pede.";
  imagen: string = "./assets/imgs/tip-plastico.jpg";
  puntos: number = 15;

  constructor(public navCtrl: NavController, public navParams: NavParams, private app: App, public authService: AuthServiceProvider) {
  }

  ionViewCanEnter() {
    if(this.authService.authenticated()) return true;
    else(this.navCtrl.push(IntroPage));
  }
  //LAURA: Falta cargar la información de otro tip
  otroTip() {}
  goToHome() {
    //this.navCtrl.pop();
    this.app.getRootNav().getActiveChildNav().select(0);
  }

}
