#@IgnoreInspection BashAddShebang
##

#
#VCAP_APPLICATION='
#{
#   "application_id":"1",
#   "application_name":"app",
#   "application_uris":[
#      "predix-dev"
#   ],
#   "application_version":"1",
#   "host":"0.0.0.0",
#   "instance_id":"1",
#   "instance_index":0,
#   "limits":{
#
#   },
#   "name":"app",
#   "port":8080,
#   "uris":[
#      "predix-dev"
#   ],
#   "version":"1"
#}
#'

VCAP_APPLICATION={"application_id":"1","application_name":"app","application_uris":["predix-dev"],"application_version":"1","host":"0.0.0.0","instance_id":"1","instance_index":0,"limits":{},"name":"app","port":8080,"uris":["predix-dev"],"version":"1"}

#
#VCAP_SERVICES='
#{
#  "predix-cache":[
#    {
#      "credentials":{
#        "host":"predix-cache",
#        "port":6379,
#        "password":"password"
#      },
#      "syslog_drain_url":null,
#      "volume_mounts":[
#
#      ],
#      "label":"predix-cache",
#      "provider":null,
#      "plan":"free",
#      "name":"redis",
#      "tags":[
#        "redis"
#      ]
#    }
#  ],
#  "postgres-2.0":[
#    {
#      "credentials":{
#        "uri":"postgres://postgres:secret88@predix-postgres:5432/postgres?sslmode=disable",
#        "username":"postgres",
#        "password":"secret88",
#        "hostname":"predix-postgres",
#        "port":5432,
#        "database":"postgres",
#        "uuid":"1",
#        "maintenance_window":"",
#        "allocated_storage":10,
#        "encryption_at_rest":false
#      },
#      "syslog_drain_url":null,
#      "volume_mounts":[
#
#      ],
#      "label":"postgres-2.0",
#      "provider":null,
#      "plan":"free",
#      "name":"postgres",
#      "tags":[
#        "database",
#        "postgres",
#        "postgresql"
#      ]
#    }
#  ],
#  "predix-blobstore":[
#    {
#      "credentials":{
#        "url":"https://predix-blobstore",
#        "access_key_id":"ac3",
#        "secret_access_key":"secret88",
#        "bucket_name":"bucket",
#        "host":"predix-blobstore"
#      },
#      "syslog_drain_url":null,
#      "volume_mounts":[
#
#      ],
#      "label":"predix-blobstore",
#      "provider":null,
#      "plan":"Tiered",
#      "name":"blobstore",
#      "tags":[
#        "blobstore",
#        "blob-store",
#        "blob store"
#      ]
#    }
#  ],
#  "user-provided":[
#    {
#      "credentials":{
#        "postgres":{
#
#        },
#        "redis":{
#          "idle_timeout":"4m",
#          "key_expire":"5m",
#          "max_active":10,
#          "max_idle":5,
#          "wait":true
#        },
#        "sysadmin":[
#
#        ]
#      },
#      "syslog_drain_url":"",
#      "volume_mounts":[
#
#      ]
#    }
#  ]
#}
#'
#

VCAP_SERVICES={"predix-cache":[{"credentials":{"host":"predix-cache","port":6379,"password":"password"},"syslog_drain_url":null,"volume_mounts":[],"label":"predix-cache","provider":null,"plan":"free","name":"redis","tags":["redis"]}],"postgres-2.0":[{"credentials":{"uri":"postgres://postgres:secret88@predix-postgres:5432/postgres?sslmode=disable","username":"postgres","password":"secret88","hostname":"predix-postgres","port":5432,"database":"postgres","uuid":"1","maintenance_window":"","allocated_storage":10,"encryption_at_rest":false},"syslog_drain_url":null,"volume_mounts":[],"label":"postgres-2.0","provider":null,"plan":"free","name":"postgres","tags":["database","postgres","postgresql"]}],"predix-blobstore":[{"credentials":{"url":"https://predix-blobstore","access_key_id":"ac3","secret_access_key":"secret88","bucket_name":"bucket","host":"predix-blobstore"},"syslog_drain_url":null,"volume_mounts":[],"label":"predix-blobstore","provider":null,"plan":"Tiered","name":"blobstore","tags":["blobstore","blob-store","blob store"]}],"user-provided":[{"credentials":{"postgres":{},"redis":{"idle_timeout":"4m","key_expire":"5m","max_active":10,"max_idle":5,"wait":true},"sysadmin":[]},"syslog_drain_url":"","volume_mounts":[]}]}

##
#Golang
GOPATH=/work
PATH=/work/bin:/app/bin:/usr/local/go/bin:/app/vendor/R/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

##
#proxy
no_proxy=*.predix-dev,*.predix-cache,*.predix-postgres,*.predix-blobstore,localhost,*.local,127.0.0.1
#

BASE=/work/src/github.build.ge.com/aviation-dss
##
