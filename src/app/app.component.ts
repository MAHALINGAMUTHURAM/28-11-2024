import { Component } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { Item } from './item';
import { Order } from './order';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

@Component({
  selector: 'app-root',
  imports: [RouterOutlet,CommonModule,FormsModule],
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})
export class AppComponent {
  title = 'Item Order';
  itemId:any;
  itemName:any;
  price:any;
  quantity:any;

  order: Order ={
    orderId:0,
    orderDetails:' ',
  };
  saveorder()
  {
    console.log(this.order);
  }
  
  saveitem()
  {
    let itemobj={
      "itemId":this.itemId,
      "itemName":this.itemName,
      "price":this.price,
      "quantity":this.quantity,
    };
    console.log(itemobj);
    this.item.push(itemobj);
  }

  item:Item[]=[
    {
      itemId:1,
      itemName:'coffee',
      price:20,
      quantity:10
    },

    {
      itemId:2,
      itemName:'tea',
      price:15,
      quantity:5
    }
  ]
}
