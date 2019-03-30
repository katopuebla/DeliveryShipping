import { Injectable } from '@angular/core';
import { Envio, Sources, EnvioEngrega } from '../dto/envios';
import { HttpClient } from '@angular/common/http';
import { UtilsService } from './utils.service';

@Injectable()
export class RecepcionService {

  url = this.utils.getUrl() + '/rest/delivery/recepcion.php?userId=' + sessionStorage.getItem('currentUser');
  constructor(private http: HttpClient, private utils: UtilsService) { }

  getListGuia() {
    return this.http.get<any>(this.url + '&estatus_id');
  }

  getConsignee(consigneeId) {
    return this.http.get<any>(this.url + '&dest_sq_id=' + consigneeId);
  }

  saveReceiped(entity: EnvioEngrega) {
    if (entity.recibe
      && entity.identificacion) {
      console.log(entity);
      return this.http.post<any>(this.url , entity);
    } else {
      return null;
    }
  }
}
