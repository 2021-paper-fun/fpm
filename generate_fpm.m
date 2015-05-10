%% We're going to generate obliquely illuminated images of an object and sample them at 20 times loss of resolution
%% Images chosen are cameraman.tif for intensity and westconcordorthophoto.png from imdata

% First we load constants
system_constants;

% We generate the simulated object
phase_image = (pi/256.0).*phase_image;   % normalize phase image to [0, pi] to prevent loss of information in euler's decomposition of exponent
object = intensity_image.*exp(j*phase_image);

%% Illuminate the object at different angles, save images formed
%% we choose the origin to be the center of the image, for ease of calculation of the illumination wavevector
%% The light source is assumed to be an LED matrix centered at origin - the origin being at the center of an LED

