import { Component, OnInit, Inject } from '@angular/core';
import { Estatus } from 'src/app/dto/catalogos';
import { MatSnackBar, MatDialogRef, MAT_DIALOG_DATA } from '@angular/material';
import { CatalogosService } from 'src/app/service/catalogos.service';

@Component({
  selector: 'app-estatus-dialog',
  templateUrl: './estatus-dialog.component.html',
  styleUrls: ['./estatus-dialog.component.css']
})
export class EstatusDialogComponent implements OnInit {

  title: string;
  isUpdate = false;
  restName = 'estatus';

  constructor(public snackBar: MatSnackBar, private service: CatalogosService
    , public dialogRef: MatDialogRef<EstatusDialogComponent>,
    @Inject(MAT_DIALOG_DATA) public data: Estatus
  ) { }

  ngOnInit() {
    this.initDialog();
  }

  onCancel(): void {
    this.dialogRef.close();
  }

  initDialog() {
    if (this.data.estatus_id) {
      this.isUpdate = true;
      this.title = 'Editar Estatus';
    } else {
      this.isUpdate = false;
      this.title = 'Agregar Estatus';
    }
  }

  saveEntity() {
    if (this.data.estatus_id) {
      this.data.estado = true;
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
