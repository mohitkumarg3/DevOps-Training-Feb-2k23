module "prometheus" {
  source  = "./modules/prometheus"
 
   prometheus_repo         =  var.prometheus_repo
   prometheus_namespace    =  var.prometheus_namespace
   prometheus_chart        =  var.prometheus_chart
}

resource "null_resource" "test-top" {
  triggers = {
    output = local.timestamp
  }

provisioner "local-exec" {
    when    = create
    command = "rm -f mohit-*.txt && top -b -n 1 > mohit-${local.timestamp}.txt"
  }

 depends_on = [
    module.prometheus
  ]
}
