import { Component, OnInit, Input } from '@angular/core';
import { AuthService } from '../../service/auth.service';


@Component({
  selector: 'app-menu',
  templateUrl: './menu.component.html',
  styleUrls: ['./menu.component.css']
})
export class MenuComponent implements OnInit {

  constructor(public _auth: AuthService) {
    //console.debug('constructor');
  }

  ngOnInit() {
  }
}

@Component({
  selector: 'app-about',
  template: '<h2>About</h2>'
})
export class AboutComponent implements OnInit {

  constructor() {
   // console.debug('constructor');
  }

  ngOnInit() {
  }

}