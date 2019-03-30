import { Injectable } from '@angular/core';
import { Envio, Sources } from '../dto/envios';
import { HttpClient } from '@angular/common/http';
import { UtilsService } from './utils.service';

@Injectable()
export class EnviosService {

  url = this.utils.getUrl() + '/rest/delivery/envio.php?userId=' + sessionStorage.getItem('currentUser');
  constructor(private http: HttpClient, private utils: UtilsService) { }

  getListGuia() {
    return null; // this.envios;
  }

  saveEnvio(entity: Envio) {
    console.log('saveEnvio service');
    if (entity.remitente.nombre
      && entity.consignatario.nombre) {
      console.log(entity);
      return this.http.post<any>(this.url + '&saveEnvio'
      , entity);
    }
  }

  saveOrigin(entity: Sources): any {
    return this.http.post<any>(this.url + '&remitente', entity);
  }

  saveTarget(entity: Sources): any {
    return this.http.post<any>(this.url + '&consignatario', entity);
  }
}
