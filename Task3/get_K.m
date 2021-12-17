function [get_K] = get_K(Q,R,dt)
   A = [0 1 0 0;14.9295 0 0 0;0 0 0 1;-14.3295 0  0 0];
   B = [0;-0.1335;0;9.922];
   C = [1 0 0 0];
   sys = ss(A,B,C);
   dis = c2d(sys,dt);
   Ad = dis.a;
   Bd = dis.b;
   K = dlqr(Ad,Bd,Q,R);
   display(K)
endfunction