function [ alpha ] = laff_dot( x, y )

% Extract the row and column sizes of x and y
[ m_x, n_x ] = size( x );
[ m_y, n_y ] = size( y );

% Make sure x and y are (row or column) vectors of equal length
if ( m_x ~= 1 && n_x ~= 1 ) | ( m_y ~= 1 && n_y ~= 1 )
    alpha = 'FAILED';
    return
end
if ( m_x * n_x ~= m_y * n_y )
    alpha = 'FAILED';
    return
end

alpha = 0;

if ( n_x == 1 )
    if ( n_y == 1 )
        for i = 1:m_x
            alpha = alpha + y( i, 1 ) * x( i, 1 );
        end
    else
        for i = 1:m_x
            alpha = alpha + y( 1, i ) * x( i, 1 );
        end
    end
else
    if ( n_y == 1 )
        for i = 1:n_x
            alpha = alpha + y( i, 1 ) * x( 1, i );
        end
    else
        for i = 1:n_x
            alpha = alpha + y( 1, i ) * x( 1, i );
        end        
    end
end

return
end

