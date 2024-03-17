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


Isso ainda não é suficiente para descrever, é ncessario extender para o angulo
em 2d temos radians


Solid Angle: razão entre a area subtended on the sphere to radius square
a area projetada
Explain better

# Radiance
radiance $L$ is the solid angle density of irradiance

$$
L(p,w) = \frac{dE_w(p)}{dw} [J/s\cdot m^2\cdot \text{sr}]
$$

E_w denota que a area de superficie diferencial está orientada na direção de $w$

Radiance is the energy along a ray defined by origin point $p$ and a direction $w$

Caso não esteja na direção de w entaõ precisamos adicionar um termo cos
Light comming in $L_i$ might be very different from light  going out $L_o$ of and object

Randiance is a fundamental quantity that characterizes the distribution of light in an environment
Computing flux per unit area on surface due to ALL incoming light from all direction:

$$
irradiance = E(p) = \int_{H^2}{L_i(p,w)\cos\theta dw}
dw = \sin\theta d \theta d\phi
$$
Onde H^2 é o hemispherio tangete ao plano definido pela superficie

$$
  \int_1^9\! \cos{x} \,\mathrm{d}x \textrm{this is textrm}\
  \sum_1^9 y                       \textsf{this is textsf}\
  \prod_1^9 z                      \textnormal{this is textnormal}\
  \bigcup_1^9 w                    
$$

# Equation
the recurse terminate on emissive light

### BRDF how does reflection fo light affect the outgoing radiance
called scatering function, reflection is o processo pelo qual luz indidente numa superficie interage de tal maneira que não afeta a frequencia da onda ( isto é a cor) a aparencia da é determinada pelo modelo.
Podendo varia na frequencia absorvida ou refletida, quais a direções que a luz é refletida fortemente.

geometric optics, defraction is not accounted


Ideial specular, D
