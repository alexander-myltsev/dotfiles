export CUDA_ROOT=/opt/cuda
export JAVA_HOME=/usr/lib/jvm/java-6-openjdk
export SCALA_HOME=/opt/scala
export DELITE_HOME=/home/alex/dsls/Delite
export NVOPENCC_HOME=/home/alex/kernelgen/nvopencc/open64/src/targia3264_nvisa_rel
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${CUDA_ROOT}/lib64:${CUDA_ROOT}/lib:/usr/lib/nvidia-current:/usr/lib32/nvidia-current:${NVOPENCC_HOME}/lib
export IJIDEA_HOME=/home/alex/idea-IC-129.713
export P4MERGE_HOME=/home/alex/p4v-2013.2.661179
export PATH=${CUDA_ROOT}/bin:${SCALA_HOME}/bin:${DELITE_HOME}/scripts:~/bin:${PATH}:${NVOPENCC_HOME}/bin:${IJIDEA_HOME}/bin:${P4MERGE_HOME}/bin

alias emacs='emacs -mm'
alias rsync-pb2='rsync -avhz --delete --exclude=.IdeaIC11 --exclude=.idea --exclude=.idea_modules --exclude=*.class --exclude=target/ /host/Projects/parboiled2/ cs-msu-host:~/parboiled2/'
