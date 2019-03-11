import { Injectable } from '@angular/core';
import { UtilsService } from './utils.service';
import { HttpClient, HttpHeaders } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class PrintingServiceService {

  url = this.utils.getUrl() + ':4200/envio/envio-confirm';
  constructor(private http: HttpClient, private utils: UtilsService) { }

  public getXml() {
    const headers = new HttpHeaders({ 'Content-Type': 'text/xml' }).set('Accept', 'text/xml');
    return this.http.get(this.url + '/envio.xml', { headers: headers, responseType: 'text' });
  }
}
