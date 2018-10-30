import { BrowserModule } from '@angular/platform-browser';
import { ErrorHandler, NgModule } from '@angular/core';
import { IonicApp, IonicErrorHandler, IonicModule } from 'ionic-angular';
import { SplashScreen } from '@ionic-native/splash-screen';
import { StatusBar } from '@ionic-native/status-bar';

import { MyApp } from './app.component';
import { HomePage } from '../pages/home/home';
import { IntroPage } from '../pages/intro/intro';
import { RegistroPage } from '../pages/registro/registro';
import { RecordarcontrasenaPage } from '../pages/recordarcontrasena/recordarcontrasena';
import { HorariosPage } from '../pages/horarios/horarios';
import { TipsPage } from '../pages/tips/tips';
import { CuentaPage } from '../pages/cuenta/cuenta';
import { EditarcuentaPage } from '../pages/editarcuenta/editarcuenta';
import { TabsPage } from '../pages/tabs/tabs';
import { AuthServiceProvider } from '../providers/auth-service/auth-service';
import { InAppBrowser } from '@ionic-native/in-app-browser';

@NgModule({
  declarations: [
    MyApp,
    HomePage,
    IntroPage,
    RegistroPage,
    RecordarcontrasenaPage,
    HorariosPage,
    TipsPage,
    CuentaPage,
    EditarcuentaPage,
    TabsPage
  ],
  imports: [
    BrowserModule,
    IonicModule.forRoot(MyApp, {
      backButtonText: 'Atrás',
      iconMode: 'ios',
      modalEnter: 'modal-slide-in',
      modalLeave: 'modal-slide-out',
      tabsPlacement: 'bottom',
      pageTransition: 'ios-transition'
    }
  )],
  bootstrap: [IonicApp],
  entryComponents: [
    MyApp,
    HomePage,
    IntroPage,
    RegistroPage,
    RecordarcontrasenaPage,
    HorariosPage,
    TipsPage,
    CuentaPage,
    EditarcuentaPage,
    TabsPage
  ],
  providers: [
    StatusBar,
    SplashScreen,
    {provide: ErrorHandler, useClass: IonicErrorHandler},
    AuthServiceProvider,
    InAppBrowser
  ]
})
export class AppModule {}
