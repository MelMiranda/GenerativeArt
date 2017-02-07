
function main (ctx, canvas) {

  canvas.width = 640
  canvas.height = 480

  var rx = random(ctx.canvas.width)
  var ry = random(ctx.canvas.height)
var i=1
//for(var i=1;i<10; i++){
  animate.while(250,function(){
    i++
  var rc = randomInt(1)
  var x =random(ctx.canvas.width)
  var y =random(ctx.canvas.height)



  var c1=randomInt(230)
  var c2=randomInt(235)
  var c3=randomInt(235)
  var c4=randomInt(100)
  c4=c4/100
  var color=[c1, c1, c1]
  var color2=[c1, c1, c1,c4]

  ctx.beginPath();
    ctx.moveTo(x, y)
    ctx.lineWidth = random(4);
switch(rc){
  case 0:
    // ctx.beginPath()
    // ctx.moveTo(x, y)
    ctx.lineTo(rx, ry)
    break;
  case 1:

    ctx.quadraticCurveTo(random(ctx.canvas.width), random(ctx.canvas.height),rx, ry);

    break;
}


// ctx.stroke();
    ctx.strokeStyle = 'rgb(' + color.join(',') + ')'
  ctx.stroke();
  var fill = randomInt(4)
  if(fill == 3){
    ctx.fillStyle = 'rgba(' + color2.join(',') + ')'
    ctx.fill()
  }

  rx=x
  ry=y
  return (i>20)
})

}
