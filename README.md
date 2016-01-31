# Image Recognition Demo App for Corrosion Diagnoses

This sample demonstrates the Amazon S3 TransferManager found in the AWS Mobile SDK for iOS.

App Description: http://geegeck.strikingly.com/

Download App: https://itunes.apple.com/us/app/geegeck/id1076214902?mt=8&ign-mpt=uo%3D4

## Requirements

* Xcode 7 and later
* iOS 8 and later

## Using the Sample

1. The AWS Mobile SDK for iOS is available through [CocoaPods](http://cocoapods.org). If you have not installed CocoaPods, install CocoaPods:

		sudo gem install cocoapods
		pod setup

1. To install the AWS Mobile SDK for iOS, simply add the following line to your **Podfile**:

		pod 'AWSS3'

	Then run the following command:
	
		pod install

1. Create an Amazon S3 bucket. (For details on creating a bucket in the Amazon S3 console, see [Create a Bucket](http://docs.aws.amazon.com/AmazonS3/latest/gsg/CreatingABucket.html).)

1. In the [Amazon Cognito console](https://console.aws.amazon.com/cognito/), use Amazon Cognito to create a new identity pool. Obtain the `PoolID` constant. Make sure the [role](https://console.aws.amazon.com/iam/home?region=us-east-1#roles) has full permissions for the bucket you created.

1. Open `S3TransferManagerSampleSwift.xcworkspace`.

1. Open `Constants.swift` and update the following lines with the appropriate constants:

        let CognitoRegionType = AWSRegionType.Unknown  // e.g. AWSRegionType.USEast1
        let DefaultServiceRegionType = AWSRegionType.Unknown // e.g. AWSRegionType.USEast1
        let CognitoIdentityPoolId = "YourCognitoIdentityPoolId"
        let S3BucketName = "YourS3BucketName"
        
1. Extract the full URL of the image you uploaded from your bucket. Important: make sure your AWS bucket creditials are set up for public read permissions.

	let fullUrl = "https://s3.amazonaws.com/{your-bucket-name}/" + uploadRequest.key!	
`
1. Incorporate your MetaMind API classifier ID + authentication credentials

        let parameters:[String : AnyObject] = ["classifier_id" : xxxx, "image_url" : fullUrl]
                        
        let credentialData = "xxxx".dataUsingEncoding(NSUTF8StringEncoding)!
        let base64Credentials = credentialData.base64EncodedStringWithOptions([])
                        
        let headers = ["Authorization": "Basic xxxx","Content-Type":"application/x-www-form-urlencoded"]

1. Build and run the sample app.
