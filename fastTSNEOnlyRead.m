function mappedX = fastTSNEOnlyRead()

    [mappedX, landmarks, costs] = read_data;   
    landmarks = landmarks + 1;              % correct for Matlab indexing

end

% Reads the result file from the fast t-SNE implementation
function [X, landmarks, costs] = read_data
    h = fopen('result.dat', 'rb');
	n = fread(h, 1, 'integer*4');
	d = fread(h, 1, 'integer*4');
	X = fread(h, n * d, 'double');
    landmarks = fread(h, n, 'integer*4');
    costs = fread(h, n, 'double');      % this vector contains only zeros
    X = reshape(X, [d n])';
	fclose(h);
end
