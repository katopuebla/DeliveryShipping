/* tslint:disable:no-unused-variable */

import { TestBed, async, inject } from '@angular/core/testing';
import { PrintingServiceService } from './PrintingService.service';

describe('Service: PrintingService', () => {
  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [PrintingServiceService]
    });
  });

  it('should ...', inject([PrintingServiceService], (service: PrintingServiceService) => {
    expect(service).toBeTruthy();
  }));
});
