//14. Get predictions
    MATCH (s)-[:PREDICTED_TRANSFER_TO]->(t)
RETURN s, t;