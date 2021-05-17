#
#  Be sure to run `pod spec lint Project1.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  # 1 - Configurações gerais
  spec.platform     = :ios
  spec.ios.deployment_target = '13.0'
  spec.swift_version = '5.2.0'
  spec.summary      = "Este é um projeto exemplo que ajuda no entendimento basico de como modularizar projetos usando CocoaPods"

  # 2 - Nome do pod
  spec.name         = "Project2"

  # 3 - Versão do pod
  spec.version      = "1.0.1"

  # 4 - URL do projeto
  spec.homepage     = "https://github.com/felipebweber/Project2"

  # 5 - licença
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }

  # 6 - autor ou autores
  spec.author             = { "Felipe Weber" => "weberecomp@gmail.com" }

  spec.social_media_url   = "https://twitter.com/fbw_"

  # 7 - source ssh do git ou https
  spec.source       = { :git => "git@github.com:felipebweber/Project2.git", :tag => spec.version }

  # 8 Local onde ficam os arquivos
  spec.source_files  = ["#{spec.name}/**/*.{swift}", "#{spec.name}/**/*.{h}", "#{spec.name}/**/*.{m}"]

  # 9 -  pdf, imagens, xib, storyboard, xcassets, strings
  spec.resources = ["#{spec.name}/**/*.{png}", "#{spec.name}/**/*.{xcassets}", "#{spec.name}/**/*.{storyboard}", "#{spec.name}/**/*.{xib}", "#{spec.name}/**/*.{strings}"]

  spec.public_header_files = '*.h'

end
