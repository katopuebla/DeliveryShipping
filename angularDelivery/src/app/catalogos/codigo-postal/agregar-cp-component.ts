import { Component, OnInit, Inject } from '@angular/core';
import { MatSnackBar, MatDialogRef, MAT_DIALOG_DATA, MatButtonToggleGroupMultiple } from '@angular/material';
import { CatalogosService } from 'src/app/service/catalogos.service';
import { CodigoPostal } from 'src/app/dto/envios';

@Component({
    selector: 'app-agregar-dialog',
    templateUrl: 'agregar-cp.html',
    styles: ['.mat-card { max-width: 400px; }'],
})
export class AgregarDialogComponent implements OnInit {

    title: string;
    isUpdate = false;

    constructor(public snackBar: MatSnackBar, private service: CatalogosService
        , public dialogRef: MatDialogRef<AgregarDialogComponent>,
        @Inject(MAT_DIALOG_DATA) public data: CodigoPostal) { }

    ngOnInit() {
        if (this.data.codigo_postal) {
            this.isUpdate = true;
            this.title = 'Editar Código Postal';
        } else {
            this.isUpdate = false;
            this.title = 'Agregar Código Postal';
        }
    }

    validarCodigoPostal(event) { }

    onCancel(): void {
        this.dialogRef.close();
    }

    /**
 *  insertar registro.
 */
    saveCodigoPostal() {
        if ( this.data.codigo_postal) {
            console.log(this.data.codigo_postal);
            this.service.saveZip(this.data)
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

    updateCodigoPostal() {
        if (this.data.codigo_postal.length > 0) {
            console.log(this.data.codigo_postal);
            this.service.updateZip(this.data)
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
