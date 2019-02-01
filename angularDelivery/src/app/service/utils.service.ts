import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class UtilsService {

  constructor() { }

  getUrl() {
    const origin = location.origin;
    const url = origin.substring(0, origin.lastIndexOf(':'));
    return url;
  }
}
