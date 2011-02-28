from fabric.api import *
import os
import shutil

def compile_sass(style="compressed"):
    """
    Compile Sass stylesheets to CSS. Optional `style` command controls output.
    """
    local('sass --update assets/scss:assets/tmp/css --style %s --no-cache' % style)


def compile_coffeescript():
    """
    Compile CoffeeScript files to Javascript. Requires `coffee` command.
    """
    local('coffee -o assets/tmp/js -c assets/coffee')


def compress_assets():
    """
    Concatenate stylesheets & js. Requires jammit gem.
    """
    local('jammit -o static -c jammit.yaml')


def cleanup_assets():
    shutil.rmtree(os.path.join(os.getcwd(), 'assets/tmp'))


def assets():
    """
    Prepare all static assets for deployment
    """
    compile_sass()
    compile_coffeescript()
    compress_assets()
    cleanup_assets()


def deploy():
    local('git push origin master')