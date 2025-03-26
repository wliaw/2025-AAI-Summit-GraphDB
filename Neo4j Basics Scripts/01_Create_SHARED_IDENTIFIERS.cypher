//01. Create :SHARED_IDENTIFIERS
MATCH (c1:Client)-[:HAS_EMAIL|HAS_PHONE|HAS_SSN]->(n)<-[:HAS_EMAIL|HAS_PHONE|HAS_SSN]-(c2:Client)
WHERE elementId(c1) < elementId(c2)
WITH c1, c2, count(*) AS cnt
MERGE (c1)-[:SHARED_IDENTIFIERS {count: cnt}]->(c2);
