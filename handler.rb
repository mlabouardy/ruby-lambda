require 'aws-sdk'
require 'json'

def lambda_handler(event:, context:)
    dynamodb = Aws::DynamoDB::Client.new(region: ENV['AWS_REGION'])

    resp = dynamodb.scan({
        table_name: ENV['TABLE_NAME'], 
    })
    { statusCode: 200, body: JSON.generate(resp.items) }
end
