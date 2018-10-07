if [ -d $1 ]; then
  echo 'error: dir exists'
  exit
else
  mkdir $1
  cd $!
  mkdir css js
  echo "<!DOCTYPE>\n<title>hello</title>\n<h1>Hi</hi>" > index.html
  echo "body{color:red;}" > css/style.css
  echo "var string = \"Hello Word\"\nalert(string)" > js/main.js
  echo 'success'
  exit
fi
