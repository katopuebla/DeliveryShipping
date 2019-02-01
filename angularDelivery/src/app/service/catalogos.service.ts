import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { CodigoPostal } from '../dto/envios';
import { UtilsService } from './utils.service';

// const URL = 'http://c1450676.ferozo.com/rest/delivery/codigoPostal.php';
@Injectable()
export class CatalogosService {

  url = this.utils.getUrl() + '/rest/delivery/codigoPostal.php';
  codigPostal: CodigoPostal = {};

  constructor(private http: HttpClient, private utils: UtilsService) {
  }

  getListGuia() {
    return this.http.get<any>(this.url + '?fullData');
  }

  saveCodigoPostal(entity: CodigoPostal) {
    console.log('save service');
   if (entity.codigoPostal) {
        return this.http.post<any>(this.url, entity);
    }
  }

  updateCodigoPostal(entity: CodigoPostal) {
    console.log('update service');
   if (entity.codigoPostal) {
        return this.http.put<any>(this.url, entity);
    }
  }

  activeStatus(entity: CodigoPostal) {
    return this.http.put<any>(this.url + '?active', entity);
  }

  inactiveStatus(entity: CodigoPostal) {
    return this.http.put<any>(this.url + '?inactive', entity);
  }
}
