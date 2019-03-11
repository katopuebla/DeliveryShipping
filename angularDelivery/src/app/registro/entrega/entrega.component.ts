import { Component, OnInit, OnDestroy, ViewChild } from '@angular/core';
import { Envio, EnvioDto } from '../../dto/envios';
import { ShowErrorsComponent } from '../../show-errors/show-errors.component';
import { BarecodeScannerLivestreamComponent } from 'ngx-barcode-scanner';
import { RecepcionService } from 'src/app/service/recepcion.service';

@Component({
  selector: 'app-entrega',
  templateUrl: './entrega.component.html',
  styleUrls: ['./entrega.component.css']
})
export class EntregaComponent implements OnInit, OnDestroy {

  @ViewChild(BarecodeScannerLivestreamComponent)
  barecodeScanner: BarecodeScannerLivestreamComponent;

  barcodeValue;
  isScan = false;

  messages: string;
  messagesError: string;
  isSuccess = false;
  isError = false;

  envio: EnvioDto = {};
  envios: EnvioDto[];

  constructor(private _service: RecepcionService) { }

  ngOnInit() {
    this.getList();
  }

  getList() {
    this._service.getListGuia()
      .subscribe( data => {
        this.envios = data;
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
    this.envio.guia = result.codeResult.code;
}

  saveReceive() {
   /* console.log('saveReceive');
    console.log('saveReceive Envio '+ this.envio.guia);
    if(this._service.save(this.envio)){
        this.messages = 'folio ' + this.envio.guia;
        this.isSuccess = true;
        this.isError = false;
        // inicializar campos
        this.envio = {};
    } else {
      this.messagesError = " Llenar todos los campos";
      this.isError = true;
      this.isSuccess = false;
    }*/
  }

  selected(event) {
   /* var guia = event;
    console.log('changeSelect' + guia);
    this.isSuccess = false;
    this.isError = false;

    if (this.envios) {
      var envio = this.envios.find(x => x.guia == guia);
      console.log('guia ' + guia);
      if (envio) {
        console.log('envio guia ' + envio.guia);
        this.envio.guia = envio.guia;
        this.envio.name = envio.consignatario.nombre;
        this.envio.direction = envio.consignatario.direccion;
        this.envio.recibe = '';
        this.envio.identificacion = null;
      }
    }*/
  }

   onFileChange(event) {
     console.log('onFileChange');
     const file = event.target.files[0];
     //this.subscription = this.qrReader.decode(file)
       // .subscribe(decodedString => console.log(decodedString));
   }
}