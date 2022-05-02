from django.shortcuts import render
from django.http import HttpResponseRedirect
from django.http import HttpResponseNotFound
from django.views.generic import ListView
from .models import Abonent
from django.db.models import Q
#from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger 

# ...
 
class HomePageView(ListView):
    model = Abonent
    context_object_name = 'abonents'
    template_name = 'home.html'
    def get_queryset(self):
        abonents = Abonent.objects.all()
        return abonents

# поисковая строка
class SearchResultsView(ListView):
    model = Abonent
    template_name = 'search_results.html'

    def get_queryset(self): 
        try:
            query = self.request.GET.get('q')
            #objects_list = Abonent.objects.filter(Q(name__icontains=query))
            objects_list = Abonent.objects.filter(
                Q(name__icontains=query) | Q(mobile_phone__icontains=query) | Q(gorod_phone__icontains=query) | Q(internal_phone__icontains=query) | Q(IP_phone__icontains=query) | Q(zvks__icontains=query) | Q(pts_phone__icontains=query) | Q(conference_phone__icontains=query) | Q(zas_phone__icontains=query)
                )
            return objects_list
        except Abonent.DoesNotExist:
            return HttpResponseNotFound("<h2>Абонент не найден</h2>")

# сохранение данных в бд
class CreateView(ListView):
    model = Abonent
    template_name = 'create_new.html'

def create(request):
    if request.method=="POST":
        objects_list = Abonent()
        objects_list.name = request.POST.get("name")
        objects_list.mobile_phone = request.POST.get("mobile_phone")
        objects_list.gorod_phone = request.POST.get("gorod_phone")
        objects_list.internal_phone = request.POST.get("internal_phone")
        objects_list.IP_phone = request.POST.get("IP_phone")
        objects_list.zvks = request.POST.get("zvks")
        objects_list.pts_phone = request.POST.get("pts_phone")
        objects_list.conference_phone = request.POST.get("conference_phone")
        objects_list.zas_phone = request.POST.get("zas_phone")
        objects_list.save()
        return HttpResponseRedirect("/")
    else:
        return render(request, "create_new.html")


# изменение данных в бд
def edit(request, id):

    try:
        objects_list = Abonent.objects.get(id=id)
        if request.method=="POST":
            objects_list.name = request.POST.get("name")
            objects_list.mobile_phone = request.POST.get("mobile_phone")
            objects_list.gorod_phone = request.POST.get("gorod_phone")
            objects_list.internal_phone = request.POST.get("internal_phone")
            objects_list.IP_phone = request.POST.get("IP_phone")
            objects_list.zvks = request.POST.get("zvks")
            objects_list.pts_phone = request.POST.get("pts_phone")
            objects_list.conference_phone = request.POST.get("conference_phone")
            objects_list.zas_phone = request.POST.get("zas_phone")
            objects_list.save()
            return HttpResponseRedirect("/")
        else:
            return render(request, "edit.html", {"Abonent": Abonent})
    except Abonent.DoesNotExist:
        return HttpResponseNotFound("<h2>Абонент не найден</h2>")
     # button back

def button_back(request):
    return render(request, "home.html", {"Abonent": Abonent})

# удаление данных из бд
def delete(request, id):
    try:
        objects_list = Abonent.objects.get(id=id)
        objects_list.delete()
        return HttpResponseRedirect("/")
    except Abonent.DoesNotExist:
        return HttpResponseNotFound("<h2>Абонент не найден</h2>")



