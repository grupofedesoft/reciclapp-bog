import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams, App, ModalController, AlertController } from 'ionic-angular';
import { EditarcuentaPage } from '../editarcuenta/editarcuenta';
import { AuthServiceProvider } from '../../providers/auth-service/auth-service';
import { IntroPage } from '../intro/intro';

@IonicPage()
@Component({
  selector: 'page-cuenta',
  templateUrl: 'cuenta.html',
})
export class CuentaPage {
  localidad: string = "Usaquén";
  upz: string = "Los cedros";
  barrio: string = "Acacias";
  puntos: number = 15;
  //LAURA: El siguiente string es el usuario activo. Este es un ejemplo con el correo y se llama en la línea 34. Este usuario también se llama en editarcuenta.ts, y en el título de editarcuenta.html
  usuario: string = 'example@example.com';
  
  constructor(public navCtrl: NavController, public navParams: NavParams, private app: App, private modal: ModalController, private alertCtrl: AlertController, public authService: AuthServiceProvider) {
  }

  ionViewCanEnter() {
    if(this.authService.authenticated()) return true;
    else(this.navCtrl.push(IntroPage));
  }
  logoutUser() {
    this.authService.logout();
    console.log('Cerró sesión');
    this.navCtrl.push(IntroPage);
  }
  goToHome() {
    //this.navCtrl.pop();
    this.app.getRootNav().getActiveChildNav().select(0);
  }
  showModal() {
    //LAURA: Aquí se debería tomar el id o el correo del usuario para pasarlo al formulario de edición. El parámetro debe llenarse con el correo (olo que quieran) de la línea 14
    let modal = this.modal.create(EditarcuentaPage, { usuario: this.usuario });
    modal.present();
    modal.onDidDismiss(params => {
      if (params) {
        console.log(params);
        let alert = this.alertCtrl.create({
          title: 'Edición exitosa',
          subTitle: 'Tu usuario ha sido actualizado exitosamente',
          buttons: ['Cerrar']
        });
        alert.present();
      }
      //else alert("Ocurrió un error y no se pudieron guardar los cambios. Inténtelo nuevamente");
    });
  }

}
