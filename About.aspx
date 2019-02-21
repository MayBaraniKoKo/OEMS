<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="OEMS.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <h3><strong>Welcome to Gusto-Higher Education Institute</strong></h3>
    <p>&nbsp;</p>
    <div class="row">
    <div class="col-md-12" style="align-center; margin-left: 120px;">
            <asp:Image runat="server" ImageUrl="~/Images/cover.jpg" />
            <br />
            <br />
    </div>
    
    
        <div class="col-md-12" style="margin: 1px 120px 1px 120px; width:900px;">
            <p style="text-align: justify">Gusto is the premier Higher Education Institute that was established in 2006. As a leading IT/Computing Institute in Myanmar, 
        we have already trained more than 5,000 IT Professionals and most of them are now serving at high managerial and technical positions
        in renowned local and overseas companies.
    </p>
    <p style="text-align: justify">Our prime aim is to produce well-rounded graduates who are globally employable. Subject knowledge and related skills alone are not 
        sufficient to succeed in a work place.Emotional competencies such as self-control, empathy, teamwork, self-confidence and achievement orientation are equally
        important. The learning experience at Gusto ensures development of such competencies in students.
    </p>
    <p style="text-align: justify">
        We are first and foremost a student-centered institution that dedicates its talents and resources to student weifare. Our culture is to guide the students all the way to achieve
        their full potential. Our philosophy is to provide the students with quailty learning experiences that help them to explore and unravel
        the future. Our style is to work in partnership with students and parents to ensure that the students eventually succeed in career and life.
    </p>

            </div>
        

    </div>
    
</asp:Content>
