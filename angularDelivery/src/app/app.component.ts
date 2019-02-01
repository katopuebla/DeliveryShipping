import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  name = 'Angular';

  constructor() {}

  onActivate(component) {
    console.log('app onActive ');
  }
  onDeactivate(component) {
    // you have access to the component instance
    console.log('app onDeactivate');
  }
}
