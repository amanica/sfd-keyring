//cube(20,center = true); 

base_height=3;
image_height=2;

difference() {
union() {
scale([0.5,0.5,1])
 union() {
translate([0,0,3]) 
linear_extrude(height=image_height)import(file="sfd_keyring_image.dxf");
//linear_extrude(file="sfd_keyring_image.dxf",height=image_height);
linear_extrude(height=base_height)import(file="sfd_keyring_base.dxf");
//linear_extrude(file="sfd_keyring_base.dxf",height=base_height);

}
translate([62,15,base_height])  cylinder (h = image_height, r=4);
}
translate([62,15,-0.5])  cylinder (h = base_height+image_height+1, r=2.5);

 }