import { ComponentFixture, TestBed } from '@angular/core/testing';

import { Areachart2Component } from './areachart2.component';

describe('Areachart2Component', () => {
  let component: Areachart2Component;
  let fixture: ComponentFixture<Areachart2Component>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ Areachart2Component ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(Areachart2Component);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
