import 'package:eccommerce2/common/routes/names.dart';
import 'package:eccommerce2/common/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget profileEditIcon(){
  return  Container(
  height: 80.h,
  width: 80.w,
  // child: Container(
  //   height: 5,
  //   width: 5,
  //
  //   child: Image(image: NetworkImage("data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDAAsJCQcJCQcJCQkJCwkJCQkJCQsJCwsMCwsLDA0QDBEODQ4MEhkSJRodJR0ZHxwpKRYlNzU2GioyPi0pMBk7IRP/2wBDAQcICAsJCxULCxUsHRkdLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCz/wAARCAD+AP4DASIAAhEBAxEB/8QAGwABAAIDAQEAAAAAAAAAAAAAAAEGBAUHAwL/xABBEAACAgECAwQHBQQKAQUAAAABAgADBAURITFBBhJRcRMiMmGBobEUQlKRwSNigrIVM0NjcpKiwuHwNCSDo9Hx/8Q"
  //       "AGwEBAAIDAQEAAAAAAAAAAAAAAAUGAQMEAgf/xAAyEQACAgECAwUIAwACAwAAAAAAAQIDBB"
  //       "ExBRIhEzJBUWEicZGhsdHh8AYUgSPBM0JD/9oADAMBAAIRAxEAPwDrcREAREQBERAERIgExNZqOtaXpu4yLu9dtuKKdn"
  //       "tPmN9h8SJUs/tVquV3kxdsSo8N6yHuI99jDh8APOdVOJbd1iunmyLy+K42J0nLV+S3/Bd8nMwsNe/lZFNI23HpHAJ/wrzPwE0eT2"
  //       "v0qolcaq/JIPtbCqs/F/W/0yiu9ljs9ju7txZ7GLMx97NxnzJavhkF33qVjI/kV8+lMVFfF/Ysl/bDVrO8KKsahehCta4+Lnu/6Zrbde"
  //       "164nv6hkAHpWVqH/xATWyJ2xxaYbRRD28Ryre/Y/j9j7ey2w96x3djzZ2LH8zPhie6/kZM+W9l/I/Sb3scWur1MWe9GXmYxDY+TdSfGqxk/lM8ImhpPoztjJxeqNzT2m7SU7bZ7uB0vSu0H4sve+c22N24z02GVh49o6mhnpb8m7w+kqETnljVS3ijtr4jk1d2b+v1Ol4na7QcnZbbLcVzsNslPU391le6/ntN9VbTcgsptrtrbk9Tq6nyZdxOLT3xcvNwrPS4mRdQ/U1MV73+Icj8ROOzh0X1g9CXo49NdLo6+47NEoendtchO7XqdAtXkb8YBLB72rPqn4EeUuOFqGBqFXpcPIS5Bt3gp2dCejofWHxEjbaLKu8ixY2"
  //       "dRk/+OXXy8TLiQJM0HaIiIAiIgCIiAIiIAiIgCJE12q6xh6VUGtPfucE00IQHfbqfBfE/WeoQlN8"
  //       "sVqzXbbCqDnY9EjMyMnGxKnvybUqqT2mc8N/AAcSfACUrVe1WVkd6nT+/j0cQbj/5Fg923BR8/eOU0uoannand6XKs3"
  //       "C7+irTcVVA9EX6nn+mHJ/G4fGHtWdX8ij8Q47ZdrXj+zHz8X9gSSWJJJYkkkkkk9STIkyJKFbb16iIiZMCIiAJDey/kfpJkN7L+R+kw9jK3MWIia"
  //       "DrEREAREQBPXHyMnFtW/GusptT2XrYhvI+73TyiYaTWjPUZOL1Re9H7Y1WlMfVu7VYdlXKQbVMf71eh944eUuCsrBWVgVYAqQQQwI3BBE4pN5onaLN0hkqbvX4JPrUE+tXvzaknl5cj7ucisjBT9qr4FmwONOOkMnqvP7nUYmNh5uJn49WTi2iyp+o4FWHNXXmCOomTIhrToy2RkpLWL1QiImDIiIgCIiAJEmazWNVp0rFNrAPfZumNUT7b7cztx7o6/8AM9Rg5tRjuzXbbCqDsm9Ejz1rWqNJq2HdszLVJopPIDl6Szbj3R8/mvOsjIyMq63IyLGsusPed25+Q6ADoIyMjIyrrcjIsay61u87N1PgB4DkBPGWfFxY0R82fOOJcSnmz8orZf8Ab9RERO0iRERAEREAREQBIb2X8j9JMhvZfyP0mHsZW5ixETQdYiIgyJ9Illj111oz2WMErRAS7seSqB1k1VW3WV001v"
  //       "ZdawSuusbs7HoBOkdnezlWlIMnJC2ajYuzMOKY6nnXVv8A6j18ufLkZEaV13JHBwJ5c9F0it2aCjsPqdlQe/MxqLCAfRCt7u77mcMo38dgZptT0TVNJIOTWGpYhUyKSWpYnkpJAIPuI/Oda2nndTRkVWU31pZVapSxHAKsp5ggyLhn2qWsuqLNbwPHlDSvo/P7nF5E33aDs/"
  //       "dpFhup79mn2ttW53LUseVdh/lPw589FtJquyNkeaJT76J483XYtGjYaTq+bpGQLsc96tiovoYkJco8fAjof04HqGn6jianjV5WK/eRvVdW2D1OBxRwOo/55Gcem"
  //       "y0fV8rR8pb6t3pfZcmnfYW1g9OneH3T+hnJlYqtXNHvfUlOGcSeNLs59YP5HW4mPi5WPm49GVjuHpuXvIw5+BDDxHIiZEgGtHoy8RkpLVbCIiDIiJEA8"
  //       "snIoxKL8m9u7VShdz125AD3nkJzDUtQyNTy7cq3gD6tVe+4qqB4IP19/wAt12q1X7Tkf0fS37DFbe8jlZkeHkvLz38JWJYeH43JHtJbv6FD47xDtrOwrfsx39X+CZERJUrQiI"
  //       "gCIiAIiIAiIgCQ3sv5H6SZDey/kfpMPYytzFiImg6xPSmm/Itpx6K2tvubuVVoPWc/TYcyeknHx8jLvqxsaprb7T3a0Tbc+JJPAAdSZlYWZn6Ln+lRCl9LNTfTaNu8u/rVv1+PkfPXKT0ajub6oLVSs1Uddy/9n+z1Gk1+muK26hYu1toG61KeJrp347eJ6+XAb+YGmanh6ripk4zcPZtrbb0lNnVHH08ZniVmyUpTbnufRsaFUKkqe74CIiazoPO6mm+q2m5FsqtUpY"
  //       "jgFWU8wROX9oNGOj5apWzPi5AezGZuLKFIDVsfEbjY+BnUzKL25yamt0zEUg20pdfaB90W91VB89if/wBndgzkrVFbMhONVVyxnOW62KbERLAUYsPZnWzpmSMfIf8A9BlOA+/Ki48Bb5HgG/Ppx6XvOJzonZHVzmYpwL33ycJF9GWPrW43sqdz1Xkfh4yIzsf/AOsf9LVwTO6/1pv3fYtMREiC1CazWtR/o3AvyAR6ZtqcYHra4Ox+HE/D3zZzn/avP+1agMVCDVgqaztyNzgM5+HAfAzrxKe2tUXtuyL4rl/1MaU1u+i9/wCCvEkkkkkkkkniSTxJMiIlqPmbeu4iImTAiIgCIiAIiIAiIgCQ3s"
  //       "v5H6SZDey/kZhmVuYsT1x8fJyrqsbGqa3IuO1da8z4kk8AB1MvuP2NwF02yjIfvZ9oV2ykB/Y2KOCVKfuDrvz58OHd4LsiFOil4k3iYF2Vq4LojD7FZGkqt+OECam/eZnsO5vpHELUTy7vVfjx+7te0XZ9NUrOTjBU1CtNlPALkIP7Nz4/hPw5cqBlYmfpOYabu9Tk0MtldlZIB2O621N4eH5dNpf+zvaGvVa/s+QVTUKl3dRsFvUc7Kx4/iHTyPCOyK5Ql/Yreq/fkTuBdXdW8HIjo1+/Eomn6hn6Lmm2oMroxqyce0FRYqnjXYOYI6Hp8dj1DTtSw9Tx"
  //       "UysVt1PqujbB6rAOKOPEf89Zpu0nZ1dSRszDVV1CtfWXgBlIo9lv3h90/A+K0nS9TztGyzdUDwb0eVj2bqLFUkFHB4hhx2O3A/kfU4RzIc8OkkeKrbOFW9lb1rez/fmjrm8bzD0/UMPUsavKxX71b8GB4PW45o69CP8AvAzVdoe0VOlIcfHK2ag67hTxXHUjg9nv/CPjy5xkapylyJdSx2ZNddXbSfsn32g7Q0aTWaau7bn2LvXWTutQPKy3bp4Dr5cRzS6+/Ittvvsay61i9jud2Zj1P6SLbbb7LLrnay2xi9juSWZjzJM+JYMfHjQvUomfnzzJ6vpFbIRETqI0TK0/"
  //       "Nu07MxcynfvUvuyj+0rPB0PmP08JixPMoqS0Z7hNwkpR3R2ii+rJpoyKW71V1aW1sOquNwZ6yoditQNuNk6dYd3xW9NQDz9BYTuB/hb+YS3ysW1uubgz6TiXrIpjavExszJTDxcrKfbail7Nj1IHBfidhOUu9ljvY53d3axyerMe8TL12vyTVp1GMp45d473vrqHfPz7soUm+GV6VufmU7+RZHPfGlbRXzf4ERElisCIiAIiIAiIgCIiAIiTAE9KMXKzbUxsWs2X27hV5ADqzt0UdT/0/eJiZedkJi4tffufjx4JWg5vYegH/HWdH0jR8XSaO5WO/fYAci9hs9hHQeCjoPqeJ4cvLjQtF3iZ4ZwyeZPmfSC3f/SPHQ9CxdG"
  //       "oO21uZaq/acgji23HuVjoo6D4n3biTErMpub5pbn0SuqNUVCC0SNXrGj4msYxpt2S6vvNjXgbtU5HzU/eH6jccyyMfUNJzfRWd6jLxnV63Q/5bK26qen5e6dhmp1rRcXWMf0b7V5FQY414G5rY9G8VPUfqJ14uT2T5ZdYsiuI8OWQu0r6TXzMbs/r9Wr0+iu7qahUu91Y4C1Rw9LWPDxHTyO8w+0vZwZwfPwUAzUG91Q4DKUDp++Onjy94pNleo6Tm9xu/j5mK4ZWU8vB0PIqfmOHulrt7ag6bWaqe7qj71uCu9FWw/rl357/AHR068B63TLHnXYrKNn+/Aj686q+mVGd0a/fiVfT9U1LSbbnxLPRtYjV2pYm6kjcAsjfeU8uHyOxw7LLLXey"
  //       "x2eyxi7u5LMzMdyWJ47xZZZbZZba7PZY7PY7HdmZjuST4z4kqopPm06lYnZJrk1fKthERPZqEREAREQDZ6FmnT9V0/IJ2rawUX+HorvUO/kdj8J1qcSPEEeI2nXNGzDnaXpuSx3d8dFtP97X+zf5gyH4jXo1NFt4BfqpUv3/AHKl2wv9JqNNAPq42MoI8HtJc/LuytzZ67abtY1RydwMg1jyqUV/pNZJfFjyUxXoVTiNva5VkvV/YRETpOEREQBERAEREAREmAJk4ODl6jkJjYqd6w7M7Nv6Omvf27COnh4/T60/TszU8hcfGXjwa61gfR0oTt3n2+Q6/DcdH03TcTS8daMdeezXWtt6S59tu85HyHSR+XmKhcse99Cc4XwqWZLnn0gvn6I+dL0rE0rHFNILWNsb7mHr2uBzPuHQdPmdjEStyk5PmlufQa641RUILRIRETybBIiVftH2lXAFmFgsrZxG1tg2K4wPyL+A6dfA7K65WS5YnPkZFePB2WPoYXbPL0hlqxe4LdSrIYWVnb7NWe"
  //       "JWwjn3ui/Hh96kSWZ3ZndmZ3Ys7MSWZidyzE8dzIljoq7GHLrqfPszKeVa7GtBERN5xiIiAIiIAiIgCdB7EZBfT8zGY8cbKLKPBLlDfUNOfS2dh7xXnajUxAW3Ers4nrVZ3f8AdOPNhzUsluEWdnlR9dUaGx2sssdvad2dvNjuZ8SZEkyut6iIiZAiIgCIiAIiTAImdpmmZeq5Aoxx3UXY5FzDdKVPj4seg/TjPvStJy9WyPR07pTWR9pvI3WsHj3V8WPQfE+/o+DhYmn49eNjV9ytOJ34s7Hm7t1J6yNzM1U+zDvfQn+FcJllvtbekPqfOn6fiadjpj4ybKD3nY7F7XPN3Pif+OkzIiVxtyerL/CEa4qEVokIiJg9iRBlO7R9p/Qm3T9Ms/bcUyclD/VdDXUR97xPTpx4rtqqlbLlic2Tk141faWP8nr2k7TDE9Lgae4OXxTIvXYjH6FEP4/Hw8/ZoBJJJJJJJJJJJJPEkkyIlhoojTHRFBzc2zLnzS28F5CIidBwiIiAIiIAiIgCIiAJkYuTbi2NZUSGKFCR4Eg/pMeSJhrXc9JuPVGXI"
  //       "ntk0tj5GVQw403WVHzRis8p0J6rVHE4uL0ZEREyYEREAREmAJs9H0fK1e4qhNeLUQMjI24L17le/Av9OZ8D96NomTq1pJLV4dTbX3jbdiOddW/DveJ6efCdFxsbHxKasfHrWumpQqKvIe8+89TIvMzVX7Fe/wBCx8J4O8lq27pD6/g+cTExcKirGxq1rprHqgcyTzZieJJ6mZHCIlebberL5GKiuWOwiImD0JHhG8pPaLtH6VL8DTrP2WzJkZCH+s6Guoj7vievlxbdTTO+XLE48zMrxK+ex+5eLHaPtPv6XT9Ms4cUycqs/A10sPm35eMpMRLDTTGmPLEoWXl2ZU+ef+LyERE3nGIiIAiIgCIiAIiIAiIgCImx0nT31LJsx0G5Whrj5B0X9Z5lJRWrPcIOyXLHdmx7RVeh1nUR0sdLh/7iKx+e81EtXbLHK5eDkgcLqGqY/vVNvx+DfKVWMSfPTF+h64nV2WXZH11+PURETqI4REmAJuNE0K/VbPSWd6vArYi20cGuI511H+Y9PP2fTQtBt1Rxff3kwEYhiDs+QwPFEPMD8R+A8R0KqqqmuuqpFSutQiIgAVVHAAASJzc3s/"
  //       "8Ajr3+hZ+EcHd+l969nwXn+D5opox6qqKK0rpqUJWiDZVUeAnrG0Sv667l5SSWiEREGRPkkAEkgAAkk8AAOpMMyors7KqqpZmYgKqgbkknhtKHr/aF88vh4bMuEDtY/FWydj+fc8B16+E6MfHlfLlicGdnV4VfPPfwXmemv9omyvSYWA5GLxW65eByPFVP4Pr5e1Vm9l/Iz6ny3sv5GWaqmNMOWJ84ysuzLt7Sx/gxYiIMiIiAIiIAiIgCIiAIiIAiIgCXHsJTvk6tkkcK6Megebs1h+glOnRuxeMatIa/b1szKutH+Cvalf5SfjOHOny0v1Jjg1fPlJ+WrMjtVi/aNKstABfEsTIHDj3D+zf5Hf4Tns67bVXdVbTYN67a3rceKuCpnJ8nHsxMjJxrPboteo+/unYH48D8Z54XbrF1vwN38jx+WyN68enw/fkeMREmCqiZeBg5Go5Bxsfu+l9Ddcve4L+zA4E+8kD4zFls7F429mp5ZHsrViofPex/9s5sq101OaO/h2MsrJjVLZ7+41Wk6rl6LlPXYjmg2dzLx24MrDh31B5MPn8x0THyKMqmvIodbKrV7yOvIj/7HUTS69oKakhyMcKudWvDc7Leo+458fwn4cuVW0fV8rRsh6rVsOM1hXJoYbPW49UuoPJh1HX5yJshHMh2lfeW6LNRdZwm3+ve9a3s/L98UdIkzyovpyKqr6HWym1Q6Op3DA/94z0kRpp0Za001qiZ8PZXUj2WOqVopd3chVVRxJJMi66miqy651rqrUvY7nZVUdSZz7XNeu1NzTT3q8FDuqHg1xHJ7P0H68unGx5Xy0W3mR3EOIV4VfNLq3sv3wPTXu0D6izYuKWTBVuJ4q2SRyZxz7vgPifBa/EiWeqqNMeWJ85ycmzKsdlj1YkN7L+R+kmQ3sv5H6Ta9jnW5ixETQdYiIgCIiAIiIAiIgCIiAIiIBIV2IVBu7EKg8WY7ATsWBiJhYWFiLyx6Kqtx1ZVAJ+J3M5x2WwftusYrMN6cIHMt8Cy8Kwf4uP8M6jIXiFmslDyLhwCjlhK5+PRCUjthgFLqNRrX1bwKMjbpYg9Rj5jh/DLvMTPw6s/EycSzgtyEBuqOOKuPI7TjxruxtUyW4hiLLx5VePh7zlET0upux7rqLl7ttLtXYPBlO3D9J5y2pprVHy6UXF6PcmdF7LY3oNGxWI2bJe3Kbydtl/0gTnaq1hWtOL2MtaDxZz3R851vHqTHoooTglFVdK+SKFkRxSekIw8y0/xunmtna/BafE9JXtf0BdQU5WKAuei8RwC5KryRjy734T8PetikSFqtlVLnjuW/Ix68mt12LVM5xo2s5GkXtTcthxHsK5FJBD0uDsXRTx3H3h185fzm4S4v2031/ZPRi302/qFDyI679NvHhK12m0/S7w+XXl4dOcg/aVvainIVRyIB3746Hb3e8VD0+QaBjG1/s62G4VFj3BYR"
  //       "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"
  //       "ETwbhERAEREAREQD/2Q==",),fit: BoxFit.fitHeight,height: 3,),
  // ),
  decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage("https://th.bing.com/th?id=OIP.audMX4ZGbvT2_GJTx2c4GgHaHw&w=244&h=255&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2",),
      )

  ),
  );
}

 var imagesInfo=<String,String>{
  "Settings":"Setting",
   "Payment":"Payment",
   "Love":"Love"
 };
Widget buildListView(BuildContext ctx){
  return Column(
    children: [
     ...List.generate(imagesInfo.length, (index) =>  GestureDetector(
       onTap:(){
         Navigator.of(ctx).pushNamed(Approutes.setting);
       } ,
    child: Container(
      child:Row(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 5.h),
            height: 30.h,
            width: 10.w,
            padding: EdgeInsets.all(7),
            decoration: BoxDecoration(
                color: AppColors.primaryElement,
                borderRadius: BorderRadius.all(Radius.circular(3.w),

                )
            ),
            child: Icon(Icons.delete,color: Colors.white,),
          ),
          SizedBox(width: 5.w,),
          Text(imagesInfo.keys.elementAt(index))
        ],
      ),
    ),
  ))
    ],
  );
}