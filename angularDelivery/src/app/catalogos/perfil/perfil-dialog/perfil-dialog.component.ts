import { Component, OnInit, Inject } from '@angular/core';
import { MatSnackBar, MatDialogRef, MAT_DIALOG_DATA } from '@angular/material';
import { CatalogosService } from 'src/app/service/catalogos.service';
import { Perfil } from 'src/app/dto/catalogos';

@Component({
  selector: 'app-perfil-dialog',
  templateUrl: './perfil-dialog.component.html',
  styleUrls: ['./perfil-dialog.component.css']
})
export class PerfilDialogComponent implements OnInit {

  title: string;
  isUpdate = false;
  restName = 'perfil';

  constructor(public snackBar: MatSnackBar, private service: CatalogosService
    , public dialogRef: MatDialogRef<PerfilDialogComponent>,
    @Inject(MAT_DIALOG_DATA) public data: Perfil
  ) { }

  ngOnInit() {
    this.initDialog();
  }

  onCancel(): void {
    this.dialogRef.close();
  }

  initDialog() {
    if (this.data.perfil) {
      this.isUpdate = true;
      this.title = 'Editar Peril';
    } else {
      this.isUpdate = false;
      this.title = 'Agregar Perfil';
    }
  }

  saveEntity() {
    if (this.data.perfil) {
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
    if (this.data.perfil) {
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
