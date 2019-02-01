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



@NgModule({
  imports: [
    BrowserModule,
    FormsModule,
    routing,
    // HttpModule,
    HttpClientModule,
    BrowserAnimationsModule,
    MaterialModule,
    ],
  declarations: [
    AppComponent,
    HelloComponent,
    PrincipalComponent,
    EnvioComponent,
    LoginComponent,
    EntregaComponent,
    MenuComponent,
    AboutComponent,
    ShowErrorsComponent,
    RegisterComponent,
    CodigoPostalComponent,
    AgregarDialogComponent,
    ],
    entryComponents: [],
  providers: [AuthService, AuthGuard, EnviosService, CatalogosService ],
  bootstrap: [AppComponent]
})
export class AppModule { }
