import { Routes, RouterModule } from '@angular/router';

import { PrincipalComponent } from './principal/principal.component';
import { EnvioComponent } from './registro/envio/envio.component';
import { EntregaComponent } from './registro/entrega/entrega.component';
import { AboutComponent } from './templates/menu/menu.component';
// import { UserService } from './service/user.service';
import { LoginComponent } from './login/login.component';
import { AuthGuard } from './_guards/auth.guards';
import { RegisterComponent } from './register/register.component';
import { CodigoPostalComponent } from './catalogos/codigo-postal/codigo-postal.component';
import { AgregarDialogComponent } from './catalogos/codigo-postal/agregar-cp-component';


const appRoutes: Routes = [
  { path: '', component: PrincipalComponent, canActivate: [AuthGuard] },
  { path: 'login', component: LoginComponent },
  { path: 'register', component: RegisterComponent },
  { path: 'envio', component: EnvioComponent, canActivate: [AuthGuard] },
  { path: 'entrega', component: EntregaComponent, canActivate: [AuthGuard] },
  { path: 'codigoPostal', component: CodigoPostalComponent, canActivate: [AuthGuard] },
  { path: 'agregarCodigoPostal', component: AgregarDialogComponent, canActivate: [AuthGuard] },
  { path: 'about', component: AboutComponent, canActivate: [AuthGuard] },
  // otherwise redirect to home
  { path: '**', redirectTo: '' }
];

export const routing = RouterModule.forRoot(appRoutes);
