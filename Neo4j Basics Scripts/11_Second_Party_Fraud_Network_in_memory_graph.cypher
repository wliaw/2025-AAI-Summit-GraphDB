//11. Second Party Fraud Network in-memory graph
CALL gds.graph.project(
  'SecondPartyFraudNetwork',
  'Client',
  'TRANSFER_TO',
  {relationshipProperties: 'amount'}
);