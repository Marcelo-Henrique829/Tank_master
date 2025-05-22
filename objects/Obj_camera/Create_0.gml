resolution_width = 2048 // resolução padrão
resolution_height = 1152 // resolução padrão
resolution_def_scale = 1//escala da resolução da camera
resolution_scale = resolution_def_scale
global.view_width = resolution_width / resolution_scale; // definindo o tamanho do width da camera
global.view_height = resolution_height / resolution_scale; //definindo o tamanho do height da camera
alvo = obj_tank_blue; //definindo o alvo da camera
vel_cam = 0.2 //velocidade na qual a camera segue o personagem(só pra ficar bonitinho msm)

window_set_size(640 * resolution_scale, 360 * resolution_scale); //definindo o tamanho da janela

display_set_gui_maximize(1920, 1080); // configura o GUI para uma resolução maior

surface_resize(application_surface, global.view_width * resolution_scale,global.view_height * resolution_scale) //aplicando a resolução pra superficie do jogo