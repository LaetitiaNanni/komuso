#-*- coding: utf-8 -*-
from django.http import HttpResponse
from django.shortcuts import render
from django.shortcuts import render_to_response
from django.template import RequestContext

def home(request):
  return render_to_response('score-editor/index.html',
                              {},
                              context_instance = RequestContext(request))
