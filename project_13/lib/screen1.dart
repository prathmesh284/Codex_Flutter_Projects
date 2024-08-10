import 'package:flutter/material.dart';

class Info{
  String name;
  String imgUrl;
  Color color;
  Icon iconFav=const Icon(Icons.favorite_border);
  Info(this.name,this.imgUrl,this.color,this.iconFav);
}
Info i1=Info("your story","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtML-PNknoMimfxqKc-YGvgycRGuWNslOjSg&s",Colors.red,const Icon(Icons.favorite,color: Colors.red));
Info i2=Info("pm.modi","https://images.news18.com/ibnlive/uploads/2022/08/narendra-modi-2.jpg",Colors.green,const Icon(Icons.favorite,color: Colors.red));
Info i3=Info("baba_vanga","https://images.news18.com/webstories/uploads/2024/07/1-2024-07-856363c8f517186611da2f30b56e8d5e.png",Colors.red,const Icon(Icons.favorite,color: Colors.red));
Info i4=Info("babubhai","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZRlcZFpTy7aL1J_zyShDr5iEd_fhi18QAIg&s",Colors.red,const Icon(Icons.favorite,color: Colors.red));
Info i5=Info("mr.shak's","https://pp.userapi.com/c626921/v626921569/331c7/0_LF_1qRA0c.jpg",Colors.red,const Icon(Icons.favorite,color: Colors.red));
Info i6=Info("udya_shetty","data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMSEhUSEhIVFRUVGBUYGBUWFRUYGBUYFRUWFxcXFRUYHSggGBolGxcVITEiJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGxAQGi0fHSUtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSstLS0tLS0tLS0tLS0tLS0tLf/AABEIAMIBAwMBIgACEQEDEQH/xAAcAAAABwEBAAAAAAAAAAAAAAAAAQIDBAUGBwj/xAA9EAABAwIEAwUFBwMEAgMAAAABAAIRAyEEBRIxQVFhBiJxgZETMqGxwQdCUmLR4fAjcvEUM4KSFaJDo9L/xAAZAQACAwEAAAAAAAAAAAAAAAAAAQIDBAX/xAAjEQACAgICAQUBAQAAAAAAAAAAAQIRAyESMVEEEyIyQWFC/9oADAMBAAIRAxEAPwDWwhCMI11jlCYRaUtAoARCCVCCAEwiTmmySgBJRJRCBCAChEjlCEAEiKNBABLP9q+0jcI2BDqrh3W8vzO6Kdn2cMwtPW+5M6W8z+i43mWNfWqOqvMl078OQHRVZcnBf0tx4+TFYjGPrPNSq8uJvf5AcAkkSbJmgLiLyr3BZcdyQFz5T8m6GNvohUcI48FNoZWZuIlXmFwoCnUsOFDmao+l8lCMiad1GxHZxwux09CtYAAkkBNMm8CoyWBzerhQaegXO95CuMD2oqsc1ziS0xI348PJLzXLG1BPHgVkJNN+kzYwfBWLI46MWXAkdtweJbVYHsMgp9c57DZr7OsaTnH2dTadg60LowW7HPkjnzhxdBgI0AjhWEaChBGggKCLUQCcCIhAUJQRoIChQCNBBAUBBBBAUEjQQQFB8PMfVIKXwRIChJCACUiQFBFqKEpBFhQiEkpyEziXhjHOOzQSfIEpBRyDt9nBrYl7Qe5T7jeRj3j6z6LO4OmXlHjH63OcfvEuPndSsvs3zXOyyuTOhjikqLTA4Zrep5q3w4VRhXq5wbxaVmOjipItcHRBsrnBYQG0ADiSqzCVLiNlaUHAKSLWTaOTMdJBPS1io+JygC49FNGZaQLWiIUarjSeCmQ+RTVqELI9osLB1xbitxiHyqTN6GphhAssbiZGnUgAgwR8+C7BkmOFeiyoIuBMcDxC48Whrl0D7OcRNJ9Pg10/9h+y0YZVKjkZomxhDSjCNbTLQUIQjhCEwoJBKREIATCCNBIdBwjISwERakAiEIS9KGlOwG0aXCGlAUJAshKXFkUJAJhHCBQQFBaUUJaKEBQhVfagO/0lfTuabgPMX+Eq2TeI06Xavdgz4RdA12edSRMKZl7pb4H5pnOabW1XhhlsmD04JOXOuR0XMmqbRviWtFyuMG4lVOGpFXeDgBUm3Gy8y5hVq9p02VLgsYA4N1AAkCTwkxK0mYVId7Ok5kCO8XCSbGSOSLNEWnKrCwuEDgCSpr6FJo7xVRn3aykym5h99p7pAiBzB4g8lz7F9qalYkNcYEnfkpplMs2tnQcbiqYnSZVa6uD+6yOX5yIBGgH8LidXkVIdnMm7fQqaoofqGKz7Lgw62+6fgVoPs0wLml73W1tEDoHWKj08bS9lRb7Mv16zUmDIDnM0tmzYaAZ5lXXZ7FaSXxpY176OkbBoPcPkAPVTi6aZTOCyJ14NZpStKOEa32c4SGo4RowmAWlDSlhCUAI0ok5KNAEPAYkVKbXjiL9Dx+KkLK9kcwuaZ+9JA5OHvBapJMKAgjRJjoJGgggQEEobeaSUAFCBRoIATCEJSCLAbhN16eppHMEeoT8IQgDgna3KX0K5a8ATcAGRHiq/K29/yK6z9pLsMKLBXa7U4kMLANQjcnoJHquZ4fL3MaHkhoqWa68RMTPr6LFmhUtGzHK0CrmDW2JULEZw4+6YASc1yp9Ko6m6A5p715G0yHCxBB3UE0eo8lnaouUiScxqb6yrjJMwdqadYc53Abx1PBZ40VNyyQ9pjbkoMkm7OhZ9gHVcOKvsGVCy577pA4y0DvLntWkdRcIAcSQGyAJ4Dourdnq5cyPgqzNOyrSS+nAndhsP+KEzXkwclaMJg6Q4tkK0p4bulxGytsN2TqONrDq4LT5V2RDffdqngNvNNMoXp5MockpPNxIZyIHvGAdKscspn2lQE90kGOrhv8FeY3DBh0gQBYQqrBwK4nZwPq24+qk9qi1Y/bkjcUDLWnoPknExgP8Abb4J9dHG/ijjZFUmv6HCEIBGFMgBBGggQlBKQQBzVlQ06gc22q4/vb+o+S2WDz1j3NaQQ50RaxlZnPcuNOpUpfhPdPxaU/2YeH1aZNtzHUAy31UUyTRtQUCjSVJABBGEaBAGyIpXDzSYQASCOEIQIJBKRIAIokaJAym7X5UzEYSqHtlzGPew8Wua0m3jEQuO4fFEtFAk6ZLgOAJF7dV31q4525yAYPEB1OfZv77PykHvM8vkVnzx1aNGF/hnsYA4kGRYDrYASkYfCACDdWFSiD3uBur/ACplPT7oWSTNmLFzfZmaGUOdsD57IBgYYA8StnmT9FIuaB081i6uJ0gyJKrLZ41A3fYbGNNRrTtInwK0uNphr3AmAJvwXKuz+cMpukmCeC0ucZ4yswMdLmuIJvExcAnkkjRDKuO2XWLw7zLqLgOXIprKs9eHaKgLXDcH6KBS7RgN0hoDQIAHCFXYvN2V7e68e6/iOh5hOgeeJqsVitSrMOZrMA31iJ62+qYo4k6Br97ihgnk4ikPztPxClEqzTuNnSKVLSA0cLJLK7HEgOBI3AUDOcaQRRp/7jxJI+43hHU8PApjJ303UaZae8RBjeYk/Ja5ZlDSMGL0zyrk2XaCZwtQ+64yeB/EP1UiFfCakrM04ODphQjhCEcKdkAkEcIIAqO3WFlzKoIOoaTbiLj+dFiabjTqSLajI6PaL+rVte0HaOhWpmmHEmQQdIGyxmYaXWaTJ2MGzh7pn4Kr/JY+zfZZV10mumZH8ClQsp2OzKZpH70kDk4e83+clqwVJMhQAEEcoinYCiLJKUTZJRYgIijQKYBBBGECiwEwgjKJKwFBVXabJRi6Bp2Dx3qbjweOB6HYqRmGaUaA1VqrKY/M4A+Q3WSzP7UsHTkUm1Kx5gaW+rv0UZSVbJxi70YIsfSc6nVaWOaSC1wgj9k7hMbpMcEx2l7aOxz2ufRZT0AgaSS4g8HOO8fVV1LESsU6vRtxya2azE4rXTInYSsli8SDYIY3FGIadxCjYbDON5A8VUy2c3IcweD1uWqpYOmd3X2AP0HFQstw7B70zHAwFc4THUKLu4Bq8JPqUEoQ0CnkNSBveSNVh6clWZt2efQcC1+uTyiP2WuwuZ+1vB8Tw6BR8fXaBe+/6JljxxUSlbiCQATcASpeT1j7bUIJpU31BJtLGkifOFW1y07KgzTEOa4CfQ/BNa2Zsj1RtezGfF1dxrvJc8zq2O0R4dFcVcMcNXa1tTVSqDWzmJdDgfAT6rAPpd0Pbu2/iFqOzVR2KcxxJ00xA6km6j+2aMMlVHSKlImm1wMGxB5JeFxOqzrO+B8E/R71PyVbjzdsDZWwm4jz4I5FvstUFAweL72g35HrvCnrXCfJHJy43jlTAgggp2Vker2bohri15kAkbC4FuCxtOkapqMc4x3QOhIn4WXTXPkHvM2PBc6ylk1HxF6pH/WB9FWuixoo2a6NafdeHHyq0/eH/IXXRMNihVY2o3ZwBjkeI9Vne2mVyRVZYvt4Vad2HzHdPimux+YX0fdqd5vRw95v85JRHNUawI0UI1ZZXQfBEjiyTCLCg0ElGiwDJSVX4nOqDLF8kcG3VZie1jB7jC7qTCdMRo1Udr8Y+jgq9SlZ7Wd0j7pc4N1eUk+Sz+J7V1z7ulvlPxKpsxzmvWY+m+odLwWkCACD0T4sa7OeY8OLiXuL3ficSSfMqE9W+PpyJ4j+FVL1jyRo1RG05SqwmigqqLEThVBhTqL590qnanaNYtKiMvqLyLGynYUtB1AAlUD8QTx3T9LEkAid0hqWzYDOWge6BvsOChHE65J29P5wWfxeNIAA5RKivzRwEfBNWN5LLdtcglouZ2ScThGteKjzwFusXKi5bX1XAk/FPY10hTdx2RjUuxdPEctit92Sw4bTaBY/qudZU3W5jRznyF11LLe61tuqrNGBbNjhPcCrMaTN1Nw9SwUTHiU0aJEfLBNfoAT6D91eqqyOld7/AAb9T9FarXhVI5HqncwIIIK4z0WOrqw+SwPZ0S5p5ve7nu4rb4yrppvdLDDHnls0rG9lABonfRIET1Kqb0XVbLnOaJqNawbumOjpbBWOy6jpdW02NN7azR+V8Ej4wtxVd/WpjkJ+Dv0CrMky3Vja7eBoPH/2HT8C1Ri62SmrLWm/UARxAPrdHKZytg9kwFxDgCIj8JI+inNwn5t1Y5JFSixsnu+f0KQnzh3RaDfn4pp1Bw4FPkg4sbqPABJMACSeQWKzrPHVSWtltMbDi7q79Fpc2IILHbAS7qT7jfW6yeYYMM0xcnfmTzVkfJB6Kxx8kgK4wGSOqXeS0cBFz48krMMmLNIBnUY2gCxMk+SkRKCowqLUVlisO5tiCPEKvrDokSRR4sta508TPhO/xVBiQNRjaSrqtubX4yoxwzSZInos+SPIvi6KVwT2Dw+sx0MdSOCsMTloBB2adx14QlUKOmw7p06h+Yi0fP0WWdx0XRdkB9PhyTRVpXewiXWPEgbqvfUbwEquNsbG2vOwT9IRc78v1SGVgnPaSrVFEW2JrPm8qOxhe4NaCSbAC5J6KWygXkNaJJWt7OZX7Aip/wDILg8vBTUHJ6IOaSNT9nvYz2DRVrj+qe8GHZnKfzKu+0fIRSqiswQysTLeDXiCQOhF48Vs8oz4PGmsYPB/P+5U/wBpeIPs6FL8T3PnowQIP/JXSglCivHJ8jJdl8s73tIG+jwkTK3DKd28hAtyAWY7PPDbeC12XgErE0dfClReYQyEnHCyVg2AIs0MNJTj2Tl0DJR/Tnm5x+inprLMPFJg/KD63TpatsF8TiTdybAgkoKZGhOeEnC1YYJLSwDjLrKg7P09JfNtLWtk9Z48FpGZ1g6zAw1Gz3iQ7u96TEzxUPEYCiTarpkyWmCDbaRyVT2qLapimEOrno36D/8ASV2axI/8g9tu9Td/6uYs1mNGvhzoa8OBiXAyY3j4BMZHjHU8fhzM6m1QY6uH6KDtaDls02HqTUfwhz/mT9VYM2Hks7/5JlOrUDpmXEAcZP8AlNYbtVJuwabxvqHKQnJ7E2aLCusTzc4/FStR077lYfC5/WYZIBpztG3mrHF9o21aJp05FR5LR0DrF3k2UJ2HJBV63tajnTI1E9DHdHwHxUengmmp7S58dp5pNV7aYbQZuQNuA5nyU1joAAWpdGdsdBAv6fqmHXMnYfyEqo6fokPI57bqVCGcczWxwIBOk7/C6wuYUXAlsEEbzw/dbHNsxGHp6i0ue73GRc/mPJoWUq4irUu8Gd5i58UmSRRVcDAIFuJPEnmqzD4nS/2dUQ7g7gVqX0jyKqM7yz2jLDvNkj6hVSTW0WxkumGML7U6JixM8BCrMRrMNEdwmHDrE34iRPmUWGx7nBsGJbDut/2U1rZgBVOCm7ZdypUUlbAu5yoT6cb2XScm7IVKp1VD7NvW7j4Dh5raZd2NwTImk2qR96r3vONkPD4Ie6kcBZSLrNBd4An5K8yXszWrGXB1NnNwIJ6NB3XoFlBjRFNjKbR+FoaT6Km7UEBjIGzjw6JxweWRebwYfA5XTpCGN8TxPiVKeQAnKjz4eCiuWhRS6Krsdp1Uxn7nPptMkimTA5B0THoElxTTcRya529uHxRJaoE6dldQxuggrQ5bmriNYHdmJPULMYuhpdtEgECZieqv8kpf0ATxf8AubPTo6eGTZ0XL6pICdzSnLHeCg5VVsFZ4unqbZRXZsa0WFMQ23CB6BG0cEmlUljTzk/JB5uuhHo4b72E/e38hBNuFzZBSFZzB2OY6mJZ3rd5pBB59VNw+d0wNLTpi95B+Kaq5TS2bMJsZJTP3nLOsckXSyxaJtfHyfaOc+HWOiCTI3AScHUpf6qk4uLWMpVSC4gODnOOlro2PFVWIaKUhpJi09VXkquUqZZHHas0prUnAOfUbqvebmDZEa2ELtWstke6JN43mFmoROeEnOyTwo0oxGGAcBUJk2sYHVSKL6TNdZhDmgd2ARc/dE8ZWPdUMWWly/D6/Z0h7rAHPPDUeHzVuJ2yjLFRWiblNIlxe73nXPnsPT5q3mxPl+qh4M7u4Ekjw2HwCcdU29fVbDKPOcB5XTeHj33+6DZv43cB4Jls1DyaLuP0HVSCC6DwFmt5D9UAK0ayXOMk7mB6DolOot4C54cUIi3LdAVbFAhs0G8h1/RJdg22gCdxtaE7TOpwYBfc9BxJ87BKxju6HtADTMczpMJNpDVmExvYYnEVHNeG0XO1NgSe93i0DhBJCtcBgKNAyxskfedc+vBaUF33x/CFBxGXagY3NvHmoqKJuTY1hsw4AEuNgFosHTdEusTwUXKMsbTExqcdz9ByVm/qfRMiAjzKr85pA0nzwEjxH8KkvqxtZMVnTv/meiYGHrkcFEqOWkxuSEkup7ciqbHZY+mA57YBMDjJ6BMZWVKiQKkbmP5yTr6Z8B6n9lFLQLj1UGyVDWYuktPTj0K1eUYcf6anbiSsjXElo5roOBpwxjGtc50Q1jRJcQJ9LLDm+50fS1VsmYAGFc0iYTGHw7QCSeIDZETaTY3Cfrd1pVVNG6MotWmScuMsngS6PX9ZUrRJEdPoo2Xn+iz+0fH/KmM39fkt2P6o4uV3NjRQS46olYVnPzWndNV8QGNJi/DxSDHNQca6XBvK58UZZcY2GKPKVFLm9WqwB7IINiCJ32Umnhzol5AdpJPKYkN+QUvEkAAG8mSOguPjCrari90HnJXNbZ01oQ17tAcRFpj901Tdqbqggb3UjE3OkeabxAgBo4/JFkHsPAEVLtuAQPPkttgqPsqRneCSebjsqDsxgpO3db8XG5PlZaXEvuxvAmfJt/mQt2CPxswZpXKhdNmloaOAA+ibAdUfpZxt4AcUtwLjpbc7eHBFiKraI9my7j7zuXQLQUkstFqbPdbufxHmU97PrtsFWsxkWHBPtrDclAEnTKQaeo24fy6QHE2G5Uum2BA8ygQvB0NAtxuTzKYdhKeqQDuTE2k9OCddVttZNVsUGjU7wAG7jwAUWhoeebTPlFyeiXSZfU7fg0bDom8M1x7zonkNmjkP1T3hdNIY6ankOSTJ8k0XDxKK/K6BAO9vVIa0n6lO/zew8TxVL2k7UUsINMGrWOzYIY3qT9N0WOrLttJrWucSAB951gPAH6rKZ92ww7Q6nTb7dxkF2zQeerj5LC51n1fEkmrVOngwWYPBvHzVThGF7dWtw9FW5Uy1QLmvmVR3EDoAqmhjK5dO7JvI68FFxGMIloM9Vtcjdro0nQJ0uvAvZu/qqpTvSJ1REyTDOxFejTEM1us54tcxMcl1WuaOAGlrnmrUploxLoAbLgAGDYAkSTwEFczxVUipAsaOjS4cQX1CPSQPJXVLM3VWv/wBQ9z2tJAY2TpZLOI90iAVXVu2TU2lSJlTMqj9D3VA402w0OGol+vu0w4bki8lWGUY1xAovdLoebi8CwBPEh1vNVNehQpvA93XSDhJ1BusAs2uHQL+Kfw4LK1EkBjAagc4u1ADubPO8u1XUqsiptbRtMqf3QOA0wOQAEj1lT31NLS4/5lVuTVNVPX912x9ST4KVh+87UbsbJHUjjHwVseipvYRpHdxMm8DYTw8tkE6aU3ndBTAyvaDLKNJhqioQRswgGTwErIAhvecY4n6D0hXHarHa6ume7Tu7x4D+dVkqlc1H9B8VjzTvRsxRUFY/XrTLjx2+iTh26Wlx4pl3ecG8BunsQ6SGhUMtE0RNzx+Sbpf1H24mB9FZYTBa2ue6QwWtYkDhKk5NgwXag2w2HVXY8Llv8KMmZR0uy+y3DinTAHDc+SJlM1HuI2s1s8hcn1J/6qXRwpcNIsJufJOYrFsoNMXj4nkuglS0YW72HiXCgzQ29R2/Sdv51VTh8MTd25MlRcLQxlWoazjTDXTDC64HCeEpvNMxxFCS6m6OYbqHqEJgW4wyS+lpF7RclV+WY3E1m+0bQdpixPdn+0HdCjnJFZrKrHU9N4cPedNr7EDf0RyQUXtGkWwHDvvvH4W8AUbqzgS3kYPHw+qGJoe1IqMfHd0kbg3ny3SHVfYs7+0kk8/3UbdhSE4vGtYNTjYfHwTeXMc8+2qC8Qxn4G/qVV4Om7EVNbh3WmzeH85rQscB1PwCmIktd/hGCT+yjVKgaNT3Bo/EdvLmm8PWdUPcBaPxu94/2t4eaXQEpzwNzfkLk+SlNpGATaeHPxKNmEaza/XcnxKOrU3jYD0hRbsdEfGQYbEDe3wUavSDhDmg+IBTjKmqSkVnixPifLh8vVMZUZj2YwjwdVINtLiwlvXgsFnGSMFqDy1g2Drz5rouZAuovM3jV6FYXEPk+CTSokmzH4vLajOAPgVpMlxT6OANZzO7TqtDTMOdqd3hHLYKTgMlrYrV7LT3YkudG91o8V2SqVMI3CVajGBjtQc0ze9nDiJKz+3u0Wc/JmcFmtOu5rXRSlxOtx2B02Mb3b/7I2ZzSp1ajGjVTqOuQ77vCx3jiOIU2l9m7m2dimdIaZ+asW/Z9RL2l9Z5MAmGgSUcJUPlEj4HMqIeC7S5mqp3WtJe8PADWNB2iLHhK1WCyH2z/b12ljAGilhtUhjWzp9odi6SSepUzJuymHw5FRrS5/43XI8BsFdgX8lbGJW5DdVhI0iwMSOgGwTxJDQBab+QSKkkWTJwryNRf5BSZFEttURfdBMDLz+JBIZy7NHHTUP5iqnAbFBBc+XZ0fxDmB+94pyl7zvNBBQGzUZu0DDtAEDu7W4KTkbR7JtuCCC6kPqjlz7ZoaQ/pHz+S5/2nqHVTubu59EEFN9CiTsqqG1z6q9wxk3/ABfVEghdB+lm7j0+CRm9FrqLtTQYBIkAweYlBBREuzKdn6hmJMeKkdpXHuCTElBBSQyzysRREWsFKoC4RIJoTKSqdWNc11w0GAbgX4A7LSZaO+P7giQVZIsW/p81Fqe4/wAPqgggCtw53T2JH9PzCNBTEitxn+0/+0/JYKtsfEI0En0TRcdiz/u+LPqtLinHUb8vkEEFBAwwfp8lY8WeH1KCCZEtqPuhK4+vyQQQiQp2385IIIJMDIZvj6or1QKtQAVHwA91u8eqCCCwN7OdNvkz/9k=",Colors.red,const Icon(Icons.favorite,color: Colors.red));
List<Info> info=[i1,i2,i3,i4,i5,i6];

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: info.length,
              itemBuilder: (context,index){
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                    margin: const EdgeInsets.only(right: 5,top: 5,bottom: 5,left: 1),
                    padding: const EdgeInsets.all(2),
                    decoration:BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(1000)),
                      border: Border.all(
                        color: info[index].color, // Border color
                        width: 2.5,         // Border width
                      ), 
                    ),
                    child: ClipOval(     
                      child: Image.network(
                        width: 60,
                        height: 60,
                        info[index].imgUrl,fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(info[index].name,style: const TextStyle(color: Colors.white),),
                  ],
                );
              }
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: info.length,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context,index){
                return Column(children: [
                  Container(
                    height: 250,
                    margin: EdgeInsets.only(bottom: 10),
                    child: Image(image: NetworkImage(info[index].imgUrl),fit: BoxFit.fitWidth,),
                  )
                ],);
              }
            ),
          )
        ],
      ),
    );
  }
}