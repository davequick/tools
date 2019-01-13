
docker node update --label-add gg.dq.availability_zone=A manager01.dq.gg
docker node update --label-add gg.dq.availability_zone=B manager02.dq.gg
docker node update --label-add gg.dq.availability_zone=C manager03.dq.gg

docker node update --label-add gg.dq.availability_zone=A node01.dq.gg
docker node update --label-add gg.dq.availability_zone=B node02.dq.gg
docker node update --label-add gg.dq.availability_zone=C node03.dq.gg
docker node update --label-add gg.dq.availability_zone=A node04.dq.gg
docker node update --label-add gg.dq.availability_zone=B node05.dq.gg
docker node update --label-add gg.dq.availability_zone=C node06.dq.gg
docker node update --label-add gg.dq.availability_zone=A node07.dq.gg
docker node update --label-add gg.dq.availability_zone=B node08.dq.gg
docker node update --label-add gg.dq.availability_zone=C node09.dq.gg
docker node update --label-add gg.dq.availability_zone=A node10.dq.gg
docker node update --label-add gg.dq.availability_zone=B node11.dq.gg
docker node update --label-add gg.dq.availability_zone=C node12.dq.gg
docker node update --label-add gg.dq.availability_zone=A node13.dq.gg
docker node update --label-add gg.dq.availability_zone=B node14.dq.gg
docker node update --label-add gg.dq.availability_zone=C node15.dq.gg
docker node update --label-add gg.dq.availability_zone=A node16.dq.gg
docker node update --label-add gg.dq.availability_zone=B node17.dq.gg
docker node update --label-add gg.dq.availability_zone=C node18.dq.gg


docker node update --label-add gg.dq.storage="large" node01.dq.gg
docker node update --label-add gg.dq.storage="large" node02.dq.gg
docker node update --label-add gg.dq.storage="large" node03.dq.gg
docker node update --label-add gg.dq.storage="large" node04.dq.gg
docker node update --label-add gg.dq.storage="large" node05.dq.gg
docker node update --label-add gg.dq.storage="medium" node06.dq.gg
docker node update --label-add gg.dq.storage="medium" node07.dq.gg
docker node update --label-add gg.dq.storage="medium" node08.dq.gg
docker node update --label-add gg.dq.storage="medium" node09.dq.gg
docker node update --label-add gg.dq.storage="medium" node10.dq.gg
docker node update --label-add gg.dq.storage="medium" node11.dq.gg
docker node update --label-add gg.dq.storage="medium" node12.dq.gg
docker node update --label-add gg.dq.storage="medium" node13.dq.gg
docker node update --label-add gg.dq.storage="small" node14.dq.gg
docker node update --label-add gg.dq.storage="small" node15.dq.gg
docker node update --label-add gg.dq.storage="medium" node16.dq.gg
docker node update --label-add gg.dq.storage="tiny" node17.dq.gg
docker node update --label-add gg.dq.storage="medium" node18.dq.gg


ansible -i inventory -f 20 all   -a "docker run -d --restart=always --name activity0 --cpuset-cpus 0 --cpus 0.01 davequick/image:activity"
ansible -i inventory -f 20 all   -a "docker run -d --restart=always --name activity1 --cpuset-cpus 1 --cpus 0.01 davequick/image:activity"
ansible -i inventory -f 20 proc4 -a "docker run -d --restart=always --name activity2 --cpuset-cpus 2 --cpus 0.01 davequick/image:activity"
ansible -i inventory -f 20 proc4 -a "docker run -d --restart=always --name activity3 --cpuset-cpus 3 --cpus 0.01 davequick/image:activity"
ansible -i inventory -f 20 proc8 -a "docker run -d --restart=always --name activity2 --cpuset-cpus 2 --cpus 0.01 davequick/image:activity"
ansible -i inventory -f 20 proc8 -a "docker run -d --restart=always --name activity3 --cpuset-cpus 3 --cpus 0.01 davequick/image:activity"
ansible -i inventory -f 20 proc8 -a "docker run -d --restart=always --name activity4 --cpuset-cpus 4 --cpus 0.01 davequick/image:activity"
ansible -i inventory -f 20 proc8 -a "docker run -d --restart=always --name activity5 --cpuset-cpus 5 --cpus 0.01 davequick/image:activity"
ansible -i inventory -f 20 proc8 -a "docker run -d --restart=always --name activity6 --cpuset-cpus 6 --cpus 0.01 davequick/image:activity"
ansible -i inventory -f 20 proc8 -a "docker run -d --restart=always --name activity7 --cpuset-cpus 7 --cpus 0.01 davequick/image:activity"

ansible -i inventory all -a "docker run -d --restart=always --name healthcheck-local -p '6969:8080' davequick/image:healthcheck"

