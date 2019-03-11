import { Component, OnInit, ViewChild } from '@angular/core';
import { Perfil } from 'src/app/dto/catalogos';
import { MatTableDataSource, MatSort, MatSnackBar, MatDialog } from '@angular/material';
import { CatalogosService } from 'src/app/service/catalogos.service';
import { PerfilDialogComponent } from './perfil-dialog/perfil-dialog.component';

@Component({
  selector: 'app-perfil',
  templateUrl: './perfil.component.html',
  styleUrls: ['./perfil.component.css']
})
export class PerfilComponent implements OnInit {

  displayedColumns: string[] = ['Perfil Id', 'Descripcion', 'Sistema', 'Editar'];

  entityName = 'perfil';
  dataSource = new MatTableDataSource<Perfil>();


  // @ViewChild(MatPaginator) paginator: MatPaginator;
  @ViewChild(MatSort) sort: MatSort;

  constructor(private service: CatalogosService, public snackBar: MatSnackBar, public dialog: MatDialog) { }

  ngOnInit() {
    this.getList();
  }

  getList() {
    this.service.getEntitylist(this.entityName)
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

    activeEstado(entity: Perfil) {
      this.service.activeEstado(this.entityName, entity)
        .subscribe(
          data => {
            this.getList();
          },
          err => {
            this.snackBar.open(err.statusText, 'Error', { duration: 2000, });
          }
        );
    }

    inactiveEstado(entity) {
      this.service.inactiveEstado(this.entityName, entity)
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

  openDialog(entity): void {
    const dialogRef = this.dialog.open(PerfilDialogComponent, {
      width: '400px',
      data: entity
    });

    dialogRef.afterClosed().subscribe(result => {
      console.log('The dialog was closed');
      this.getList();
    });
  }

  addDialog(): void {
    const dialogRef = this.dialog.open(PerfilDialogComponent, {
      width: '400px',
      data: {}
    });

    dialogRef.afterClosed().subscribe(result => {
      console.log('The dialog was closed');
      this.getList();
    });
  }
}
