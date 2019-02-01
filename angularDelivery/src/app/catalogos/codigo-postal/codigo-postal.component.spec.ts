import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { CodigoPostalComponent } from './codigo-postal.component';

describe('CodigoPostalComponent', () => {
  let component: CodigoPostalComponent;
  let fixture: ComponentFixture<CodigoPostalComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ CodigoPostalComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(CodigoPostalComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
