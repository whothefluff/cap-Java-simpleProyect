namespace simple;

using { PurchaseOrders as simpleEntity } from '../db/data-model';

@path: 'PurchaseOrders'
service PurchaseOrders {
 
  entity Headers as projection on simpleEntity;

}