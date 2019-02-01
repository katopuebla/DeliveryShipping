import { Component, OnInit, ViewChild } from '@angular/core';
import { Envio, Source, TipoEnvio, TipoServicio } from '../../dto/envios';
import { EnviosService } from 'src/app/service/envios.service';


@Component({
  selector: 'app-envio',
  templateUrl: './envio.component.html',
  styleUrls: ['./envio.component.css']
})
export class EnvioComponent implements OnInit {

  @ViewChild('myModal') myModal: any;

  env = {};
  envio: Envio = {};
  remitente: Source = {};
  consignatario: Source = {};
  tipoEnvio: TipoEnvio = {};
  tipoServicio: TipoServicio = {};
  guia: string;
  message: string;
  isSuccess = false;

  constructor(private service: EnviosService) { }

  ngOnInit() { }

  salvarEnvio() {
    console.log('salvarEnvio');
    this.envio.remitente = this.remitente;
    this.envio.consignatario = this.consignatario;
    this.envio.tipo_envio = this.tipoEnvio;
    this.envio.tipo_servicio = this.tipoServicio;
    const guia = this.service.saveEnvio(this.envio)
      .subscribe( res => {
        this.guia = res;
        this.isSuccess = true;
        this.myModal.nativeElement.className = 'modal fade show';
      },
      error => {
       //  this.message = error.statusText;
        this.isSuccess = false;
      }
      );
  }
}
