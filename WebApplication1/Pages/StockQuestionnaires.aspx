<%@ Page Title="מאגר שאלונים" Language="C#" AutoEventWireup="true" MasterPageFile="~/Pages/Site.Master" CodeBehind="StockQuestionnaires.aspx.cs" Inherits="WebApplication1.Pages.c" %>

<asp:Content ID="body" runat="server" ContentPlaceHolderID="MainContent">

    <form class="form" runat="server" id="Form1" action="#" method="post" enctype="multipart/form-data">
        <!-- content -->
        <section id="content">
      <div class="padding">
        <div class="wrapper margin-bot">
          <div  class="col-3" id="stockList">
                            <h2 class="p0"> מאגר שאלונים  <% =getCourseName() %></h2> 
            <div class="indent" id="stockQuestionnaire" style="display: inline" runat="server">
                <br /><br /><br /><br /><br />
                <div class="QuestionnaireIndent">
                        <input type="text" id="QuestionnaireName" style="display: none" runat="server" value="0" />
                        <ul class="Questionnaire">
                        
                            <%  for (int i = 0; i < listQuestionnaire.Count; i++)
                                {
                                    NameQuestionnaire.Text = listQuestionnaire[i].getName().Trim();
                                   
                                        %>
                            <li >
                                <div id="QuestionnaireLiDiv" class="liDive">
                                    <input id="classDisplayBtn" type="button" class="buttonStock" value="הצג לכיתה" />
                                    <input id="staticBtn" type="button" class="buttonStock" value="סטטיסטיקה" />
                                    <div id='<% =listQuestionnaire[i].getName() %>'>
                                    <asp:Button runat="server" id="NameQuestionnaire" OnClientClick="setQuestionnaireName($(this).last().parent().prop('id'));" OnClick ="onClick_Questionnaire" Text=""></asp:Button>
                                        </div>
                                </div>
                            </li>

                            <%}%>
                        </ul>
                    </div>
</div>

<div class="indentStock" id="StockQuestion" style="display: none" runat="server">
                           
                    <div class="QuestionClass">
                    <asp:Button ID="closeButtonQuestions" runat="server" OnClientClick="return false;" CssClass="closeButton" Text="x"/>
                        <br />
                         <h3 id="stockQuestionText" class="color-4 p2">מאגר שאלות: <% =QuestionnaireName.Value %> </h3>
                        <div class="QuestionnaireIndent">
                            <input type="text" id="QuestionId" style="display: none" runat="server" value="0" />
                            <ul class="Questionnaire">
                                <%  for (int j = 0; j < listQuestion.Count; j++)
                                    {
                                        NameQuestion.Text = listQuestion[j].getQuestion();
                                        %>
                                <li id="Question"+'<% =listQuestion[j].getId() %>'>
                                    <div id="QuestionLiDiv" class="liDive">

                                        <asp:Button runat="server" id="NameQuestion" OnClientClick="setQuestionId($(this).last().parent().prop('id'));"  Text=""></asp:Button>
                                    </div>
                                </li>

                                <%}%>
                            </ul>
                        </div>
                    </div>

                </div>
         
        </div>
            <div id="buttonCourses">

           
              <div id="buttonAddRemoveQ" class="buttonAddRemove" >

                        <input id="removeCourseBtnFromQ" class="myButton" runat="server" name="removeCourseBtn" type="button" value="הסר קורס"/>  

                        <input id="removeQuestionnaireBtn" class="myButton" runat="server" name="removeQuestionnaireBtn" type="button" value="הסרת שאלון"/>  
                        <asp:Button ID="addQuestionnaireBtn" runat="server" CssClass="myButton" OnClick="add_Question_Click" Text="הוספת שאלון"></asp:Button>

                    </div>
              
               </div>  
            
             <div class="col-4">
           
              </div>
          
             <div class="block-news" id="conectedUser" runat="server"    >
              <h3 class="color-4 p2">:אתה מחובר כ</h3>
                <br/><br/>
               <h3 class="color-4 p2"><label id="UserNameLabel" runat="server"> </label></h3> 
            <br/><br/>
                  <ul class="list-2">
                   <li>  
                     <div   id="profile">
                     <asp:Image runat="server" ID="userImage" CssClass="userImage" />
                   </div>
                </li>   
                      <li>
                           <asp:Button ID="logoutBtn" runat="server" CssClass="myButton" OnClick="logout_click" Text="התנתק"></asp:Button>
                      </li>  
            
              </ul>
                
            </div>

                 
       </div>
  
      </div>
    </section>
    </form>
</asp:Content>

