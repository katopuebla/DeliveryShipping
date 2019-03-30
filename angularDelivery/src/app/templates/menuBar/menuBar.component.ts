import { Component, OnInit, Output, EventEmitter } from '@angular/core';
import { AuthService } from 'src/app/service/auth.service';

@Component({
  // tslint:disable-next-line:component-selector
  selector: 'app-menuBar',
  templateUrl: './menuBar.component.html',
  styleUrls: ['./menuBar.component.css']
})
export class MenuBarComponent implements OnInit {

  @Output() public sidenavToggle = new EventEmitter();

  constructor(public _auth: AuthService) { }

  ngOnInit() {
  }

  public onToggleSidenav = () => {
    this.sidenavToggle.emit();
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