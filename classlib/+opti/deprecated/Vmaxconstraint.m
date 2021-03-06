function [ c, ceq ] = Vmaxconstraint( x, seqmaxV, potseq)
%VMAXCONSTRAINT 
%subjects the minimization to the constraints defined in NONLCON. The 
%               function NONLCON accepts X and returns the vectors C and Ceq, 
%               representing the nonlinear inequalities and equalities respectively. 
%               KTRLINK minimizes FUN such that C(X) <= 0 and Ceq(X) = 0. 
%               (Set LB = [] and/or UB = [] if no bounds exist.)



[~, seqVraw, seqent] = opti.seq_pots(x, potseq);

c = (seqVraw + seqent) - seqmaxV; % TODO: should be continuous? cant this be expressed as linear constraint?

if (0 && c>0)
    dprintf('quadratic constraint violated!');
end

ceq = 0;

end

