//cube(20,center = true); 

base_height=5;
image_height=2;

difference() {

scale([0.5,0.5,1])
 union() {
translate([0,0,3]) 
linear_extrude(height=image_height)import(file="sfd_keyring_image.dxf");
linear_extrude(height=base_height)import(file="sfd_keyring_base.dxf");

}
translate([62,15,base_height])  cylinder (h = image_height, r=4);
}
translate([62,15,-0.5])  cylinder (h = base_height+image_height+1, r=2.5);

 }