% function [exectime, data] = drone_code(seg,data)
% 
% switch seg
%   case 1
%     exectime = 0.00000025; % WE SHOULD SET THIS PROPERLY
%   case 2
%     exectime = 0;
%     msg = ttGetMsg(1);
%     if ~isempty(msg)
%       ttAnalogOut(1,msg.data);
%       %exectime = exectime + 0.0025;
%     end  
%   case 3
%     exectime = -1;
% end
function [exectime,data] = drone_code(seg,data)
    switch seg,
    case 1,
        msg.data=ttGetMsg(1);
        if ~isempty(msg.data)
            ttAnalogOut(1,msg.data)
        end
        exectime = 0.0000001; % Delay on the system
    case 2,
        exectime = -1;
    end


