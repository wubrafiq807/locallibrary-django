from django.urls import path,re_path
from . import views

urlpatterns = [
path('', views.index, name='index'),
path('books/', views.BookListView.as_view(), name='books'),
re_path(r'^book/(?P<pk>\d+)$', views.BookDetailView.as_view(), name='book-detail'),
path('authors/', views.AuthorListView.as_view(), name='authors'),
re_path(r'^author/(?P<pk>\d+)$', views.AuthorDetailView.as_view(), name='author-detail'),
]
urlpatterns += [
    path('mybooks/', views.LoanedBooksByUserListView.as_view(), name='my-borrowed'),
]
urlpatterns += [
    path('booksBrrowed/', views.LoanedBooksListView.as_view(), name='borrowed'),
]
urlpatterns += [
    path('book/<uuid:pk>/renew/', views.renew_book_librarian, name='renew-book-librarian'),
]
urlpatterns += [
    path('author/create/', views.AuthorCreate.as_view(), name='author_create'),
#    path('author/<int:pk>/update/', views.AuthorUpdate.as_view(), name='author_update'),
#    path('author/<int:pk>/delete/', views.AuthorDelete.as_view(), name='author_delete'),
    re_path(r'^author/(?P<pk>[0-9]+)/update$', views.AuthorUpdate.as_view(), name='author_update'),
    re_path(r'^author/(?P<pk>[0-9]+)/delete$', views.AuthorDelete.as_view(), name='author_delete'),
    #re_path(r'^author/(?P<author_id>[0-9]+)/update$', views.BookUpdate.as_view(), name='author_update'),
]
urlpatterns += [
    path('book/create/', views.BookCreate.as_view(), name='book_create'),
    re_path(r'^book/(?P<pk>[0-9]+)/update/$', views.BookUpdate.as_view(), name='book_update'),
    re_path(r'^book/(?P<pk>[0-9]+)/delete/$', views.BookDelete.as_view(), name='book_delete'),
]
