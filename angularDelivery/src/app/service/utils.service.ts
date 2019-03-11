import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class UtilsService {

  constructor() { }

  getUrl() {
    const origin = location.origin;
    console.log(origin);
    let url = 'http://c1450676.ferozo.com';
     if ( origin.lastIndexOf(':4200') > -1 ) {
       url = origin.substring(0, origin.lastIndexOf(':'));
     } else {
      url = url.substring(0, origin.lastIndexOf('prueba'));
     }
    return url;
  }
}
