annotate simple.PurchaseOrders with @restrict: [
  {
    grant : '*',
    to    : 'PrivilegedUser'
  },
  {
    grant : 'READ',
    to    : 'GuestUser'
  }
];
