size(400,400);
background(255);

fill(0); //テキストの色を設定
text("ABC",10,40); //座標(10,40)にABCを描く。ただしy座標は文字のベースライン

textSize(32); //テキストのサイズを32ptに指定
text("DEF",10,80);

textSize(64);
text("GHI",10,160);

String s = "JKL";

textSize(120);
text(s, 10, 300);