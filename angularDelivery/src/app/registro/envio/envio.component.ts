import { Component, OnInit, ViewChild } from '@angular/core';
import { Envio, Source, TipoEnvio, TipoServicio, CodigoPostal } from '../../dto/envios';
import { EnviosService } from 'src/app/service/envios.service';
import { MatDialog, MatSnackBar } from '@angular/material';
import { EnvioConfirmComponent } from './envio-confirm/envio-confirm.component';
import { PrintingServiceService } from 'src/app/service/PrintingService.service';
import { CatalogosService } from 'src/app/service/catalogos.service';

@Component({
  selector: 'app-envio',
  templateUrl: './envio.component.html',
  styleUrls: ['./envio.component.css']
})
export class EnvioComponent implements OnInit {

  env = {};
  envio: Envio = {};
  public remitente: Source = {};
  consignatario: Source = {};
  tipoEnvio: TipoEnvio = {};
  tipoServicio: TipoServicio = {};
  guia: string;
  message: string;
  isSuccess = false;
  listZip?: CodigoPostal[];
  isSobre = false;

  constructor(private service: EnviosService
    , private catalogoservice: CatalogosService
    , private dialog: MatDialog
    , private snackBar: MatSnackBar
    , private printingService: PrintingServiceService) { }

  ngOnInit() {
    this.catalogoservice.listZip()
      .subscribe((list: CodigoPostal[]) => {
        this.listZip = list;
      }, err => {
        this.snackBar.open('No hay código postal', 'Error', { duration: 2000, });
      });
  }

  salvarEnvio() {
    console.log('salvarEnvio');
    this.envio.remitente = this.remitente;
    this.envio.consignatario = this.consignatario;
    this.envio.tipo_envio = this.tipoEnvio;
    this.envio.tipo_servicio = this.tipoServicio;
    const guia = this.service.saveEnvio(this.envio)
      .subscribe(res => {
        this.isSuccess = true;
        this.openDialog(res.guia_sq_id, this.consignatario.nombre, this.envio);
      },
        error => {
          // this.message = error.statusText;
          this.isSuccess = false;
          this.snackBar.open('No se pudo completar la transacción', 'Error', { duration: 2000, });
        });
  }

  openDialog( folio, nombre, envio ) {
    const dialogRef = this.dialog.open(EnvioConfirmComponent, {
      width: '250px',
      data: { folio: folio, name: nombre, envio }
    });

    dialogRef.afterClosed().subscribe(result => {
      console.log('The dialog was closed');
      // this.folio = result;
    });
  }

  getRemitenteCodigoPostal() {
    this.catalogoservice.getZipById(this.remitente.codigo_postal)
      .subscribe(cpostal => {
        this.remitente.codigo_postal = cpostal.codigo_postal;
        this.remitente.ciudad = cpostal.ciudad;
        this.remitente.deleg_municipio = cpostal.deleg_municipio;
        this.remitente.estado = cpostal.estado;
        this.remitente.pais = cpostal.pais;
      }, err => {
        this.snackBar.open('No hay ese código postal', 'Error', { duration: 2000, });
      });
    const otra = this.remitente.ciudad;
  }

  /**
   * get Target zip data by Id
   */
  getConsignatarioCodigoPostal() {
    this.catalogoservice.getZipById(this.consignatario.codigo_postal)
      .subscribe(cpostal => {
        this.consignatario.codigo_postal = cpostal.codigo_postal;
        this.consignatario.ciudad = cpostal.ciudad;
        this.consignatario.deleg_municipio = cpostal.deleg_municipio;
        this.consignatario.estado = cpostal.estado;
        this.consignatario.pais = cpostal.pais;
      }, err => {
        this.snackBar.open('No hay ese código postal', 'Error', { duration: 2000, });
      });
  }

  /**
   * get list of Zip data
   */
  listCodigoPostal() {
    this.catalogoservice.listZip()
      .subscribe((list: CodigoPostal[]) => {
        this.listZip = list;
      }, err => {
        this.snackBar.open('No hay código postal', 'Error', { duration: 2000, });
      });
  }

  /**
   * Select envelop or Package and if is envelop only is one
   */
  selectType() {
    if (this.tipoEnvio.id === 1) {
      this.isSobre = true;
      this.envio.peso = 1.0;
      this.envio.alto = 0.0;
      this.envio.ancho = 0.0;
      this.envio.largo = 0.0;
    } else {
      this.isSobre = false;
    }
  }
}
