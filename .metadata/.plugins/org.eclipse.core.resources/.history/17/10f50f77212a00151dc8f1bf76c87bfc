virtual public class ChildCls {
   integer numberofreleases_child;
    string model_no;
    public ChildCls()
    {
        ParentCls a= new ParentCls();
        numberofreleases_child=5000;
        model_no='r108';
    }
    
    public void validationforChild(integer x,string b,string p,integer l)
    {
         ParentCls a= new ParentCls();
        a.validate(p, l);
         this.numberofreleases_child=x;
         this.model_no=b;
        system.debug('Number of Releases in ChildCls :'+this.numberofreleases_child+'\nModel number is'+ this.model_no);
    }

}