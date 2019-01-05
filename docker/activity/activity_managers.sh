ssh manager01.dq.gg -t docker run -d --restart=always --name activity0 --cpuset-cpus 0 --cpus 0.01 davequick/image:activity
ssh manager01.dq.gg -t docker run -d --restart=always --name activity1 --cpuset-cpus 1 --cpus 0.01 davequick/image:activity
ssh manager01.dq.gg -t docker run -d --restart=always --name activity2 --cpuset-cpus 2 --cpus 0.01 davequick/image:activity
ssh manager01.dq.gg -t docker run -d --restart=always --name activity3 --cpuset-cpus 3 --cpus 0.01 davequick/image:activity
ssh manager01.dq.gg -t docker run -d --restart=always --name activity4 --cpuset-cpus 4 --cpus 0.01 davequick/image:activity
ssh manager01.dq.gg -t docker run -d --restart=always --name activity5 --cpuset-cpus 5 --cpus 0.01 davequick/image:activity
ssh manager01.dq.gg -t docker run -d --restart=always --name activity6 --cpuset-cpus 6 --cpus 0.01 davequick/image:activity
ssh manager01.dq.gg -t docker run -d --restart=always --name activity7 --cpuset-cpus 6 --cpus 0.01 davequick/image:activity

ssh manager02.dq.gg -t docker run -d --restart=always --name activity0 --cpuset-cpus 0 --cpus 0.01 davequick/image:activity
ssh manager02.dq.gg -t docker run -d --restart=always --name activity1 --cpuset-cpus 1 --cpus 0.01 davequick/image:activity
ssh manager02.dq.gg -t docker run -d --restart=always --name activity2 --cpuset-cpus 2 --cpus 0.01 davequick/image:activity
ssh manager02.dq.gg -t docker run -d --restart=always --name activity3 --cpuset-cpus 3 --cpus 0.01 davequick/image:activity
ssh manager02.dq.gg -t docker run -d --restart=always --name activity4 --cpuset-cpus 4 --cpus 0.01 davequick/image:activity
ssh manager02.dq.gg -t docker run -d --restart=always --name activity5 --cpuset-cpus 5 --cpus 0.01 davequick/image:activity
ssh manager02.dq.gg -t docker run -d --restart=always --name activity6 --cpuset-cpus 6 --cpus 0.01 davequick/image:activity
ssh manager02.dq.gg -t docker run -d --restart=always --name activity7 --cpuset-cpus 6 --cpus 0.01 davequick/image:activity

ssh manager03.dq.gg -t docker run -d --restart=always --name activity0 --cpuset-cpus 0 --cpus 0.01 davequick/image:activity
ssh manager03.dq.gg -t docker run -d --restart=always --name activity1 --cpuset-cpus 1 --cpus 0.01 davequick/image:activity
ssh manager03.dq.gg -t docker run -d --restart=always --name activity2 --cpuset-cpus 2 --cpus 0.01 davequick/image:activity
ssh manager03.dq.gg -t docker run -d --restart=always --name activity3 --cpuset-cpus 3 --cpus 0.01 davequick/image:activity
ssh manager03.dq.gg -t docker run -d --restart=always --name activity4 --cpuset-cpus 4 --cpus 0.01 davequick/image:activity
ssh manager03.dq.gg -t docker run -d --restart=always --name activity5 --cpuset-cpus 5 --cpus 0.01 davequick/image:activity
ssh manager03.dq.gg -t docker run -d --restart=always --name activity6 --cpuset-cpus 6 --cpus 0.01 davequick/image:activity
ssh manager03.dq.gg -t docker run -d --restart=always --name activity7 --cpuset-cpus 6 --cpus 0.01 davequick/image:activity

ssh manager03.dq.gg -t docker run -d --restart=always --name activity7 --cpuset-cpus 6 --cpus 0.01 davequick/image:activity
