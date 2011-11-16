from filebrowser.fields import FileBrowseField
from filebrowser.base import FileObject
from django.contrib.auth.models import User
from django.db import models
from django.utils.translation import ugettext_lazy as _
from django.contrib.contenttypes.models import ContentType
from django.conf import settings

import os
import os.path
from settings import *

import Image

# Create your models here.

class ImageUpload(models.Model):

    owner = models.ForeignKey(User)
    name = models.CharField(max_length=100)
    #image = models.ImageField(upload_to="uploads/images")
    #image = FileBrowseField("Image", max_length=150,null = True , blank=True, help_text = 'Imagen Agregada')
    image =  FileBrowseField('Image', max_length=150, null = True , blank=True, help_text = 'Imagen Agregada')
    description = models.TextField(default="")
    
    class Meta:
        verbose_name = _('Imagen')
        verbose_name_plural = _('Imagenes')

	

   

    def thumbnail_html(self):
        WIDTH = 100
        url, (w, h) = self.thumb(WIDTH)
        full_url = settings.MEDIA_URL + self.image.name

        html = '<a href="%s" target="_blank"><img src="%s" width="%i" height="%i" /></a>' % \
            (full_url, url, w, h)

        return html
    
    thumbnail_html.allow_tags = True



