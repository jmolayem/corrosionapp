# The Amazon S3 TransferManager Sample

This sample demonstrates the Amazon S3 TransferManager found in the AWS Mobile SDK for iOS.

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

1. Build and run the sample app.
