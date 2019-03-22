import { Injectable } from '@angular/core';
import { Envio, Sources } from '../dto/envios';
import { HttpClient } from '@angular/common/http';
import { UtilsService } from './utils.service';

@Injectable()
export class EnviosService {

  url = this.utils.getUrl() + '/rest/delivery/envio.php';
  constructor(private http: HttpClient, private utils: UtilsService) { }

  getListGuia() {
    return null; // this.envios;
  }

  saveEnvio(entity: Envio) {
    console.log('saveEnvio service');
    /*
    if (entity.remitente.nombre && !entity.remitente.id) {
      this.saveOrigin(entity.remitente)
        .subscribe(res => {
          entity.remitente = res;
        }, error => {
          console.log(error);
        }
        );
    }

    if (entity.consignatario.nombre && !entity.consignatario.id) {
      this.saveTarget(entity.consignatario)
        .subscribe(res => {
          entity.consignatario = res;
        }, error => {
          console.log(error);
        }
        );
    }*/

    if (entity.remitente.nombre
      && entity.consignatario.nombre) {
      console.log(entity);
      return this.http.post<any>(this.url + '?saveEnvio', entity);
    }
  }

  saveOrigin(entity: Sources): any {
    return this.http.post<any>(this.url + '?remitente', entity);
  }

  saveTarget(entity: Sources): any {
    return this.http.post<any>(this.url + '?consignatario', entity);
  }

  recordEnvio(record) {
    /*console.log('save');
    console.log('delGuia ' + record.guia);
    console.log('recibe ' + record.recibe);
    if (record.recibe && record.identificacion) {
      const index = this.envios.findIndex(res => res.guia === record.guia);
      console.log('index ' + index);
      if (index > -1) {
        console.log('splice ' + index);
        this.envios.splice(index, 1);
        return true;
      }
    } else {
      return false;
    }*/
  }
  /*
  envios: Envio[] = [
      {
        guia: 1234567890
          ,consignatario: {
           id: 1
           , nombre: 'kato'
           , compania: ''
           , direccion: 'Manuel Gonzalez'
           , telefono: '12-23-445'
         }
      }
      ,{
        guia: 1234567891
        , consignatario: {
          id: 1
          , nombre: 'kato puebla'
          , compania: ''
          , direccion: 'Manuel Torres'
          , telefono: '12-23-445'
        }
      }
      ,{
        guia: 1234567892
        , consignatario: {
          id: 1
          , nombre: 'kato Mexico'
          , compania: ''
          , direccion: 'Tlatelolco'
          , telefono: '12-23-445'
        }
      }
    ];*/

}
