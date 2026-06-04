terraform init

terraform plan

terraform apply


// if you change the bucket name, you need to reconfigure the backend

terraform init -reconfigure

add var via export

export TF_VAR_bucket_name="my-new-bucket-name"

terraform apply -destroy -target="aws.instance.example"