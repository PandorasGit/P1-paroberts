GDPC                                                                                P   res://.import/LauncherDirectionSprite.png-3f6c844460bc21361e320abb5f4d52ee.stex �            ��N'JJfe|�
$_|L   res://.import/ProjectileSpriteTemp.png-1705476f720fc3a63c261b1ff17410cc.stex`      $
      �7�I@�d�7�ڜ�<   res://.import/bomb.png-ef4d6b215e4f30540e85e8480230039b.stex0)      �      ����";���%� @0<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex@@      �      &�y���ڞu;>��.p@   res://.import/stoneMid.png-ed1a29114c0eea42779b1c348253f455.stex0;      �      㣬�#������듬_6   res://HUD/HUD.tscn  0            �ٿ�JG:މY4֞z�    res://Launcher/Launcher.gd.remap�H      ,       =Q��:U/>|�ƻJXa   res://Launcher/Launcher.gdc P      '      ����	/�",=��RF   res://Launcher/Launcher.tscn�            �H������&���4   res://Launcher/LauncherDirectionSprite.png.import   �      �      ˧}N?�OM��@��38    res://Projectile/Projectile.tscn�      �      ��Y�#�^)�2' �0   res://Projectile/ProjectileSpriteTemp.png.import�$      �      !�Aa��`��bT��   res://Target/Target.tscnp'      �      �;~�*6f�C��2�\   res://Target/bomb.png.import�0      �      ���@XQ�U�9���c   res://World/World.tscn  �3      �      D�L�,���ԝֽ� �    res://World/stoneMid.png.import �<      �      ��X�9E�m��j   res://default_env.tres  �?      �       um�`�N��<*ỳ�8   res://icon.png   I      �      G1?��z�c��vN��   res://icon.png.import    F      �      ��fe��6�B��^ U�   res://project.binary�U      �      �c��J��ڶ�`س��    [gd_scene format=2]

[node name="HUD" type="CanvasLayer"]

