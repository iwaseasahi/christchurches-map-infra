resource "aws_codedeploy_app" "main" {
  compute_platform = "ECS"
  name             = "AppECS-christchurches-map-cluster-cc-map-service-bg-deploy"
}
