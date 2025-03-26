//07. First-Party Fraud Score
CALL gds.degree.write('similarity',
    {
        nodeLabels: ['*'],
        relationshipTypes: ['SIMILAR_TO'],
        relationshipWeightProperty: 'jaccardScore',
        writeProperty: 'firstPartyFraudScore'
    }
);