[node name="RichTextLabel" type="RichTextLabel" parent="."]
margin_left = 3.0
margin_top = 762.0
margin_right = 195.0
margin_bottom = 834.0
text = "Space Bar to Shoot
Hold Enter to increase power
Release to Decrease power"
      GDSC         1   �      ���ӄ�   ����Ķ��   ����Ӷ��   ������������Ҷ��   ��������Ӷ��   ��������Ҷ��   ��������������Ӷ   �������Ķ���   �������Ķ���   ����������������������Ӷ   ���������������Ӷ���   ����������Ӷ   �������Ŷ���   �����׶�   ���������Ķ�   ����Ӷ��   ����¶��   ����������������Ҷ��   ���������������������Ҷ�   ������Ӷ   ������Ҷ   �������������Ӷ�   ���������Ӷ�   ������������Ӷ��   ������������Ӷ��   ��������   �������ض���   �            �������?                �     d     �����yV@            adjustPower       launch                            	                        !      '   	   .   
   5      6      <      @      F      J      K      Q      U      [      _      `      f      j      n      q      u      v      w      x            �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   3YY;�  VY;�  V�  Y;�  V�  Y;�  V�  Y;�  V�  Y;�  V�  Y8;�  V�  Y8;�  V�  YY0�	  PQV�  �  �  �  &�  �  V�  �  �  YY0�
  PQV�  �  �  �  &�  
�  V�  �  �  YY0�  PQV�  &�  V�  �
  PQ�  (V�  �	  PQ�  YYY0�  P�  QV�  �  &�  V�  W�  T�  �  �  &�  T�  P�	  Q�  
�  V�  �  �  �  '�  �  V�  �  �  �  �  &�  T�  P�
  QV�  ;�  V�  P�  R�  QT�  P�+  P�  QQ�  W�  �  T�  �  �  W�  �  T�  P�  T�  R�  Q�  �  �  �  W�  T�  �  �  �  PQ�  W�  T�  �+  P�  Q�  �  Y`         [gd_scene load_steps=4 format=2]

[ext_resource path="res://Launcher/LauncherDirectionSprite.png" type="Texture" id=1]
[ext_resource path="res://Projectile/Projectile.tscn" type="PackedScene" id=2]
[ext_resource path="res://Launcher/Launcher.gd" type="Script" id=3]

[node name="Launcher" type="Node2D"]
rotation = 0.0174533
script = ExtResource( 3 )

[node name="LauncherSprite" type="Sprite" parent="."]
texture = ExtResource( 1 )

[node name="Projectile" parent="LauncherSprite" instance=ExtResource( 2 )]
position = Vector2( 0, -20 )
rotation = 0.785398
gravity_scale = 0.0

[node name="PowerMeter" type="VScrollBar" parent="."]
margin_left = -55.4977
margin_top = -28.0357
margin_right = -43.4977
margin_bottom = 63.9643
min_value = -500.0
max_value = -100.0
value = -100.0
custom_step = 1.0
   GDST�   �            �  WEBPRIFF�  WEBPVP8L�  /��+�$�J����=�zS6 6��H��C��;S�!���H�9��z߂H۶�j�2x
62H)�2���Gp~8����2d�H'��1�b2�lz���m��F���0����|�ɪu���ZY��0<��/xa��s0�4��ۂ�
�J�R	%�l�J���L�5#����c��
�Eh)9-�i�����j���G�&�ԥ�ӓZ��۹㷿9����>@m���m��Θ�9��R��`+M�Nʸ���m5����Q��8�ooD�%��$I�|�I;��)���;�ܹs��ߺv��ʍ3-��w�ܽ�ciI���-���#6������y؛���\�/w>�JL���}x��w����K��e����|G�^��r��s)�j?�4T�-���_��<���y�W�{�w5w>��wB�L�(���'n�w���={�Oɋ��wK��\���i	3.��.p�j���������~�]<{.���a)ӺO)�蟟���waR�wǜ#�xO�yD���� S3>`t7���x�����tU��t�O �U��s����:6&{�o��n��i��Λ<2r�|\Or�I\*��X�ɐ��T�|<n��E�=x��V��x�
O�b���D�[�A��z�Q�����hf0d�������:.@��_�|?�b�/\���pK�B�ށ��ff��m��
�����Fp{�,�t6Ŵt$��}p��θt%Ƚ��6�Q�����5<�mmiJ�;�{�x�Sљ�n��K>���I��Ϟ�{�T�%��?(��"І=ߏm����\�-��φ�{��x�G`o7�v(�p�q�E����Nw�8I���ݞh�,9&����[mmJQ6.��M��P7|�A��I�$}�U���6������P��ِ�U��5W�_�m-0	Y�?Ҷ�����Z͔���XFT��O�����'�Z�Q�F�Q������rٔ��Z��?�,��؁2�6=�5���� PaV���� ���FQ�
L6�]���,�T6�������,"��APf��!ed޾G���u� (k�wh�T��SO�ȳ��*�j�
O!x�b�M�B��zH�aʚ���kHi�V3�k�{ˈ��D��� (���E��V�d��33���0��xkM)�t���ZXF燌�X�Z��22�-GQ��Ԕ���˫��eXF�y�����,�\XF����ê�>12���t [remap]

importer="texture"
type="StreamTexture"
path="res://.import/LauncherDirectionSprite.png-3f6c844460bc21361e320abb5f4d52ee.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Launcher/LauncherDirectionSprite.png"
dest_files=[ "res://.import/LauncherDirectionSprite.png-3f6c844460bc21361e320abb5f4d52ee.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
            [gd_scene load_steps=3 format=2]

[ext_resource path="res://Projectile/ProjectileSpriteTemp.png" type="Texture" id=1]

[sub_resource type="CircleShape2D" id=1]
radius = 43.0465

[node name="Projectile" type="RigidBody2D"]

[node name="ProjectileSprite" type="Sprite" parent="."]
scale = Vector2( 0.75, 0.75 )
texture = ExtResource( 1 )

[node name="ProjectileCollisionShape" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )
            GDST�   �            
  WEBPRIFF�	  WEBPVP8L�	  /���m$Ir�=���C��H�$�����!�ɀ�6� ɽ#|��	t�!d�B���B���3�~�P�����f(��J��%NSAU0�����*��""��V���*X�w�B�7��M���*�G����[$n^�-��T/������D?+U���>�
���n\�������7�i���q��$��:�n��V1�{�9�(�4���V"�q�;*��/zRIF%!�HQ9�޵;��[�s�ڭݹ�ݺ����m����>R�mq�ō%Le� 1������{�i6�����w��q��s����$�mz�N ?"C�����<���Ǔ������Ȥ �E%�.�%��B��S)�G���ry�G�B�:1H:�U��:�DEOC<O��-���I�f�1��ד4 ���x�Ax��G"&�5�$��F��fE�f��H[�ik;���i'�!J���LU&��6Q�����➨N"��x�Z=�;W)W�Ͷ$�ձ
���Qx��C���ҐkϙI��}fjl��i���2!#�ʈ�U�����X�>��RiF��i�����%��%�*מnif�LL���(|�[�mȱfДn��5��?�c��"L�J�T���8���:-�ϛ�4iۗ6�9U�)��clo�V��M���k�� ���_��)7�ʳ��C
$D�t3���Fr��L�%B��9t�_6���V=iV��8O��C��7�������p�#g��%��N�	U��qB��̍U/`Vo���D��B�1�1�l���������-l���fb�p�OJA���A�w���\[���������;G��	"A�zmU\wy� ��ⲫ��	�2|���tѸ�?�PxC������|8#-����]�*���]Z����@��� ��dU�T�|ט̷�I&d:L���^H���������a�g��<��Y������?32%.@��x���l_c}�r���6�f��a�.|�IR:t*|~K:�nE��<o�� +���F����������Wb�w�Kf�,Ԕda�O��}�p��*�����}Ԗ�$�PYX� �d��#vCh
k㼴�&����1�bK��𼅚�,x��Y��l4�4�8d�ɖY��Z�eif�t�M��-�g���ɴ�
��f� ³*zR�4�q�_dV��Z�����QR��!Y]��7$N9�)P3�
�ؘAJ��@���jɚwU�0�!�u.*�v�KI�Q� }�u��,y�%�!�;�a�����Uvj��*:3�3Ѝ���)W�}w���*wj���C��=�R/�:�|��-��c��z��F<^E�E��p$��OAdt��q6{���c������%�)�*G���f���obK%}b>���x�x���i��O,	��*c؉�Y��u��g�:�d̏W�c�C;rV�!��׶B���<�M4BC�e��`#�^��.���~W��������h2&1�c�y�?w�y�G���Y����t�0I��g�yE�D�"v_ӽ�E|]�{n���ƒQRm�q�)o��ȟ��xl�i��!�V��r_P�o��좾�=�hE��Öx$��{G�G�-�?�������}������n��QxXw�����SRlE����2�<DdB�d.��~��~tk\�2!�;���Wd�R����Z`ݦ�e�
��%+�>}��1����#��w����P�,��3�e��E0���!�g��E��$��^��4QuB3��>��蹏���M��|�溃���s3躼�d���"�F}W�������ׅn�$��@NE�w�;���`�E�E�K�qN!�_�[��i4�\/�jdg��rT҇�/#eZ��eYO	?�#:�p� �AD/��#��w��妍���C�\y1-ѝ�Pd!�2����"�n4ܵC�#5�"?�	�����l��<�`KsY�˶ܠ!�{��<7�?�\�D&�e�sG��KP�,"�e(���>�j�ex`a(Ͱ�92Mh�'I�6d��4��َ_N�*2��d�	��qJ�ٲ�O��dV�� ����eq9�H��p��t��xgZ��v\ׅ�Bid��D�PAz�u��H��8�фf	/�P�7_����iB��YZ�%2MRٳ!��wgmB�~K$�i�K�	>���Y�ְ�!A���
>��&P�Z�6)�W��{u�&�i�*�/���^�~�>�;�/���tg�b��{\қ�@�R~GAbj
h��Q�3������םͪ��t�t!
��P�Z�W!-g�t��XrNS*�/������g�]��0��,�QH�ee��zK9'�����BO6�d:�>b0k�/Մs8���O1���'�'�NN���W麦��PP���p��$loy���N����PI�H����n���ȉ�MH�u)\�*u�J��e0���	1Ăt�cNvZ�F�ŢH�\������3��a�d4-T*#6����bՅ�\�+�7
�%x���+��[�Z�              [remap]

importer="texture"
type="StreamTexture"
path="res://.import/ProjectileSpriteTemp.png-1705476f720fc3a63c261b1ff17410cc.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Projectile/ProjectileSpriteTemp.png"
dest_files=[ "res://.import/ProjectileSpriteTemp.png-1705476f720fc3a63c261b1ff17410cc.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
   [gd_scene load_steps=3 format=2]

[ext_resource path="res://Target/bomb.png" type="Texture" id=1]

[sub_resource type="CircleShape2D" id=1]
radius = 15.0333

[node name="Target" type="RigidBody2D"]
gravity_scale = 0.0

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )

[node name="Sprite" type="Sprite" parent="."]
position = Vector2( 0, -2 )
scale = Vector2( 0.25, 0.25 )
texture = ExtResource( 1 )
      GDST�   �            �  WEBPRIFF�  WEBPVP8L�  /�/䠍$G���3;:��>�pI�#���Yo?4�H�rI�"��q/���A#I�R���@pN@��)؄�r����3DA��e�ˬ�󁩔"�
�SA�F��4~T*�j��X ��H�$�*`��*�e�03Ɯ~I�n���h�4mii�4m�cz���1���-|�f?m<�ò>�<�Y���:?�s��u���g�����a�D3����6�_��2&J3�0�
�����o�82�d�v)Y����R(X!�-Vd���y{���W�ʖd��CD�!�m�H��0�{/������ϼs�&�΍�LH��@5n	*��Ԓ�ܿ$�s��!wY@L��#\<x������(�cl||�=KC@<xq+�Wt��]�2���LЖi��g�|��`2���M��<�%���wǓ8�㦥%��/D���O��<O�0�����T���L9��d���)`�
�~�Zs+M�E<�а�Jh�Ϭ��Q�̥3,�H-;ˌ�kԇ»N՛��KA,0 �b���%�k��d�?pBΘ����˗�o���z7�w��+8iZ����2޾�y����`Y'���%B���d2��L'g�'� @}$���,w��e,�����Uo�e9�)�q����g�xl��x0Ú�/���X\
s���<�a�˓AID\"<�i3�������k8C6�V�I=���z3.��s\c�����4^i�j}���L0lP�C3vW�@#�`���8O=���OO�M\f-e�^S�K`0��a��^S�s��qe�V��G�����E��h
��![5��*BͣR*�,�*w�hL��f��n�ˍ�R+����I�YCM��[⸅��7���'`��V;�k)o������$�5��9���Q�8���TG"iżR���HЖ��Z��GR�FV�a�b�ʀT�w�A)���Ò mSN`S?�1�b>�Q1c�[�i���0*�ev�m��<��"�
��=y�3,mK�x�Z���5mXT�ǹ��b��U7�>6ľ.y,�8.�T�|�V��N��4`
/���B�a���-�d�s�B�kpx=���bp���Eڬr��$fj)��絰s�,mL�:OA
��w������s���8�2�L)O��xL�lֲfNF��l�܌eɑ5S�O��iW�161���:�:�X��e���U�;J� ����W7�Z�[�4M��YX��kxp�}G���ݓ��wN��f�n����cB��^>�q>�~Y��,}?�S���i���n��8{�*Ƈ��+�]8��k��0>���R߅�9���G���Н�nl���_#_|N�+ꗣ�A�*B�z��pK�(�܆JB�*%M�*`N5!7�n��]��A�5�J����],Uᯚr$�V�R���{]t+U�ݎ�B�u�R1ڒ뺕�ou��n�\�J��6����S{�@ק��5
l	�;��	A��Q`@�	52g�SjRlll���Ɔ8���=�L�@[������Z$�T��NG�6u$N���Ӽ_�Q<��7{��S��W�~�^&TI4_��<9�P�t~^��h��{� ����)W H������* �M=�n3=$)m]�~ݣ P"5f_˒0�H����!�@,�ਫ��|H	�@�E �
=F������F���juB�**R�NgG��=�L����e�>!,T�`zޞy�n�@*�IȞ�j�@j�IC���TKxs޹�j�@�������C���ߕ���G.=�h+v/��4@�e@�I���0����A�(N}�!�����v�� ���;z�K��9F�m����������t�K!�?��I�����Z��j�භZ�8���nxAP� } -J�E���A+�on��}��Z�����            [remap]

