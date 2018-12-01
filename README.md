# Ruby based Lambda function

```
zip -r deployment.zip handler.rb
aws lambda update-function-code --function-name ScanMovies --zip-file fileb://./deployment.zip
```
