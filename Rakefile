namespace :assets do
  
  desc "Compile SCSS files into CSS stylesheets"
  task :compile_sass do
    sh "sass --update assets/scss:assets/tmp/css --style compressed --no-cache"
    puts "SASS -> CSS complete."
  end

  desc "Compile Coffeescript files into Javascript"
  task :compile_coffeescript do
    sh "coffee -o assets/tmp/js -c assets/coffee"
    puts "Coffee -> JS complete."
  end

  desc "Build single application JS/CSS files"
  task :compress_assets do
    sh "jammit -o static -c jammit.yaml"
    puts "Assets concatenated & compressed."
  end

  desc "Remove temporary asset generation folders"
  task :cleanup_assets do
    sh "rm -r assets/tmp"
    puts "Temporary files cleaned up."
  end

  desc "Recompile and compress all assets"
  task :rebuild => [:compile_sass, :compile_coffeescript, :compress_assets, :cleanup_assets] do
    puts "Assets rebuilt."
  end  
end

desc "Push master branch live"
task :deploy do
  sh "git push origin master"
end
