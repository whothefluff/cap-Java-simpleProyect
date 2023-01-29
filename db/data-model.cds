using {
  cuid,
  managed,
  sap.common as SAP
} from '@sap/cds/common';

@assert.range
@title: '{i18n>Statuses}'
type Status: String enum {
  notPrepared = '0' @title: '{i18n>StatusNotPrepared}';
  prepared = '1' @title: '{i18n>StatusPrepared}';
}

entity PurchaseOrders: cuid, managed {
  status: Status;
  notes: array of String;
  country: Association to SAP.Countries;
  items: Composition of many PurchaseOrderItems;
}

aspect PurchaseOrderItems {
  key ID: String(4) @assert.format: '^[1-9][0-9]*0$';
  text: String @mandatory;
}