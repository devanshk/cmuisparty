## Tech Notes

- Run this with Ruby 2.4.1 for that Rails 5 goodness
- rake db:seed populates the database with all the teams
- This uses fog and carrierwave to store all the images in an S3 bucket. When you're running this locally, go to photo_uploader.rb then uncomment `storage :file` and comment out `storage :fog`. You may also need to set some dummy env variables for the ones referenced in carrierwave.rb (just `export S3_REGION='us-east-1'` and so on)

## Upcoming Ideas:
- Add an awards page
- Make it responsive