importer="texture"
type="StreamTexture"
path="res://.import/bomb.png-ef4d6b215e4f30540e85e8480230039b.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Target/bomb.png"
dest_files=[ "res://.import/bomb.png-ef4d6b215e4f30540e85e8480230039b.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
       [gd_scene load_steps=7 format=2]

[ext_resource path="res://Launcher/Launcher.tscn" type="PackedScene" id=1]
[ext_resource path="res://World/stoneMid.png" type="Texture" id=2]
[ext_resource path="res://HUD/HUD.tscn" type="PackedScene" id=3]
[ext_resource path="res://Target/Target.tscn" type="PackedScene" id=4]

[sub_resource type="ConvexPolygonShape2D" id=1]
points = PoolVector2Array( 128, 128, 0, 128, 0, 0, 128, 0 )

[sub_resource type="TileSet" id=2]
0/name = "stoneMid.png 0"
0/texture = ExtResource( 2 )
0/tex_offset = Vector2( 0, 0 )
0/modulate = Color( 1, 1, 1, 1 )
0/region = Rect2( 0, 0, 128, 128 )
0/tile_mode = 0
0/occluder_offset = Vector2( 0, 0 )
0/navigation_offset = Vector2( 0, 0 )
0/shape_offset = Vector2( 0, 0 )
0/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
0/shape = SubResource( 1 )
0/shape_one_way = false
0/shape_one_way_margin = 1.0
0/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 1 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
0/z_index = 0

[node name="World" type="Node2D"]

[node name="TileMap" type="TileMap" parent="."]
scale = Vector2( 0.5, 0.5 )
tile_set = SubResource( 2 )
cell_size = Vector2( 128, 128 )
format = 1
tile_data = PoolIntArray( 720896, 0, 0, 720897, 0, 0, 720898, 0, 0, 720899, 0, 0, 720900, 0, 0, 720901, 0, 0, 720902, 0, 0, 720903, 0, 0, 720904, 0, 0, 720905, 0, 0, 720906, 0, 0, 720907, 0, 0, 720908, 0, 0, 720909, 0, 0, 720910, 0, 0, 720911, 0, 0, 720912, 0, 0, 720913, 0, 0, 720914, 0, 0, 720915, 0, 0, 720916, 0, 0, 720917, 0, 0, 720918, 0, 0, 720919, 0, 0, 720920, 0, 0, 720921, 0, 0, 720922, 0, 0, 720923, 0, 0, 720924, 0, 0, 720925, 0, 0 )

[node name="Launcher" parent="." instance=ExtResource( 1 )]
position = Vector2( 86, 645 )

[node name="CanvasLayer" parent="." instance=ExtResource( 3 )]

[node name="Target" parent="." instance=ExtResource( 4 )]
position = Vector2( 280, 555 )
        GDST�   �            x  WEBPRIFFl  WEBPVP8L_  /� g��m)��ѽ��0�d@��#���m#��S;B��?f� B	@���� ��&� @0� �8���r{%ex�n��l�M�9�a(s���Hr�ω���?���?��~��]����g�Ӟ���Z������{ӭ������ᦽ�,^:{YR*�!3xɏ_7ih8�?�l�\���]'��kR�sR��k�i��R����{�Ȓhf���$�ի!Xkg�D+P5ho�z�"����J�ZH;�&����0.A�-�!H��p6���sq��(�Y��P>A ��p�6SBP �vO�5�; ��VQ)9�
