//06. Stream from Similarity
CALL gds.graph.relationship.write('similarity', 'SIMILAR_TO', 'jaccardScore')