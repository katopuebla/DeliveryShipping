import { Component, OnInit, Input, Output, EventEmitter } from '@angular/core';
import { AuthService } from '../../service/auth.service';


@Component({
  selector: 'app-menu',
  templateUrl: './menu.component.html',
  styleUrls: ['./menu.component.css']
})
export class MenuComponent implements OnInit {

  @Output() public sidenavToggle = new EventEmitter();

  constructor(public _auth: AuthService) {
    // console.debug('constructor');
  }

  ngOnInit() {
  }
}
