from django.urls import path

from .views import HomePageView, SearchResultsView, CreateView

from phone import views

app_name = 'phone'

urlpatterns = [
    path('', HomePageView.as_view(), name='home'),
    path('search/', SearchResultsView.as_view(), name='search_results'),
    path('create_new/', CreateView.as_view(), name='create_new'),
    path('create_new/create/', views.create, name='create'),
    path('edit/<int:id>/', views.edit),
    path('delete/<int:id>/', views.delete),
    path('', views.button_back, name='button_back'),
]