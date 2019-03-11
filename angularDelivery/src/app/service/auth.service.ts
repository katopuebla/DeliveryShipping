import { Injectable } from '@angular/core';
import { Router } from '@angular/router';
import { HttpClient } from '@angular/common/http';
import { UtilsService } from './utils.service';

@Injectable({
  providedIn: 'root'
})
export class AuthService {

  private url = this.utils.getUrl() + '/rest/delivery/login.php';

  constructor(private _router: Router, private http: HttpClient, private utils: UtilsService) { }

  isLogin() {
    // console.log('isLogin ' + !!sessionStorage.getItem('currentUser'))
    return !!sessionStorage.getItem('currentUser');
  }

  logout() {
    sessionStorage.removeItem('currentUser');
    this._router.navigate(['/login']);
  }

  loginUser(user) {
    user.system = 'delivery';
    console.log(user);
    const resp = this.http.post<any>(this.url, user);
    return resp;
  }

  registerUser(user) {
    user.system = 'delivery';
    const resp = this.http.post<any>(this.url + '?register', user);
    return resp;
  }

}
