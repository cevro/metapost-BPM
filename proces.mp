vardef proces@#(expr l, co, t) =
    circleit@#(t);
    @#.c = (w*co,-l*h);
    @#.dx = @#.dy;
    drawboxed(@#);

enddef;

vardef document@#(expr l, co, t) =
    boxit@#(t);
    @#.c = (w*co,-l*h);

    @#.dx = .1@#.dy;
    drawboxed(@#);
    draw @#.w -- @#.n;

enddef;





vardef msg( expr f,t,text) =
% TODO kružok
   drawarrow f .. t dashed evenly wp3;
   path s;
   s:= f .. t;

   flabel.top(text,(f+t)/2);
   path p;

   p:= fullcircle.scaled(.05ws);
   fill p.shifted(f) withcolor white;
   draw p.shifted(f).wp2;
   
enddef;

vardef dep(expr f,t) =
   drawarrow f .. t dashed evenly wp3;
enddef;

vardef link(expr f,t) =
   draw f .. t dashed evenly wp3;
enddef;

vardef sipka(expr f,t) =
   drawarrow f .. t wp3;
enddef;

vardef defaultsipka(expr f,t) =
   drawarrow f .. t wp3;
   draw (((f+t)/2)+(.05ws,.05ws))--(((f+t)/2)-(.05ws,.05ws)) wp3;
enddef;



%%%%% Normal start Proces %%%%%

vardef nstart@#(expr l, c)=
    
    draw fullcircle .scaled(.2ws) shifted(w*c,-l*h) wp3;
    

    pair @#.n;
    pair @#.s;
    pair @#.w;
    pair @#.e;
    
    @#.n:=(w*c,-l*h+.1ws);
    @#.s:=(w*c,-l*h-.1ws);
    @#.w:=(w*c-.1ws,-l*h);
    @#.e:=(w*c+.1ws,-l*h);

enddef;

%%%%% Timestep starting Proces %%%%%

vardef timestart@#(expr l, c)=
    
    draw fullcircle .scaled(.2ws) shifted(w*c,-l*h) wp3;
    draw ((.1ws,0)--(0,0)--(0,.1ws)) .shifted(w*c,-l*h) wp3 ;
    
    pair @#.n;
    pair @#.s;
    pair @#.w;
    pair @#.e;
    
    @#.n:=(w*c,-l*h+.1ws);
    @#.s:=(w*c,-l*h-.1ws);
    @#.w:=(w*c-.1ws,-l*h);
    @#.e:=(w*c+.1ws,-l*h);

enddef;

%%%%% Message starting Proces %%%%%

vardef msgstart@#(expr l, c)=


    draw fullcircle.scaled(.2ws).wp3.shifted(w*c,-l*h);
    mail(l,c);

    pair @#.n;
    pair @#.s;
    pair @#.w;
    pair @#.e;
    
    @#.n:=(w*c,-l*h+.1ws);
    @#.s:=(w*c,-l*h-.1ws);
    @#.w:=(w*c-.1ws,-l*h);
    @#.e:=(w*c+.1ws,-l*h);

enddef;


vardef msgend@#(expr l, c)=
  


    draw fullcircle.scaled(.2ws).wp9.shifted(w*c,-l*h);
    mail(l,c);

    pair @#.n;
    pair @#.s;
    pair @#.w;
    pair @#.e;
    
    @#.n:=(w*c,-l*h+.1ws);
    @#.s:=(w*c,-l*h-.1ws);
    @#.w:=(w*c-.1ws,-l*h);
    @#.e:=(w*c+.1ws,-l*h);
 
enddef;


vardef nend@#(expr l, c)=
    
    draw fullcircle .scaled(.2ws) shifted(w*c,-l*h) wp9;
   
    pair @#.n;
    pair @#.s;
    pair @#.w;
    pair @#.e;
    
    @#.n:=(w*c,-l*h+.1ws);
    @#.s:=(w*c,-l*h-.1ws);
    @#.w:=(w*c-.1ws,-l*h);
    @#.e:=(w*c+.1ws,-l*h);

enddef;










vardef mail(expr l, c) = 

    draw ((.06ws,.04ws)--(-.06ws,.04ws)--(-.06ws,-.04ws)--(.06ws,-.04ws)--cycle).shifted(w*c,-l*h).wp3;
    draw ((-.06ws,.04ws)--(.06ws,-.04ws)).shifted(w*c,-l*h).wp3;
    draw ((.06ws,.04ws)--(-.06ws,-.04ws)).shifted(w*c,-l*h).wp3;

enddef






