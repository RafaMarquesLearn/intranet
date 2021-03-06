package controllers

import (
	"fmt"

	"github.com/astaxie/beego"
)

type MainController struct {
	beego.Controller
}

func (this *MainController) activeContent(view string) {
	this.Layout = "layout/layout.tpl"
	this.LayoutSections = make(map[string]string)
	this.LayoutSections["Header"] = "layout/header.tpl"
	this.LayoutSections["Navbar"] = "layout/navbar.tpl"
	this.LayoutSections["Footer"] = "layout/footer.tpl"
	this.TplName = view + ".tpl"

	sess := this.GetSession("intranet")
	if sess != nil {
		this.Data["InSession"] = 1
		m := sess.(map[string]interface{})
		this.Data["First"] = m["first"]
	}
}

func (this *MainController) Get() {
	this.activeContent("layout/layout")

	// this page requires login
	sess := this.GetSession("intranet")
	if sess == nil {
		this.Redirect("/user/login/home", 302)
		return
	}
	m := sess.(map[string]interface{})
	fmt.Println("username is ", m["username"])
	fmt.Println("logged in at ", m["timestamp"])
}

func (this *MainController) Notice() {
	this.activeContent("notice")

	flash := beego.ReadFromRequest(&this.Controller)
	if n, ok := flash.Data["notice"]; ok {
		this.Data["notice"] = n
	}
}
