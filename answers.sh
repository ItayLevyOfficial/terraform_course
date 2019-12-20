# For terrform to recognize our machine docker provider.
terraform init

terraform plan -out=tf_image_plan
terraform apply tf_image_plan
terraform show
terraform destroy
