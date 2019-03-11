import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { CodigoPostal } from '../dto/envios';
import { UtilsService } from './utils.service';

// const URL = 'http://c1450676.ferozo.com/rest/delivery/codigoPostal.php';
@Injectable()
export class CatalogosService {

  urlRoot = this.utils.getUrl() + '/rest/delivery/';
  url = this.utils.getUrl() + '/rest/delivery/codigoPostal.php';
  urlEstatus = this.utils.getUrl() + '/rest/delivery/estatus.php';
  codigPostal: CodigoPostal = {};

  constructor(private http: HttpClient, private utils: UtilsService) {
  }

  listZip() {
    return this.http.get<any>(this.url + '?fullData');
  }

  getZipById(cpostal) {
    return this.http.get<any>(this.url + '?id=' + cpostal);
  }

  saveZip(entity: CodigoPostal) {
    console.log('save service');
    if (entity.codigo_postal) {
      return this.http.post<any>(this.url, entity);
    }
  }

  updateZip(entity: CodigoPostal) {
    console.log('update service');
    if (entity.codigo_postal) {
      return this.http.put<any>(this.url, entity);
    }
  }

  activeStatus(entity: CodigoPostal) {
    return this.http.put<any>(this.url + '?active', entity);
  }

  inactiveStatus(entity: CodigoPostal) {
    return this.http.put<any>(this.url + '?inactive', entity);
  }

  /************  General ************/

  /**
   *
   * @param entityName Name Entity component by rest url
   */
  getEntitylist(entityName) {
    return this.http.get<any>(this.urlRoot + entityName + '.php?fullData');
  }

  /**
   *
   * @param entityName Entity component name by rest url
   * @param id Primary Key
   */
  getEntityById(entityName, id) {
    return this.http.get<any>(this.urlRoot + entityName + '.php?id=' + id);
  }

  saveEntity(entityName, entity) {
      return this.http.post<any>(this.urlRoot + entityName + '.php', entity);
  }

  updateEntity(entityName, entity) {
      return this.http.put<any>(this.urlRoot + entityName + '.php', entity);
  }

  activeEstado(entityName, entity) {
    return this.http.put<any>(this.urlRoot + entityName + '.php' + '?active', entity);
  }

  inactiveEstado(entityName, entity) {
    return this.http.put<any>(this.urlRoot + entityName + '.php' + '?inactive', entity);
  }
}
