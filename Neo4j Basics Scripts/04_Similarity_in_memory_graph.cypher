//04. Similarity in-memory graph
MATCH (c:Client)-[:HAS_SSN|HAS_EMAIL|HAS_PHONE]->(id:Email|Phone|SSN)
WHERE c.firstPartyFraudGroup IS NOT NULL
WITH gds.graph.project('similarity', c, id) AS g
RETURN g.graphName, g.nodeCount, g.relationshipCount, g.projectMillis;