function [ alpha ] = laff_norm2( x )

if ~isvector( x )
    alpha = 'FAILED';
    return
end

% alpha = sqrt( laff_dot( x, x ) );
alpha = norm( x, 2 );

end

