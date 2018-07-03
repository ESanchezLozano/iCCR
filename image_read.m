function imgray = image_read( impath )
% imgray = image_read( impath );
%
% given a path, reads the image and normalises it so it returns a
% gray-level image with values being doubles in [0,1]

if nargin == 0
    help image_read;
    return;
end


if size(impath,1) > 1 && size(impath,2) > 1
    im = impath;
else
    im = imread( impath );
end;


% if isa('impath','char')
%     im = imread( impath );
% else
%     im = impath;
% end;

% turn into gray
if size( im, 3 ) >1
    imgray = rgb2gray( im );
else
    imgray = im;
end

% turn into doubles
imgray = double( imgray );

% normalise to [0,1]
if max(max(imgray))>1
    if isa(im, 'uint16')
       imgray = imgray/65535;
    else
       imgray = imgray/255;
    end
end
    
    