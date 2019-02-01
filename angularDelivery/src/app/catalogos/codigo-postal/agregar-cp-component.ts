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
        if (this.data.codigoPostal) {
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
        if (this.data.codigoPostal > 100) {
            console.log(this.data.codigoPostal);
            this.service.saveCodigoPostal(this.data)
                .subscribe(response => {
                    this.dialogRef.close(response);
                },
                    err => {
                        this.snackBar.open(err.statusText, 'Error', {
                            duration: 2000,
                        });
                    }
                );
        } else {
            this.snackBar.open(' Llenar datos', 'Warning', {
                duration: 2000,
            });
        }
    }

    updateCodigoPostal() {
        if (this.data.codigoPostal > 100) {
            console.log(this.data.codigoPostal);
            this.service.updateCodigoPostal(this.data)
                .subscribe(response => {
                    // PUT is not response
                },
                    err => {
                        if (err.status === 200) {
                            this.dialogRef.close(this.data);
                        } else {
                            this.snackBar.open(err.statusText, 'Error', {
                                duration: 2000,
                            });
                        }
                    }
                );
        }
    }

}


