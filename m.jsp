<%
String ff[]=request.getParameterValues("fast food");
String sm[]=request.getParameterValues("smoothies");
String os[]=request.getParameterValues("our special");
String name = request.getParameter("cname");
String number = request.getParameter("num");
String gender=request.getParameter("gen");
int bill = 0;
int discount=0;
for(int i=0;i<ff.length;i++){
    if(ff[i].equals("bg")){
        bill=bill+100;
    }
    else if(ff[i].equals("pz")){
        bill=bill+150;
    }

    else if(ff[i].equals("nd")){
        bill=bill+80;
    }

    else if(ff[i].equals("basket")){
        bill=bill+150;
    }
}
for(int i=0;i<sm.length;i++){
    if(sm[i].equals("berries")){
        bill=bill+150;
    }
    else if(sm[i].equals("chocolate")){
        bill=bill+200;
    }

    else if(sm[i].equals("chia seed")){
        bill=bill+220;
    }

    else if(sm[i].equals("caramel")){
        bill=bill+250;
    }
}
for(int i=0;i<os.length;i++){
    if(os[i].equals("cb")){
        bill=bill+150;
    }
    else if(os[i].equals("paneer")){
        bill=bill+150;
    }

    else if(os[i].equals("dhokla")){
        bill=bill+50;
    }

    else if(os[i].equals("chokha")){
        bill=bill+150;
    }
}
if(gender.equals("male")){
    out.println("Thankyou, Mr."  +name+   "  for visting. Hope you enjoyed your meal.");
}
else{
    out.println("Thankyou, Ms."  +name+   "  for visting. Hope you enjoyed your meal.");
}
out.println("<br/>");
out.println("<br/>");
out.println("Your Bill is Rs:"  +bill+"/-");
out.println("<br/>");
out.println("<br/>");

if(bill>=1000){
    discount=bill-(bill*10/100);
    out.println("We are currenlty giving 10% discount on order above  Rs:1000/- .So, Now your total Bill is  Rs: "+discount+"/-");
}
else
{
    out.println("Add some more items to get a 10% discount on the bill above Rs:1000/-");
    out.println("<br/>");
}
out.println("<br/>");
out.println("<br/>");
out.println("Contact No.:  "+number);
%>