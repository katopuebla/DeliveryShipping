import { Component, OnInit, OnDestroy } from '@angular/core';
import { EnviosService } from '../../service/envios.service';
import { Envio, EnvioEngrega } from '../../dto/envios';
import { ShowErrorsComponent } from '../../show-errors/show-errors.component';

@Component({
  selector: 'app-entrega',
  templateUrl: './entrega.component.html',
  styleUrls: ['./entrega.component.css']
})
export class EntregaComponent implements OnInit, OnDestroy {

  messages: string;
  messagesError: string;
  isSuccess = false;
  isError = false;

  envio: EnvioEngrega = {};
  envios: Envio[];

  constructor(private _service: EnviosService) { }

  ngOnInit() {
    this.envios = this._service.getListGuia();
  }

   ngOnDestroy(): void {

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