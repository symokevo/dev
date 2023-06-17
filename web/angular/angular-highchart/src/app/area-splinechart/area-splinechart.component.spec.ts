import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AreaSplinechartComponent } from './area-splinechart.component';

describe('AreaSplinechartComponent', () => {
  let component: AreaSplinechartComponent;
  let fixture: ComponentFixture<AreaSplinechartComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ AreaSplinechartComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(AreaSplinechartComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
