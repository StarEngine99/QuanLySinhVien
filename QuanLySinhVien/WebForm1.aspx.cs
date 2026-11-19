using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLySinhVien
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private model.QuanLySinhVien context = new model.QuanLySinhVien();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               ddlNganh.DataSource = context.Khoa.ToList();
                ddlNganh.DataTextField = "TenKhoa";
                ddlNganh.DataValueField = "MaKhoa";
                ddlNganh.DataBind();
            }

        }
    }
}