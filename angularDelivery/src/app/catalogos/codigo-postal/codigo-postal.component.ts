import { Component, OnInit, ViewChild, Input } from '@angular/core';
import { MatPaginator, MatTableDataSource, MatSort, MatSnackBar, MatDialog } from '@angular/material';
import { CodigoPostal } from 'src/app/dto/envios';
import { CatalogosService } from 'src/app/service/catalogos.service';
import { AgregarDialogComponent } from './agregar-cp-component';

@Component({
  selector: 'app-codigo-postal',
  templateUrl: './codigo-postal.component.html',
  styleUrls: ['./codigo-postal.component.css']
})
export class CodigoPostalComponent implements OnInit {

  @ViewChild('agregarModal') agregarModal: any;
  displayedColumns: string[] = ['Cp', 'Dirección', 'Colonia', 'del/Mpio', 'Ciudad', 'Estado', 'Pais', 'Editar', 'Estatus'];
  resultsLength = 0;

  codigPostal: CodigoPostal = {};
  dataSource = new MatTableDataSource<CodigoPostal>();

  @ViewChild(MatPaginator) paginator: MatPaginator;
  @ViewChild(MatSort) sort: MatSort;

  constructor(private service: CatalogosService, public snackBar: MatSnackBar, public dialog: MatDialog) {
    // Assign the data to the data source for the table to render
  }

  ngOnInit() {
    this.service.listZip()
      .subscribe(response => {
        this.dataSource = new MatTableDataSource(response);
        // Tamaño de registros
        this.resultsLength = this.dataSource.data.length;
        // Se asignan template para paginación
        this.dataSource.paginator = this.paginator;
        this.dataSource.sort = this.sort;
      },
        err => {
          this.snackBar.open(err.statusText, 'Error', {
            duration: 2000,
          });
        }
      );
  }

  getList() {
    this.service.listZip()
      .subscribe(response => {
        this.dataSource = new MatTableDataSource(response);
        this.resultsLength = this.dataSource.data.length;
        // Se asignan template para paginación
        this.dataSource.paginator = this.paginator;
        this.dataSource.sort = this.sort;

      },
        err => {
          this.snackBar.open(err.statusText, 'Error', {
            duration: 2000,
          });
        }
      );
  }

  filtro(value: string) {
    this.dataSource.filter = value.trim().toLowerCase();

    if (this.dataSource.paginator) {
      this.dataSource.paginator.firstPage();
    }
  }

  activeStatus(entity: CodigoPostal) {
    this.service.activeStatus(entity)
      .subscribe(
        data => {
          this.getList();
        },
        err => {
          this.snackBar.open(err.statusText, 'Error', { duration: 2000, });
        }
      );
  }

  inactiveStatus(entity: CodigoPostal) {
    this.service.inactiveStatus(entity)
      .subscribe(
        response => {
          console.log(response);
          this.getList();
        },
        data => {
          this.snackBar.open(data.statusText, 'Error', { duration: 2000, });
        }
      );
  }

  openDialog(entity: CodigoPostal): void {
    const dialogRef = this.dialog.open(AgregarDialogComponent, {
      width: '400px',
      data: entity
    });

    dialogRef.afterClosed().subscribe(result => {
      console.log('The dialog was closed');
      this.getList();
    });
  }

  addDialog(): void {
    const dialogRef = this.dialog.open(AgregarDialogComponent, {
      width: '400px',
      data: {}
    });

    dialogRef.afterClosed().subscribe(result => {
      console.log('The dialog was closed');
      this.getList();
    });
  }

}
