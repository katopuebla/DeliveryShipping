import { Component, Inject } from '@angular/core';
import { MatDialogRef, MAT_DIALOG_DATA } from '@angular/material';
import { PrintingServiceService } from 'src/app/service/PrintingService.service';
import { Envio } from 'src/app/dto/envios';

export interface DialogData {
  folio: string;
  name: string;
  envio: Envio;
}

@Component({
  selector: 'app-envio-confirm',
  templateUrl: './envio-confirm.component.html',
  styleUrls: ['./envio-confirm.component.css']
})
export class EnvioConfirmComponent {

  constructor(public printservice: PrintingServiceService,
    public dialogRef: MatDialogRef<EnvioConfirmComponent>,
    @Inject(MAT_DIALOG_DATA) public data: DialogData) { }

  print(): void {
    this.printGuia();
    this.dialogRef.close();
  }


  printGuia() {
    const divToPrint = document.getElementById('myprinter').innerHTML;
    const newWindow = window.open('', '_blank', 'top=0,left=0,height=auto,width=auto');
    newWindow.document.open();
    newWindow.document.write(`
     <html>
         <head>
           <title>FOLIO DE LA GUIA</title>
           <style>
           @import "~@angular/material/prebuilt-themes/indigo-pink.css";

          .my-bg-primary{
              color: white ;
          background-color: #3f51b5;
          }

          .my-btn-primary{
            color: white ;
            background-color: #3f51b5;
          }
           body {
             -webkit-print-color-adjust: exact;
           }
           </style>
         </head>
     `);
    newWindow.document.write(`
         <body onload="window.print();window.close(); displayResult();">
         ${divToPrint}
     `);
    newWindow.document.write(`
         </body>
       </html>
     `);
    newWindow.document.close();
  }


  /**
  * @deprecated
  */
  private getTagsHtml(tagName: keyof HTMLElementTagNameMap): string {
    const htmlStr: string[] = [];
    const elements = document.getElementsByTagName(tagName);
    for (let idx = 0; idx < elements.length; idx++) {
      htmlStr.push(elements[idx].outerHTML);
    }

    return htmlStr.join('\r\n');
  }
}
