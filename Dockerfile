FROM welaika/wordmove
RUN apt-get update \
	&& apt-get install -y locales \
	&& rm -r /var/lib/apt/lists/* \
	&& sed -i 's/^# *\(en_US.UTF-8\)/\1/' /etc/locale.gen \
	&& locale-gen \
	&& echo "export LC_ALL=en_US.UTF-8" >> ~/.bashrc \
	&& echo "export LANG=en_US.UTF-8" >> ~/.bashrc \
	&& echo "export LANGUAGE=en_US.UTF-8" >> ~/.bashrc \
	&& echo "eval \`ssh-agent -s\`" >> ~/.bashrc 
