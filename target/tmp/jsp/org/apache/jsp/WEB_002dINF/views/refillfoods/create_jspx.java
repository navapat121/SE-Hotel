package org.apache.jsp.WEB_002dINF.views.refillfoods;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class create_jspx extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(7);
    _jspx_dependants.add("/WEB-INF/tags/form/create.tagx");
    _jspx_dependants.add("/WEB-INF/tags/util/panel.tagx");
    _jspx_dependants.add("/WEB-INF/tags/form/fields/select.tagx");
    _jspx_dependants.add("/WEB-INF/tags/form/fields/reference.tagx");
    _jspx_dependants.add("/WEB-INF/tags/form/fields/input.tagx");
    _jspx_dependants.add("/WEB-INF/tags/form/fields/datetime.tagx");
    _jspx_dependants.add("/WEB-INF/tags/form/dependency.tagx");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<div version=\"2.0\">");
      if (_jspx_meth_form_create_0(_jspx_page_context))
        return;
      if (_jspx_meth_form_dependency_0(_jspx_page_context))
        return;
      out.write("</div>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_form_create_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  form:create
    org.apache.jsp.tag.web.form.create_tagx _jspx_th_form_create_0 = (_jspx_resourceInjector != null) ? _jspx_resourceInjector.createTagHandlerInstance(org.apache.jsp.tag.web.form.create_tagx.class) : new org.apache.jsp.tag.web.form.create_tagx();
    _jspx_th_form_create_0.setJspContext(_jspx_page_context);
    _jspx_th_form_create_0.setZ("Hmkgfo8gfjHM2Oeri37vGRLyhYM=");
    _jspx_th_form_create_0.setRender((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${empty dependencies}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null));
    _jspx_th_form_create_0.setPath("/refillfoods");
    _jspx_th_form_create_0.setModelAttribute("refillfood");
    _jspx_th_form_create_0.setId("fc_system_engineer_hotel_domain_Refillfood");
    _jspx_th_form_create_0.setJspBody(new create_jspxHelper( 0, _jspx_page_context, _jspx_th_form_create_0, null));
    _jspx_th_form_create_0.doTag();
    return false;
  }

  private boolean _jspx_meth_field_select_0(javax.servlet.jsp.tagext.JspTag _jspx_parent, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  field:select
    org.apache.jsp.tag.web.form.fields.select_tagx _jspx_th_field_select_0 = (_jspx_resourceInjector != null) ? _jspx_resourceInjector.createTagHandlerInstance(org.apache.jsp.tag.web.form.fields.select_tagx.class) : new org.apache.jsp.tag.web.form.fields.select_tagx();
    _jspx_th_field_select_0.setJspContext(_jspx_page_context);
    _jspx_th_field_select_0.setParent(_jspx_parent);
    _jspx_th_field_select_0.setZ("o4JgTpO25cUUeMny/E5B/NgNaJY=");
    _jspx_th_field_select_0.setPath("/foods");
    _jspx_th_field_select_0.setItems((java.util.Collection) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${foods}", java.util.Collection.class, (PageContext)_jspx_page_context, null));
    _jspx_th_field_select_0.setItemValue("id");
    _jspx_th_field_select_0.setId("c_system_engineer_hotel_domain_Refillfood_food");
    _jspx_th_field_select_0.setField("food");
    _jspx_th_field_select_0.doTag();
    return false;
  }

  private boolean _jspx_meth_field_input_0(javax.servlet.jsp.tagext.JspTag _jspx_parent, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  field:input
    org.apache.jsp.tag.web.form.fields.input_tagx _jspx_th_field_input_0 = (_jspx_resourceInjector != null) ? _jspx_resourceInjector.createTagHandlerInstance(org.apache.jsp.tag.web.form.fields.input_tagx.class) : new org.apache.jsp.tag.web.form.fields.input_tagx();
    _jspx_th_field_input_0.setJspContext(_jspx_page_context);
    _jspx_th_field_input_0.setParent(_jspx_parent);
    _jspx_th_field_input_0.setZ("59Q7F1MfeEkj2g6/sRVP/iIwXuY=");
    _jspx_th_field_input_0.setRequired(new Boolean(true));
    _jspx_th_field_input_0.setMin("2");
    _jspx_th_field_input_0.setId("c_system_engineer_hotel_domain_Refillfood_refillnumber");
    _jspx_th_field_input_0.setField("refillnumber");
    _jspx_th_field_input_0.doTag();
    return false;
  }

  private boolean _jspx_meth_field_datetime_0(javax.servlet.jsp.tagext.JspTag _jspx_parent, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  field:datetime
    org.apache.jsp.tag.web.form.fields.datetime_tagx _jspx_th_field_datetime_0 = (_jspx_resourceInjector != null) ? _jspx_resourceInjector.createTagHandlerInstance(org.apache.jsp.tag.web.form.fields.datetime_tagx.class) : new org.apache.jsp.tag.web.form.fields.datetime_tagx();
    _jspx_th_field_datetime_0.setJspContext(_jspx_page_context);
    _jspx_th_field_datetime_0.setParent(_jspx_parent);
    _jspx_th_field_datetime_0.setZ("10OwqSYb6lGut5/Gbcoqwgf2erU=");
    _jspx_th_field_datetime_0.setId("c_system_engineer_hotel_domain_Refillfood_refilldate");
    _jspx_th_field_datetime_0.setField("refilldate");
    _jspx_th_field_datetime_0.setDateTimePattern((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${refillfood_refilldate_date_format}", java.lang.String.class, (PageContext)_jspx_page_context, null));
    _jspx_th_field_datetime_0.doTag();
    return false;
  }

  private boolean _jspx_meth_field_select_1(javax.servlet.jsp.tagext.JspTag _jspx_parent, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  field:select
    org.apache.jsp.tag.web.form.fields.select_tagx _jspx_th_field_select_1 = (_jspx_resourceInjector != null) ? _jspx_resourceInjector.createTagHandlerInstance(org.apache.jsp.tag.web.form.fields.select_tagx.class) : new org.apache.jsp.tag.web.form.fields.select_tagx();
    _jspx_th_field_select_1.setJspContext(_jspx_page_context);
    _jspx_th_field_select_1.setParent(_jspx_parent);
    _jspx_th_field_select_1.setZ("BjHqf4Xm4/me+O6U4mKeTG6P8jU=");
    _jspx_th_field_select_1.setPath("/kitchenstaffs");
    _jspx_th_field_select_1.setItems((java.util.Collection) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${kitchenstaffs}", java.util.Collection.class, (PageContext)_jspx_page_context, null));
    _jspx_th_field_select_1.setItemValue("id");
    _jspx_th_field_select_1.setId("c_system_engineer_hotel_domain_Refillfood_kitchenstaffname");
    _jspx_th_field_select_1.setField("kitchenstaffname");
    _jspx_th_field_select_1.doTag();
    return false;
  }

  private boolean _jspx_meth_form_dependency_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  form:dependency
    org.apache.jsp.tag.web.form.dependency_tagx _jspx_th_form_dependency_0 = (_jspx_resourceInjector != null) ? _jspx_resourceInjector.createTagHandlerInstance(org.apache.jsp.tag.web.form.dependency_tagx.class) : new org.apache.jsp.tag.web.form.dependency_tagx();
    _jspx_th_form_dependency_0.setJspContext(_jspx_page_context);
    _jspx_th_form_dependency_0.setZ("JTucVmIwwau6+ZQiNwqwpfV9nXg=");
    _jspx_th_form_dependency_0.setRender((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${not empty dependencies}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null));
    _jspx_th_form_dependency_0.setId("d_system_engineer_hotel_domain_Refillfood");
    _jspx_th_form_dependency_0.setDependencies((java.util.Collection) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${dependencies}", java.util.Collection.class, (PageContext)_jspx_page_context, null));
    _jspx_th_form_dependency_0.doTag();
    return false;
  }

  private class create_jspxHelper
      extends org.apache.jasper.runtime.JspFragmentHelper
  {
    private javax.servlet.jsp.tagext.JspTag _jspx_parent;
    private int[] _jspx_push_body_count;

    public create_jspxHelper( int discriminator, JspContext jspContext, javax.servlet.jsp.tagext.JspTag _jspx_parent, int[] _jspx_push_body_count ) {
      super( discriminator, jspContext, _jspx_parent );
      this._jspx_parent = _jspx_parent;
      this._jspx_push_body_count = _jspx_push_body_count;
    }
    public boolean invoke0( JspWriter out ) 
      throws Throwable
    {
      if (_jspx_meth_field_select_0((javax.servlet.jsp.tagext.JspTag) _jspx_parent, _jspx_page_context))
        return true;
      if (_jspx_meth_field_input_0((javax.servlet.jsp.tagext.JspTag) _jspx_parent, _jspx_page_context))
        return true;
      if (_jspx_meth_field_datetime_0((javax.servlet.jsp.tagext.JspTag) _jspx_parent, _jspx_page_context))
        return true;
      if (_jspx_meth_field_select_1((javax.servlet.jsp.tagext.JspTag) _jspx_parent, _jspx_page_context))
        return true;
      return false;
    }
    public void invoke( java.io.Writer writer )
      throws JspException
    {
      JspWriter out = null;
      if( writer != null ) {
        out = this.jspContext.pushBody(writer);
      } else {
        out = this.jspContext.getOut();
      }
      try {
        switch( this.discriminator ) {
          case 0:
            invoke0( out );
            break;
        }
      }
      catch( Throwable e ) {
        if (e instanceof SkipPageException)
            throw (SkipPageException) e;
        throw new JspException( e );
      }
      finally {
        if( writer != null ) {
          this.jspContext.popBody();
        }
      }
    }
  }
}