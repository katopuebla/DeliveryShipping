import { Component, OnInit, Output, EventEmitter } from '@angular/core';
import { AuthService } from 'src/app/service/auth.service';

@Component({
  // tslint:disable-next-line:component-selector
  selector: 'app-menuList',
  templateUrl: './menuList.component.html',
  styleUrls: ['./menuList.component.css']
})
export class MenuListComponent implements OnInit {

  @Output() sidenavClose = new EventEmitter();

constructor(public _auth: AuthService) { }

  ngOnInit() {
  }

  public onSidenavClose = () => {
    this.sidenavClose.emit();
  }

}
