#echo 'hhh'
base_dir="./docs"
echo "个人博客" > README.md
function str_num(){
i=1
res=""
while(( $i <= $1 ))
do
  res=$res"#"
  i=$i+1
done
}

function read_dir(){
for file in `ls $1` 
  do
    if [ -d $1"/"$file ]
    then
      str_num $2     
      echo "$res $file" >> README.md
      read_dir $1"/"$file $2+1
    else
      echo $1"/"$file
      echo "[$file]($1"/"$file)" >> README.md
    fi
  done 
}

read_dir $base_dir 2

