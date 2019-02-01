import { Component, OnInit } from '@angular/core';
import { AuthService } from '../service/auth.service';
import { Router } from '@angular/router';
import { User } from '../dto/user';

@Component({
  selector: 'app-register',
  templateUrl: './register.component.html',
  styleUrls: ['./register.component.css']
})
export class RegisterComponent implements OnInit {

  user: User = {};
  message: string;

  constructor(private _auth: AuthService, private _router: Router) { }

  ngOnInit() {
  }

  register() {
    this._auth.registerUser(this.user)
      .subscribe(response => {
        console.log(response);
        sessionStorage.setItem('currentUser', response);
        this._router.navigate(['/']);
      },
        err => { this.message = err.statusText; }
      );
  }
}
