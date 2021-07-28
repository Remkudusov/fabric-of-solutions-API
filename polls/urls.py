from django.urls import path

from . import views

urlpatterns = [
    path('get/<str:subject>/', views.PollsView.as_view()),
    path('poll/admin/<str:action>/<int:poll_id>/', views.AdminPollView.as_view()),
    path('poll/admin/<str:action>/', views.AdminPollView.as_view()),
    path('question/admin/<str:action>/', views.AdminQuestionView.as_view()),
    path('question/admin/<str:action>/<int:question_id>/', views.AdminQuestionView.as_view()),
    path('variant/admin/<str:action>/', views.AdminVariantView.as_view()),
    path('variant/admin/<str:action>/<int:question_id>/<int:variant_number>/', views.AdminVariantView.as_view()),
    path('answer/post/', views.AnswerView.as_view()),
    path('answer/get/<int:user_id>/', views.AnswerView.as_view())
]