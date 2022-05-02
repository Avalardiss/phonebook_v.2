from django.db import models

class Abonent(models.Model):
    id = models.AutoField('ID', auto_created=True, primary_key=True)
    name = models.CharField('Фамилия, Имя, Отчество', max_length=300, blank=True)
    mobile_phone = models.CharField('Сотовый телефон', max_length=100, blank=True)
    gorod_phone = models.CharField('Городской телефон', max_length=100, blank=True)
    internal_phone = models.CharField('Внутренний телефон', max_length=100, blank=True)
    IP_phone = models.CharField('IP телефон', max_length=100, blank=True)
    zvks = models.CharField('E-mail', max_length=100, blank=True)
    pts_phone = models.CharField('Кабинет', max_length=100, blank=True)
    conference_phone = models.CharField('Телефон конференц-связи', max_length=100, blank=True)
    zas_phone = models.CharField('Спутниковый телефон', max_length=100, blank=True)

    class Meta:
        ordering = ["id"]
        verbose_name = 'Абонент'
        verbose_name_plural = 'Абоненты'
    def __str__(self):
        return self.id
    def __str__(self):
        return self.name
    def __str__(self):
        return self.mobile_phone
    def __str__(self):
        return self.gorod_phone
    def __str__(self):
        return self.internal_phone
    def __str__(self):
        return self.IP_phone
    def __str__(self):
        return self.zvks
    def __str__(self):
        return self.pts_phone
    def __str__(self):
        return self.conference_phone
    def __str__(self):
        return self.zas_phone
        
def get_absolute_url(self):
        return reverse("a:detail", kwargs={'a_id': self.a_id})