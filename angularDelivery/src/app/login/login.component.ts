import { Component, OnInit } from '@angular/core';
import { AuthService } from '../service/auth.service';
import { Router } from '@angular/router';
import { User } from '../dto/user';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {

  user: User = {};
  message: string;

  constructor(private _authService: AuthService, private _router: Router) { }

  ngOnInit() {
  }

  validateLogin() {
    this._authService.loginUser(this.user)
      .subscribe(response => {
        console.log(response);
        this.user = response;
        sessionStorage.setItem('currentUser', this.user.userid );
        sessionStorage.setItem('currentUserName', this.user.name );
        this._router.navigate(['/']);
      },
        err => {
          this.message = err.statusText;
          console.log(err);
        }
      );
  }
}
