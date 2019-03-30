import { Component, OnInit, OnDestroy, ViewChild } from '@angular/core';
import { EnvioDto, Sources, EnvioEngrega } from '../../dto/envios';
import { ShowErrorsComponent } from '../../show-errors/show-errors.component';
import { BarecodeScannerLivestreamComponent } from 'ngx-barcode-scanner';
import { RecepcionService } from 'src/app/service/recepcion.service';
import { MatSnackBar } from '@angular/material';

@Component({
  selector: 'app-entrega',
  templateUrl: './entrega.component.html',
  styleUrls: ['./entrega.component.css']
})
export class EntregaComponent implements OnInit, OnDestroy {

  @ViewChild(BarecodeScannerLivestreamComponent)
  barecodeScanner: BarecodeScannerLivestreamComponent;

  isSpinner = false;
  barcodeValue;
  isScan = false;

  messages: string;
  messagesError: string;
  isSuccess = false;
  isError = false;

  envioentrega: EnvioEngrega = {};
  envio: EnvioDto = {};
  envios: EnvioDto[];
  consignatario: Sources = {};


  constructor(private _service: RecepcionService
    , private snackBar: MatSnackBar) { }

  ngOnInit() {
    this.getList();
  }

  getList() {
    this.isSpinner = true;
    this._service.getListGuia()
      .subscribe(data => {
        this.isSpinner = false;
        this.envios = data;
      }, err => {
        this.isSpinner = false;
        this.snackBar.open('No se cargó la lista', 'Error', {
          duration: 2000,
        });
      });
  }

  getConsignee(consigneeId) {
    this._service.getConsignee(consigneeId)
      .subscribe(data => {
        this.consignatario = data;
      });
  }
  ngOnDestroy(): void {

  }

  openScanner() {
    this.barecodeScanner.start();
    this.isScan = true;
  }

  closeScanner() {
    this.barecodeScanner.stop();
    this.isScan = false;
  }

  onValueChanges(result) {
    this.barcodeValue = result.codeResult.code;
    this.envioentrega.guia = result.codeResult.code;
  }

  saveReceive() {
    try {
      if (this.envioentrega) {
        this.isSpinner = true;
        this._service.saveReceiped(this.envioentrega).subscribe(
          _resp => {
            this.getList();
            this.isSpinner = false;
            this.snackBar.open('confirmado', 'Info', {
              duration: 2000,
            });
          }, _err => {
            this.isSpinner = false;
            this.snackBar.open('No se guardó el envío', 'Error', {
              duration: 5000,
            });
          });
      }
    } catch (e) {
      this.isSpinner = false;
      this.snackBar.open('No se guardó el envío', 'Error', {
        duration: 5000,
      });
    }
  }

  selected(event) {
    // var entrega_id = event;
    console.log(event);
    this.isSuccess = false;
    this.isError = false;

    this.envio = this.envios.find(data => data.guia_sq_id === event);

    if (this.envio) {
      this._service.getConsignee(this.envio.dest_sql_id)
        .subscribe(data => {
          this.consignatario = data;
        });
    }
  }

  onFileChange(event) {
    console.log('onFileChange');
    const file = event.target.files[0];
    //this.subscription = this.qrReader.decode(file)
    // .subscribe(decodedString => console.log(decodedString));
  }
}