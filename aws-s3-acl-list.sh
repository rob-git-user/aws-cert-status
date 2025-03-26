import boto3

# Initialize the S3 client
s3 = boto3.client('s3')

# List all S3 buckets
buckets = s3.list_buckets()

# Iterate through each bucket and print its ACL
for bucket in buckets['Buckets']:
    bucket_name = bucket['Name']
    print(f"Bucket: {bucket_name}")
    
    try:
        acl = s3.get_bucket_acl(Bucket=bucket_name)
        for grant in acl['Grants']:
            print(f"  Grantee: {grant['Grantee']}")
            print(f"  Permission: {grant['Permission']}")
    except Exception as e:
        print(f"  Error retrieving ACL: {e}")
