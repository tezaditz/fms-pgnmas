<?php
// This file was auto-generated from sdk-root/src/data/personalize-runtime/2018-05-22/api-2.json
return [ 'version' => '2.0', 'metadata' => [ 'apiVersion' => '2018-05-22', 'endpointPrefix' => 'personalize-runtime', 'jsonVersion' => '1.1', 'protocol' => 'rest-json', 'serviceFullName' => 'Amazon Personalize Runtime', 'serviceId' => 'Personalize Runtime', 'signatureVersion' => 'v4', 'signingName' => 'personalize', 'uid' => 'personalize-runtime-2018-05-22', ], 'operations' => [ 'GetPersonalizedRanking' => [ 'name' => 'GetPersonalizedRanking', 'http' => [ 'method' => 'POST', 'requestUri' => '/personalize-ranking', ], 'input' => [ 'shape' => 'GetPersonalizedRankingRequest', ], 'output' => [ 'shape' => 'GetPersonalizedRankingResponse', ], 'errors' => [ [ 'shape' => 'InvalidInputException', ], [ 'shape' => 'ResourceNotFoundException', ], ], 'idempotent' => true, ], 'GetRecommendations' => [ 'name' => 'GetRecommendations', 'http' => [ 'method' => 'POST', 'requestUri' => '/recommendations', ], 'input' => [ 'shape' => 'GetRecommendationsRequest', ], 'output' => [ 'shape' => 'GetRecommendationsResponse', ], 'errors' => [ [ 'shape' => 'InvalidInputException', ], [ 'shape' => 'ResourceNotFoundException', ], ], 'idempotent' => true, ], ], 'shapes' => [ 'Arn' => [ 'type' => 'string', 'max' => 256, 'pattern' => 'arn:([a-z\\d-]+):personalize:.*:.*:.+', ], 'AttributeName' => [ 'type' => 'string', 'max' => 150, 'pattern' => '[A-Za-z\\d_]+', ], 'AttributeValue' => [ 'type' => 'string', 'max' => 1000, 'sensitive' => true, ], 'Context' => [ 'type' => 'map', 'key' => [ 'shape' => 'AttributeName', ], 'value' => [ 'shape' => 'AttributeValue', ], 'max' => 150, ], 'ErrorMessage' => [ 'type' => 'string', ], 'GetPersonalizedRankingRequest' => [ 'type' => 'structure', 'required' => [ 'campaignArn', 'inputList', 'userId', ], 'members' => [ 'campaignArn' => [ 'shape' => 'Arn', ], 'inputList' => [ 'shape' => 'InputList', ], 'userId' => [ 'shape' => 'UserID', ], 'context' => [ 'shape' => 'Context', ], ], ], 'GetPersonalizedRankingResponse' => [ 'type' => 'structure', 'members' => [ 'personalizedRanking' => [ 'shape' => 'ItemList', ], ], ], 'GetRecommendationsRequest' => [ 'type' => 'structure', 'required' => [ 'campaignArn', ], 'members' => [ 'campaignArn' => [ 'shape' => 'Arn', ], 'itemId' => [ 'shape' => 'ItemID', ], 'userId' => [ 'shape' => 'UserID', ], 'numResults' => [ 'shape' => 'NumResults', ], 'context' => [ 'shape' => 'Context', ], ], ], 'GetRecommendationsResponse' => [ 'type' => 'structure', 'members' => [ 'itemList' => [ 'shape' => 'ItemList', ], ], ], 'InputList' => [ 'type' => 'list', 'member' => [ 'shape' => 'ItemID', ], ], 'InvalidInputException' => [ 'type' => 'structure', 'members' => [ 'message' => [ 'shape' => 'ErrorMessage', ], ], 'error' => [ 'httpStatusCode' => 400, ], 'exception' => true, ], 'ItemID' => [ 'type' => 'string', 'max' => 256, ], 'ItemList' => [ 'type' => 'list', 'member' => [ 'shape' => 'PredictedItem', ], ], 'NumResults' => [ 'type' => 'integer', 'min' => 0, ], 'PredictedItem' => [ 'type' => 'structure', 'members' => [ 'itemId' => [ 'shape' => 'ItemID', ], ], ], 'ResourceNotFoundException' => [ 'type' => 'structure', 'members' => [ 'message' => [ 'shape' => 'ErrorMessage', ], ], 'error' => [ 'httpStatusCode' => 404, ], 'exception' => true, ], 'UserID' => [ 'type' => 'string', 'max' => 256, ], ],];
