import { Component, OnInit } from '@angular/core';
import { MatDialogRef, MatSnackBar } from '@angular/material';

@Component({
  selector: 'app-dialog',
  templateUrl: './dialog.component.html',
  styleUrls: ['./dialog.component.css']
})
export class DialogComponent implements OnInit {

  data: any;
  isUpdate = false;
  title: string;
  restName: string;
  service: any;
  dialogRef: any;

  constructor(public snackBar: MatSnackBar) { }

  ngOnInit() {
  }

  initDialog(update, titleEntityName, restName, data, service, dialogRef) {
    if (update) {
      this.isUpdate = true;
      this.title = 'Editar ' + titleEntityName;
    } else {
      this.isUpdate = false;
      this.title = 'Agregar ' + titleEntityName;
    }
    this.restName = restName;
    this.data = data;
    this.service = service;
    this.dialogRef = dialogRef;
  }

  /**
*  insertar registro.
*/
  saveEntity(id) {
    if (id) {
      this.service.saveEntity(this.restName, this.data)
        .subscribe(response => {
          this.dialogRef.close(response);
        },
          err => {
            this.snackBar.open(err.statusText, 'Error', { duration: 2000, });
          }
        );
    } else {
      this.snackBar.open(' Llenar datos', 'Warning', {
        duration: 2000,
      });
    }
  }

  updateEntity() {
    if (this.data.estatus_id) {
      this.service.updateEntity(this.restName, this.data)
        .subscribe(data => {
          console.log('PUT Request is successful ', data);
          this.dialogRef.close(this.data);
        },
          err => {
            this.snackBar.open(err.statusText, 'Error', { duration: 2000, });
          }
        );
    }
  }

}
