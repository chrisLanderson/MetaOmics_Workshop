curl_or_wget=$(if hash curl 2>/dev/null; then echo "curl -sO"; elif hash wget 2>/dev/null; then echo "wget –q"; fi);
if [ -z "$curl_or_wget" ]; then
        echo "Neither curl nor wget found. Cannot use http method." >&2
        exit 1
fi
$curl_or_wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
$curl_or_wget https://raw.githubusercontent.com/chrisLanderson/MetaOmics_Workshop/master/omics_env_linux.yml
$curl_or_wget https://raw.githubusercontent.com/chrisLanderson/MetaOmics_Workshop/master/qiime2_env_linux.yml
bash Miniconda3-latest-Linux-x86_64.sh -b -f -p miniconda3
miniconda3/bin/conda env create -n omics-env -f omics_env_linux.yml
miniconda3/bin/conda env create -n qiime2-env -f qiime2_env_linux.yml
rm Miniconda3-latest-MacOSX-x86_64.sh
