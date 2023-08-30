version 1.0

task hello {
  input {
    String name
  }

  command {
    echo 'hello ${name}!'
  }

  output {
    File response = stdout()
  }

  runtime {
        docker: "paas-tob-dev-cn-beijing.cr.volces.com/infcplibrary/ubuntu:18.04"
        memory: "1 GB"
        cpu: "1"
        bootDiskSizeGb: 10
        disks: "local-disk 40 SSD"
        preemptible: 1
    }
}

workflow testname {
  call hello
}





