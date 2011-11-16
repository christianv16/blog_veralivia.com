# Django settings for techblog2 project.
from os.path import join
ugettext = lambda s: s
from os import path
BASEDIR = path.dirname(path.abspath(__file__))

DEBUG = True

TEMPLATE_DEBUG = DEBUG

ADMINS = (
     ('Christian Vera Livia', 'christian@veralivia.com'),
)

MANAGERS = ADMINS

DATABASE_ENGINE = 'mysql'           # 'postgresql_psycopg2', 'postgresql', 'mysql', 'sqlite3' or 'oracle'.
DATABASE_NAME = 'Blogs'             # Or path to database file if using sqlite3.
DATABASE_USER = 'root'             # Not used with sqlite3.
DATABASE_PASSWORD = ''         # Not used with sqlite3.
DATABASE_HOST = 'localhost'             # Set to empty string for localhost. Not used with sqlite3.
DATABASE_PORT = ''             # Set to empty string for default. Not used with sqlite3.

TIME_ZONE = 'America/Lima'

LANGUAGE_CODE = 'es-pe'

SITE_ID = 1

USE_I18N = True


BASEDIR = path.dirname(path.abspath(__file__))
# Absolute path to the directory that holds media.
# Example: "/home/media/media.lawrence.com/"
MEDIA_ROOT = path.join(BASEDIR, 'media')


# URL that handles the media served from MEDIA_ROOT. Make sure to use a
# trailing slash if there is a path component (optional in other cases).
# Examples: "http://media.lawrence.com", "http://example.com/media/"
MEDIA_URL = '/media/'

ADMIN_MEDIA_PREFIX = '/media/'



SECRET_KEY = '#qxry*06tp(w-s%1!#cutq9x-7c997imgz=b)2lkw@&!bef_k='

TEMPLATE_LOADERS = (
    'django.template.loaders.filesystem.load_template_source',
    'django.template.loaders.app_directories.load_template_source',
)

MIDDLEWARE_CLASSES = (

    'django.middleware.cache.UpdateCacheMiddleware',
    'django.middleware.http.ConditionalGetMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.middleware.cache.FetchFromCacheMiddleware',
    'techblog.middleware.UrlRemapMiddleware',    
    'debug_toolbar.middleware.DebugToolbarMiddleware',

)

ROOT_URLCONF = 'techblog.urls'

TEMPLATE_DIRS = (

    join(BASEDIR, 'templates'),
)

TEMPLATE_CONTEXT_PROCESSORS = (
    "django.core.context_processors.auth",
    "django.core.context_processors.debug",
    "django.core.context_processors.i18n",
    "django.core.context_processors.media",
    "django.core.context_processors.static" , 
    "django.core.context_processors.request",
    "django.contrib.messages.context_processors.messages",
    "techblog.context_processors.google_analytics"
    )

DEBUG_TOOLBAR_PANELS = (
    'debug_toolbar.panels.version.VersionDebugPanel',
    'debug_toolbar.panels.timer.TimerDebugPanel',
    'debug_toolbar.panels.settings_vars.SettingsVarsDebugPanel',
    'debug_toolbar.panels.headers.HeaderDebugPanel',
    'debug_toolbar.panels.request_vars.RequestVarsDebugPanel',
    'debug_toolbar.panels.template.TemplateDebugPanel',
    'debug_toolbar.panels.sql.SQLDebugPanel',
    'debug_toolbar.panels.signals.SignalDebugPanel',
    'debug_toolbar.panels.logger.LoggingPanel',    
)
 
INSTALLED_APPS = (	
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
	#'django.contrib.sites',
    'django.contrib.humanize',
	#'grappelli.dashboard',
    'grappelli',
    'django.contrib.admin', 
    'south',   
	#'django.contrib.sitemaps',	
    'techblog.markup',
    'techblog.apps.blog',
    'techblog.apps.comments',
    'techblog.apps.pages',
    'techblog.apps.resources',    
    'debug_toolbar',    
    'filebrowser',
	
)


DEBUG_TOOLBAR_CONFIG = {
    'INTERCEPT_REDIRECTS': False,
    #'SHOW_TOOLBAR_CALLBACK': custom_show_toolbar,
    #'EXTRA_SIGNALS': ['myproject.signals.MySignal'],
    #'HIDE_DJANGO_SQL': False,
    #'TAG': 'div',
}

FILEBROWSER_EXTENSIONS = {
    'Folder': [''],
    'Image': ['.jpg','.jpeg','.gif','.png'],
    'Video': ['.mov','.wmv','.mpeg','.mpg','.avi'],

}

FILEBROWSER_SELECT_FORMATS = {
    'File': ['Folder','Document'],
    'Image': ['Image'],
    'Video': ['Video', 'Flash_Movie'] 
}

FILEBROWSER_VERSIONS = {
    'fb_thumb': {'verbose_name': ugettext('Admin Thumbnail'), 'width': 60, 'height': 60, 'opts': 'crop upscale'},
    'thumbnail': {'verbose_name': ugettext('Thumbnail (140px)'),'width': 140, 'height': '', 'opts': ''},
    'small': {'verbose_name': ugettext('Small (300px)'), 'width': 300, 'height': 300, 'opts': 'crop'},
    'medium': {'verbose_name': ugettext('Medium (460px)'),'width': 460, 'height': '', 'opts': ''}
}

FILEBROWSER_ADMIN_VERSIONS = {'fb_thumb','thumbnail', 'small','medium'}


FILEBROWSER_DEBUG = False
FILEBROWSER_MEDIA_ROOT = MEDIA_ROOT + '/filebrowser/'
FILEBROWSER_MEDIA_URL = MEDIA_URL + '/filebrowser/'
FILEBROWSER_MEDIA = MEDIA_URL + '/filebrowser/'
FILEBROWSER_DIRECTORY = 'uploads/'
FILEBROWSER_PATH_FILEBROWSER_MEDIA =  MEDIA_ROOT 
FILEBROWSER_URL_FILEBROWSER_MEDIA = '/media/filebrowser/'

FILEBROWSER_SAVE_FULL_URL = False



#titulos Grappelli
GRAPPELLI_ADMIN_TITLE = 'ADMIN-BLOGS-CHRISTIAN'


# Requisito para el Django Debug Toolbar
INTERNAL_IPS = ('127.0.0.1',) 

DEBUG_TOOLBAR_DEV_MODE = False

#CACHE_BACKEND = "memcached://127.0.0.1:11211/"
CACHE_BACKEND = "dummy:///"

CACHE_MIDDLEWARE_ANONYMOUS_ONLY=True

#SESSION_ENGINE = "django.contrib.sessions.backends.cache"

DEFAULT_FROM_EMAIL = "christian@veralivia.com"
SYSTEM_EMAIL_PREFIX = "[veralivia.com]"

DEFAULT_BLOG_SLUG = "christian-vera-livia"

ENABLE_COMMENTS = True

BLOG_POSTS_PER_PAGE = 10

if not DEBUG:
    PREPEND_WWW = True

#USE_ETAGS = True

# A dictionary that transparently maps one set of URLs on to another
# See techblog.middleware
URL_REMAP = {
    '/old/url/' : '/new/url'
}

# Path to your google analytics code
GA_PATH = ""



try:
    from local_settings import *
except ImportError:
    pass


