/**
 * Created by xuanyang on 6/24/16.
 */
//加入template
CKEDITOR.addTemplates(
    'custom',
    {
      //圖片資料夾路徑，放在同目錄的images資料夾內
      imagesPath: CKEDITOR.getUrl('templates/images/'),
      templates: [
        {
          //標題
          title: '尺寸表',
          image: 'sizing.png',//圖片
          description: '簡易尺寸表', //樣板描述
          //自訂樣板內容
          html: "<div><table border='1' class='size_table'>" +
          "<tr>" +
          "<th class='tg-baqh' colspan='7'>商品尺寸(單位公分)</th>" +
          "</tr>" +
          "<tr>" +
          "<td class='tg-baqh'>尺寸</td>" +
          "<td class='tg-baqh'>08號</td>" +
          "<td class='tg-baqh'>10號</td>" +
          "<td class='tg-baqh'>12號</td>" +
          "<td class='tg-baqh'>14號</td>" +
          "<td class='tg-baqh'>16號</td>" +
          "<td class='tg-baqh'>18號</td>" +
          "</tr>" +
          "<tr>" +
          "<td class='tg-baqh'>適穿建議</td>" +
          "<td class='tg-baqh'>115/18</td>" +
          "<td class='tg-baqh'>120/20</td>" +
          "<td class='tg-baqh'>130/30</td>" +
          "<td class='tg-baqh'>140/38</td>" +
          "<td class='tg-baqh'>150/48</td>" +
          "<td class='tg-baqh'>155/55</td>" +
          "</tr>" +
          "<tr>" +
          "<td class='tg-baqh'>腰寬</td>" +
          "<td class='tg-baqh'>20</td>" +
          "<td class='tg-baqh'>22</td>" +
          "<td class='tg-baqh'>24</td>" +
          "<td class='tg-baqh'>25.5</td>" +
          "<td class='tg-baqh'>26</td>" +
          "<td class='tg-baqh'>27</td>" +
          "</tr>" +
          "<tr>" +
          "<td class='tg-baqh'>臀圍</td>" +
          "<td class='tg-baqh'>32.5</td>" +
          "<td class='tg-baqh'>34.5</td>" +
          "<td class='tg-baqh'>36.5</td>" +
          "<td class='tg-baqh'>38.5</td>" +
          "<td class='tg-baqh'>42</td>" +
          "<td class='tg-baqh'>43</td>" +
          "</tr>" +
          "<tr>" +
          "<td class='tg-baqh'>褲長/裙長</td>" +
          "<td class='tg-baqh'>26</td>" +
          "<td class='tg-baqh'>27.5</td>" +
          "<td class='tg-baqh'>28.5</td>" +
          "<td class='tg-baqh'>31</td>" +
          "<td class='tg-baqh'>33</td>" +
          "<td class='tg-baqh'>35</td>" +
          "</tr>" +
          "<tr>" +
          "<td class='tg-baqh'>褲襠</td>" +
          "<td class='tg-baqh'>21.5</td>" +
          "<td class='tg-baqh'>23</td>" +
          "<td class='tg-baqh'>23.5</td>" +
          "<td class='tg-baqh'>25.5</td>" +
          "<td class='tg-baqh'>26.5</td>" +
          "<td class='tg-baqh'>27</td>" +
          "</tr>" +
          "<tr>" +
          "<td class='tg-baqh'>鬆緊帶</td>" +
          "<td class='tg-baqh'>〇</td>" +
          "<td class='tg-baqh'>〇</td>" +
          "<td class='tg-baqh'>〇</td>" +
          "<td class='tg-baqh'>〇</td>" +
          "<td class='tg-baqh'>〇</td>" +
          "<td class='tg-baqh'>〇</td>" +
          "</tr>" +
          "</table></div>"
        }, {
          title: '試穿報告',
          image: 'try-report.png',
          description: '試穿報告版型',
          html: "<table border='1' class='try-report'>" +
          "<tr>" +
          "<th class='tg-uqo3' colspan='6'>試穿報告</th>" +
          "</tr>" +
          "<tr>" +
          "<td class='tg-yzt1'>身高(cm)</td>" +
          "<td class='tg-yzt1'>試穿人員</td>" +
          "<td class='tg-yzt1'>體重(kg)</td>" +
          "<td class='tg-yzt1'>肩寬</td>" +
          "<td class='tg-yzt1'>胸圍</td>" +
          "<td class='tg-yzt1'>建議尺寸</td>" +
          "</tr>" +
          "<tr>" +
          "<td class='tg-s6z2' rowspan='2'>151-155</td>" +
          "<td class='tg-baqh'>A</td>" +
          "<td class='tg-baqh'>53</td>" +
          "<td class='tg-baqh'>37.5</td>" +
          "<td class='tg-baqh'>88.2</td>" +
          "<td class='tg-baqh'>M</td>" +
          "</tr>" +
          "<tr>" +
          "<td class='tg-baqh'>B</td>" +
          "<td class='tg-baqh'>71.9</td>" +
          "<td class='tg-baqh'>41</td>" +
          "<td class='tg-baqh'>104.5</td>" +
          "<td class='tg-baqh'>XXL</td>" +
          "</tr>" +
          "<tr>" +
          "<td class='tg-s6z2' rowspan='2'>151-160</td>" +
          "<td class='tg-baqh'>C</td>" +
          "<td class='tg-baqh'>59.4</td>" +
          "<td class='tg-baqh'>38.5</td>" +
          "<td class='tg-baqh'>90</td>" +
          "<td class='tg-baqh'>L</td>" +
          "</tr>" +
          "<tr>" +
          "<td class='tg-baqh'>D</td>" +
          "<td class='tg-baqh'>65.2</td>" +
          "<td class='tg-baqh'>41</td>" +
          "<td class='tg-baqh'>96</td>" +
          "<td class='tg-baqh'>L</td>" +
          "</tr>" +
          "<tr>" +
          "<td class='tg-s6z2' rowspan='2'>161-165</td>" +
          "<td class='tg-baqh'>E</td>" +
          "<td class='tg-baqh'>72.4</td>" +
          "<td class='tg-baqh'>41</td>" +
          "<td class='tg-baqh'>101</td>" +
          "<td class='tg-baqh'>XL</td>" +
          "</tr>" +
          "<tr>" +
          "<td class='tg-baqh'>F</td>" +
          "<td class='tg-baqh'>47.1</td>" +
          "<td class='tg-baqh'>37.5</td>" +
          "<td class='tg-baqh'>83.8</td>" +
          "<td class='tg-baqh'>S</td>" +
          "</tr>" +
          "</table>"
        }, {
          //標題
          title: 'Model資訊',
          image: 'model-info.png',//圖片
          description: 'Model資訊', //樣板描述
          //自訂樣板內容
          html: "<table border='1' class='model-info'>" +
          "<tr>" +
          "<th class='tg-l9pu'>Model</th>" +
          "<th class='tg-vcvj'><img class='modelImg' src=" + CKEDITOR.getUrl('templates/images/model-info.png') + " alt='model-info'></th>" +
          "</tr>" +
          "<tr>" +
          "<td class='tg-l9pu'>身高(cm)</td>" +
          "<td class='tg-vcvj'>173</td>" +
          "</tr>" +
          "<tr>" +
          "<td class='tg-l9pu'>體重(kg)</td>" +
          "<td class='tg-vcvj'>56</td>" +
          "</tr>" +
          "<tr>" +
          "<td class='tg-l9pu'>肩寬</td>" +
          "<td class='tg-vcvj'>38</td>" +
          "</tr>" +
          "<tr>" +
          "<td class='tg-l9pu'>胸圍</td>" +
          "<td class='tg-vcvj'>83.5</td>" +
          "</tr>" +
          "<tr>" +
          "<td class='tg-l9pu'>腰圍</td>" +
          "<td class='tg-vcvj'>63</td>" +
          "</tr>" +
          "<tr>" +
          "<td class='tg-l9pu'>低腰圍</td>" +
          "<td class='tg-vcvj'>79</td>" +
          "</tr>" +
          "<tr>" +
          "<td class='tg-l9pu'>臀圍</td>" +
          "<td class='tg-vcvj'>90</td>" +
          "</tr>" +
          "<tr>" +
          "<td class='tg-l9pu'>試穿尺寸</td>" +
          "<td class='tryReport' style='width: 291.5px; padding-left: 172.5px; text-align: left;'>" +
          "<label>上身：S／M (最小尺寸)<br>下身：S／24／61</label>" +
          "</td>" +
          "</tr>" +
          "</table>"
        },
      ]
    });