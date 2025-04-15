// Detectar colisão com a parede no eixo X
if (place_meeting(x + hspeed, y, obj_wall)) {
    hspeed = -hspeed;  // Inverte a direção da velocidade no eixo X
}

// Detectar colisão com a parede no eixo Y
if (place_meeting(x, y + vspeed, obj_wall)) {
    vspeed = -vspeed;  // Inverte a direção da velocidade no eixo Y
}

// Reduz a velocidade gradualmente, como no seu código
if (speed > 0) {
    speed -= 0.02;
}

scr_bola();  // Chama a função para desenhar ou atualizar a bola (se for o caso)