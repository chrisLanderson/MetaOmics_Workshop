curl_or_wget=$(if hash curl 2>/dev/null; then echo "curl -sO"; elif hash wget 2>/dev/null; then echo "wget –q"; fi);
if [ -z "$curl_or_wget" ]; then
        echo "Neither curl nor wget found. Cannot use http method." >&2
        exit 1
fi
$curl_or_wget https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.sh
$curl_or_wget https://raw.githubusercontent.com/chrisLanderson/MetaOmics_Workshop/master/omics_env_mac.yml
$curl_or_wget https://raw.githubusercontent.com/chrisLanderson/MetaOmics_Workshop/master/qiime2_env_mac.yml
bash Miniconda3-latest-MacOSX-x86_64.sh -b -f -p miniconda3
miniconda3/bin/conda env create -n omics-env -f omics_env_mac.yml
miniconda3/bin/conda env create -n qiime2-env -f qiime2_env_mac.yml
source miniconda3/bin/activate omics-env
wget –q https://github.com/mothur/mothur/releases/download/v1.42.0/Mothur.mac_64.OSX-10.13.zip
unzip -oqq Mothur.mac_64.OSX-10.13.zip
mv mothur/* miniconda3/envs/omics-env/bin/
rm -r mothur
rm Miniconda3-latest-MacOSX-x86_64.sh
rm Mothur.mac_64.OSX-10.13.zip
rm -r __MACOSX
