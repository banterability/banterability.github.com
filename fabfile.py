from fabric.api import *

def compile_sass(style="compressed"):
    """
    Compile Sass stylesheets to CSS. Optional `style` command controls output.
    """
    local('sass --update assets/scss:static/css --style %s --no-cache' % style)


def compile_coffeescript():
    """
    Compile CoffeeScript files to Javascript. Requires `coffee` command.
    """
    local('coffee -o assets/js/ -c assets/coffee')


def sprocketize():
    """
    Concatenate Javascript files into a single application.js file. Requires sprockets gem.
    """
    local('sprocketize -I assets/js/vendor assets/js/*.js > static/js/application.js')


def assets():
    """
    Prepare all static assets for deployment
    """
    compile_sass()
    compile_coffeescript()
    sprocketize()


def deploy():
    local('git push origin master')