�����$hIԆb���$���             [remap]

importer="texture"
type="StreamTexture"
path="res://.import/stoneMid.png-ed1a29114c0eea42779b1c348253f455.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://World/stoneMid.png"
dest_files=[ "res://.import/stoneMid.png-ed1a29114c0eea42779b1c348253f455.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
            [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @            �  WEBPRIFF�  WEBPVP8L�  /?����m��������_"�0@��^�"�v��s�}� �W��<f��Yn#I������wO���M`ҋ���N��m:�
��{-�4b7DԧQ��A �B�P��*B��v��
Q�-����^R�D���!(����T�B�*�*���%E["��M�\͆B�@�U$R�l)���{�B���@%P����g*Ųs�TP��a��dD
�6�9�UR�s����1ʲ�X�!�Ha�ߛ�$��N����i�a΁}c Rm��1��Q�c���fdB�5������J˚>>���s1��}����>����Y��?�TEDױ���s���\�T���4D����]ׯ�(aD��Ѓ!�a'\�G(��$+c$�|'�>����/B��c�v��_oH���9(l�fH������8��vV�m�^�|�m۶m�����q���k2�='���:_>��������á����-wӷU�x�˹�fa���������ӭ�M���SƷ7������|��v��v���m�d���ŝ,��L��Y��ݛ�X�\֣� ���{�#3���
�6������t`�
��t�4O��ǎ%����u[B�����O̲H��o߾��$���f���� �H��\��� �kߡ}�~$�f���N\�[�=�'��Nr:a���si����(9Lΰ���=����q-��W��LL%ɩ	��V����R)�=jM����d`�ԙHT�c���'ʦI��DD�R��C׶�&����|t Sw�|WV&�^��bt5WW,v�Ş�qf���+���Jf�t�s�-BG�t�"&�Ɗ����׵�Ջ�KL�2)gD� ���� NEƋ�R;k?.{L�$�y���{'��`��ٟ��i��{z�5��i������c���Z^�
h�+U�mC��b��J��uE�c�����h��}{�����i�'�9r�����ߨ򅿿��hR�Mt�Rb���C�DI��iZ�6i"�DN�3���J�zڷ#oL����Q �W��D@!'��;�� D*�K�J�%"�0�����pZԉO�A��b%�l�#��$A�W�A�*^i�$�%a��rvU5A�ɺ�'a<��&�DQ��r6ƈZC_B)�N�N(�����(z��y�&H�ض^��1Z4*,RQjԫ׶c����yq��4���?�R�����0�6f2Il9j��ZK�4���է�0؍è�ӈ�Uq�3�=[vQ�d$���±eϘA�����R�^��=%:�G�v��)�ǖ/��RcO���z .�ߺ��S&Q����o,X�`�����|��s�<3Z��lns'���vw���Y��>V����G�nuk:��5�U.�v��|����W���Z���4�@U3U�������|�r�?;�
         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              [remap]

path="res://Launcher/Launcher.gdc"
    �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      application/config/name         Project    application/run/main_scene          res://World/World.tscn     application/config/icon         res://icon.png     display/window/size/width      �     display/window/size/height      8     display/window/stretch/aspect         expand  +   gui/common/drop_mouse_on_gui_input_disabled            input/launch�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode             unicode           echo          script         input/adjustPower�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        physical_scancode             unicode           echo          script      )   physics/common/enable_pause_aware_picking         $   rendering/quality/driver/driver_name         GLES2   %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2          )   rendering/environment/default_environment          res://default_env.tres                 