# Radiometry




Conceitos relacionados com luz.
habilidade de uma superficie de um materia pegar raio de luz de uma direção e refletir em outra
A pointe receives energy from a light source and reflects em diferentes direções, parte é refletido na difereção da camera é projetado pela lente da camera em cima do plano da imagem, onde tem valor intesidade na imagem correspodente a esse ponto

A iluminatção pode variar, ser diretional ou pontual, mas com certeza existe uma quantidade de parametros que a define.

Image Intensity = f(ilumination, surface orientation, surface reflectance)
a orientação da superficie é dada pela normal em um dado ponto, e a refletnacia da superficie diz respeito ao material que a surpeficie é composta

Intesidade de Imagem é um número que depende de varias
Para entender e interpretar a intesidade de um pixel numa imagem precisamos compreender coiceitos de radiometria, que quantifica  brilho de uma fonte de luz, quantifica a iluminação de uma superficie, surface radiance measure pointe brightness of a scene e refletancia

----

Renderização é mais do que cor, para ter uma imagem completa é necessario saber também a intesidade de luz em cada ponto da imagem, ou seja quantidade de luz incidente na cena que atinge a camera. 

Radiometria ajuda a criar system e unidades pra radiação eltetromagnetica, diffractioin and interfecrente are too little effect, the ``geometric optical model of light`` photons viajam em linha reta, (particulas de luz), representador por raios, nesse modelo o tamanho a onda é muito menor que os objetos, para não se preocupar com difração e interferencia

A ideia basica é fazer
Varios processos fisicaos convertem ernergia em photons, como lamapada incasndesten que torna calor em luz (blackbody radiation), nuclear fusion in stars.
Queremos quantificar quanto de energia em total
Energia de photons colidindo com um objeto que estamos olhando é equialente ao que chamamos de brightness of the image.
Pode ser um Film, olhos, CCD sensor, solar panels, sunburn, eu
Stead State

Radiant energy = total number of hits of any ray hitting any surface on the scene, sobre a duração completa da cena.
Energia Radiante considera o total de enerdia de todo os photons hittando a cena

Energia de um photon:

$$
    Q = \frac{hc}{\lambda}\\

    h \approx 6,626 \times 10^{-34} J \cdot s (Joules por segundo)\\

    c \approx 3,00  \times 10^{8} m \dot s (meters por segundo)\\

    \lambda \approx 390-700  \times 10^{-3} m (meter)\\
$$

Quanto estamos interessado na evolução da energia radiante com o tempo, consideramos o fluxo de energia radiante ou randiant flux, hits per second, how many photons are hitting the surface at every second

$$
flux =  \phi = dQ/dt [J/s] 
$$

Irradiance é number of hits per second per unit area, isso é mais especifico ainda, para gerar uma imagem é necessaria saber onde na camera esses photons tocadaram ou seja a area é necessario

$$
irradiance = E = \frac{d\phi(p)}{dA} [J/s \cdot m^2]
$$

Para renderizar, é uma estimation de Irradiance, para ponto da imagem qual o radiant flux per pixel

radiante energy = # hits
Radiant energy density = # hits per area
Radiant flux = # hits per second
Irrandiace = # hits per second per area (radiance flux density)

Units:


Isso ainda não é suficiente para descrever

