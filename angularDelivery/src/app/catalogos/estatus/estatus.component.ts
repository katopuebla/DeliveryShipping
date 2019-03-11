import { Component, OnInit, ViewChild } from '@angular/core';
import { Estatus } from 'src/app/dto/catalogos';
import { MatTableDataSource, MatSort, MatSnackBar, MatDialog } from '@angular/material';
import { CatalogosService } from 'src/app/service/catalogos.service';
import { EstatusDialogComponent } from './estatus-dialog/estatus-dialog.component';

@Component({
  selector: 'app-estatus',
  templateUrl: './estatus.component.html',
  styleUrls: ['./estatus.component.css']
})
export class EstatusComponent implements OnInit {

  displayedColumns: string[] = ['Estatus Id', 'Descripcion', 'Editar', 'Estado'];

  estatus: Estatus;
  dataSource = new MatTableDataSource<Estatus>();

  // @ViewChild(MatPaginator) paginator: MatPaginator;
  @ViewChild(MatSort) sort: MatSort;

  constructor(private service: CatalogosService, public snackBar: MatSnackBar, public dialog: MatDialog) { }

  ngOnInit() {
    this.getList();
  }

  getList() {
    this.service.getEntitylist('estatus')
      .subscribe(response => {
        this.dataSource = new MatTableDataSource(response);
        // this.resultsLength = this.dataSource.data.length;
        // Se asignan template para paginación
        // this.dataSource.paginator = this.paginator;
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

    activeEstado(entity: Estatus) {
      this.service.activeEstado('estatus', entity)
        .subscribe(
          data => {
            this.getList();
          },
          err => {
            this.snackBar.open(err.statusText, 'Error', { duration: 2000, });
          }
        );
    }

    inactiveEstado(entity: Estatus) {
      this.service.inactiveEstado('estatus', entity)
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

  openDialog(entity: Estatus): void {
    const dialogRef = this.dialog.open(EstatusDialogComponent, {
      width: '400px',
      data: entity
    });

    dialogRef.afterClosed().subscribe(result => {
      console.log('The dialog was closed');
      this.getList();
    });
  }

  addDialog(): void {
    const dialogRef = this.dialog.open(EstatusDialogComponent, {
      width: '400px',
      data: {}
    });

    dialogRef.afterClosed().subscribe(result => {
      console.log('The dialog was closed');
      this.getList();
    });
  }
}
