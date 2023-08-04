cd matconvnet-1.0-beta25
run matlab/vl_compilenn;
%vl_compilenn('enableGpu', true)
%vl_compilenn('enableGpu', true, 'cudaRoot', 'C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v10.2')
run matlab/vl_setupnn ;
pwd