import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { FormsModule } from '@angular/forms';
import {HttpClientModule} from '@angular/common/http';

import { routing } from './app.routing';
// animations
import {BrowserAnimationsModule} from '@angular/platform-browser/animations';
// Angular Material
import { MaterialModule } from './material';

import { AppComponent } from './app.component';
import { HelloComponent } from './hello.component';
import { PrincipalComponent } from './principal/principal.component';
import { EnvioComponent } from './registro/envio/envio.component';
import { EntregaComponent } from './registro/entrega/entrega.component';
import { LoginComponent } from './login/login.component';
import { AuthGuard } from './_guards/auth.guards';
import { MenuComponent, AboutComponent } from './templates/menu/menu.component';
import { EnviosService } from './service/envios.service';
import { ShowErrorsComponent } from './show-errors/show-errors.component';
import { AuthService } from './service/auth.service';
import { RegisterComponent } from './register/register.component';
import { CodigoPostalComponent } from './catalogos/codigo-postal/codigo-postal.component';
import { AgregarDialogComponent } from './catalogos/codigo-postal/agregar-cp-component';
import { CatalogosService } from './service/catalogos.service';
import { EnvioConfirmComponent } from './registro/envio/envio-confirm/envio-confirm.component';
// Import ngx-barcode module
import { NgxBarcodeModule } from 'ngx-barcode';
import { BarecodeScannerLivestreamModule } from 'ngx-barcode-scanner';
import { EstatusComponent } from './catalogos/estatus/estatus.component';
import { EstatusDialogComponent } from './catalogos/estatus/estatus-dialog/estatus-dialog.component';
 import { DialogComponent } from './dialog/dialog.component';
import { PerfilComponent } from './catalogos/perfil/perfil.component';
import { PerfilDialogComponent } from './catalogos/perfil/perfil-dialog/perfil-dialog.component';
import { RecepcionService } from './service/recepcion.service';


@NgModule({
   imports: [
      BrowserModule,
      FormsModule,
      routing,
      HttpClientModule,
      BrowserAnimationsModule,
      MaterialModule,
      NgxBarcodeModule,
      BarecodeScannerLivestreamModule
   ],
   declarations: [
      AppComponent,
      HelloComponent,
      PrincipalComponent,
      EnvioComponent,
      EnvioConfirmComponent,
      LoginComponent,
      EntregaComponent,
      MenuComponent,
      AboutComponent,
      ShowErrorsComponent,
      RegisterComponent,
      CodigoPostalComponent,
      AgregarDialogComponent,
      EstatusComponent,
      EstatusDialogComponent
      , PerfilComponent
      , PerfilDialogComponent
   ],
   entryComponents: [
      EnvioConfirmComponent,
      EstatusDialogComponent
      , PerfilDialogComponent
   ],
   providers: [
      AuthService,
      AuthGuard,
      EnviosService,
      CatalogosService,
      RecepcionService
   ],
   bootstrap: [
      AppComponent
   ]
})
export class AppModule { }
