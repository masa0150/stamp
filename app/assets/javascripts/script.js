function getId(stamp){
  var id_value = stamp.id; // stampのプロパティとしてidを取得
  console.log(id_value); //
  var test = id_value;
  console.log(test);
  
  let text = document.getElementById('text');
    text.value = test;
}
