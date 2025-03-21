import * as THREE from "three";
import { STLLoader } from "jsm/loaders/STLLoader.js";
import { OrbitControls } from "jsm/controls/OrbitControls.js";

const scene = new THREE.Scene();

/*Renderer*/
const w = window.innerWidth;
const h = window.innerHeight;
const renderer = new THREE.WebGLRenderer({ antialias: true });
renderer.setSize(w, h);
document.body.appendChild(renderer.domElement);

/*Camera*/
const fov = 75;
const aspect = w / h;
const near = 0.1;
const far = 100;
const camera = new THREE.PerspectiveCamera(fov, aspect, near, far);
camera.position.set(0, 0, 5);

/*Light*/
const ambientLight = new THREE.AmbientLight(0xffffff, 0.4);
scene.add(ambientLight);
const dirlight = new THREE.DirectionalLight(0xffffff, 1);
dirlight.position.set(0, 20, 0);
scene.add(dirlight);

/*Texture*/
const textureloader = new THREE.TextureLoader();
    const Rind = textureloader.load('Texture/LZX/Rind.jpg');
    const Kernel = textureloader.load('Texture/LZX/Kernel.jpg');
    const Box2 = textureloader.load('Texture/SYZ/Box2.png');
    const Character = textureloader.load('Texture/SYZ/Character.png');
    const Pastry1 = textureloader.load('Texture/SYZ/Pastry1.png');
    const Box1 = textureloader.load('Texture/SYZ/Stone.png');
    const Pastry3 = textureloader.load('Texture/SYZ/Pastry3.png');
    const Box3 = textureloader.load('Texture/SYZ/Steel.png');
    const Pastry4 = textureloader.load('Texture/SYZ/Pastry4.png');
    const Wood = textureloader.load('Texture/SYZ/Wood.png');

/*Background*/
textureloader.load('Texture/LZX/Background.png', function(texture){
    scene.background = texture;
})

/*UV*/
function CylinderUV(geometry) {
    geometry.computeBoundingBox();
    const center = geometry.boundingBox.getCenter(new THREE.Vector3());
    const size = geometry.boundingBox.getSize(new THREE.Vector3());
  
    geometry.setAttribute('uv', new THREE.BufferAttribute(new Float32Array(geometry.attributes.position.count * 2), 2));
  
    for (let i = 0; i < geometry.attributes.position.count; i++) {
      const vertex = new THREE.Vector3(
        geometry.attributes.position.getX(i),
        geometry.attributes.position.getY(i),
        geometry.attributes.position.getZ(i)
      );
  
      vertex.sub(center).divide(size);
  
      const u = 0.5 + Math.atan2(vertex.z, vertex.x) / (2 * Math.PI);
      const v = (vertex.y + 0.5);
      
      geometry.attributes.uv.setXY(i, u, v);
    }
}

function SphereUV(geometry){
    geometry.computeBoundingBox();
    const bboxSize = geometry.boundingBox.getSize(new THREE.Vector3());
    
    geometry.setAttribute('uv', new THREE.BufferAttribute(new Float32Array(geometry.attributes.position.count * 2), 2));
    
    for (let i = 0; i < geometry.attributes.position.count; i++) {
        const x = geometry.attributes.position.getX(i);
        const y = geometry.attributes.position.getY(i);
        const z = geometry.attributes.position.getZ(i);
  
        const absX = Math.abs(x / bboxSize.x);
        const absY = Math.abs(y / bboxSize.y);
        const absZ = Math.abs(z / bboxSize.z);
  
        if (absX >= absY && absX >= absZ) {
        geometry.attributes.uv.setXY(i, (z - geometry.boundingBox.min.z) / bboxSize.z, 
                                        (y - geometry.boundingBox.min.y) / bboxSize.y);
        } else if (absY >= absX && absY >= absZ) {
        geometry.attributes.uv.setXY(i, (x - geometry.boundingBox.min.x) / bboxSize.x, 
                                        (z - geometry.boundingBox.min.z) / bboxSize.z);
        } else {
        geometry.attributes.uv.setXY(i, (x - geometry.boundingBox.min.x) / bboxSize.x, 
                                        (y - geometry.boundingBox.min.y) / bboxSize.y);
        }
    }
}

/*Models*/
const loader = new STLLoader();
const PastryS = new THREE.Group();
const PastryL = new THREE.Group();
const PastryO = new THREE.Group();
const PastryW = new THREE.Group();
const Table = new THREE.Group();
    /*SYZ*/
        /*Character*/
        loader.load('Model/SYZ/Character.stl', function(geometry){
            CylinderUV(geometry);

            const material = new THREE.MeshStandardMaterial({
                map: Character,
                roughness: 0.5,
                metalness: 0.7,
            });
            const mesh = new THREE.Mesh(geometry, material);
            mesh.scale.set(0.1, 0.1, 0.1);

            mesh.rotation.x -= 1.5;
            mesh.rotation.z += 0.785;

            PastryS.add(mesh);
        });

        /*Pastry1*/
        loader.load('Model/SYZ/Pastry1.stl', function(geometry){
            CylinderUV(geometry);

            const material = new THREE.MeshStandardMaterial({
                map: Pastry1,
                roughness: 0.8,
                metalness: 0.1,
            });
            const mesh = new THREE.Mesh(geometry, material);
            mesh.scale.set(0.1, 0.1, 0.1);

            mesh.rotation.x -= 1.5;

            PastryS.add(mesh);
        });

        /*Box1*/
        loader.load('Model/SYZ/Box1.stl', function(geometry){
            SphereUV(geometry);

            const material = new THREE.MeshStandardMaterial({
                map: Box1,
                roughness: 0.8,
                metalness: 0.6,
            });
            const mesh = new THREE.Mesh(geometry, material);
            mesh.scale.set(0.1, 0.1, 0.1);

            mesh.rotation.x -= 1.5;
            mesh.rotation.z -= 2.355;

            PastryS.add(mesh);
            PastryS.position.set(-4, -1.1, -1);
            scene.add(PastryS);
        });

        /*Table*/
        loader.load('Model/SYZ/Table.stl', function(geometry){
            CylinderUV(geometry);

            const material = new THREE.MeshStandardMaterial({
                map: Wood,
                roughness: 0.8,
                metalness: 0.5,
            });
            const mesh = new THREE.Mesh(geometry, material);
            mesh.scale.set(0.8, 0.8, 0.8);

            mesh.rotation.x -= 1.5;
            mesh.rotation.z -= 3.14;

            Table.add(mesh);
            Table.position.set(0, -2, -5);
            scene.add(Table);
        });

    /*LZX*/
        /*Rind*/
        loader.load('Model/LZX/Rind.stl', function(geometry){
            SphereUV(geometry);

            const material = new THREE.MeshStandardMaterial({
                map: Rind,
                roughness: 0.8,
                metalness: 0.1,
            });
            const mesh = new THREE.Mesh(geometry, material);
            mesh.scale.set(0.04, 0.04, 0.04);

            mesh.rotation.x -= 1.5;
            mesh.rotation.z += 0.785;

            PastryL.add(mesh);
        });

        /*Kernel*/
        loader.load('Model/LZX/Kernel.stl', function(geometry){
            SphereUV(geometry);

            const material = new THREE.MeshStandardMaterial({
                map: Kernel,
                roughness: 0.8,
                metalness: 0.1,
            });
            const mesh = new THREE.Mesh(geometry, material);
            mesh.scale.set(0.04, 0.04, 0.04);

            mesh.rotation.x -= 1.5;
            mesh.rotation.z += 0.785;

            PastryL.add(mesh);
        });

        /*Box2*/
        loader.load('Model/LZX/Box2.stl', function(geometry){
            CylinderUV(geometry);

            const material = new THREE.MeshStandardMaterial({
                map: Box2,
                roughness: 0.5,
                metalness: 0.3,
            });
            const mesh = new THREE.Mesh(geometry, material);
            mesh.scale.set(0.04, 0.04, 0.04);

            mesh.rotation.x -= 1.5;
            mesh.rotation.z += 0.785;

            PastryL.add(mesh);
            PastryL.position.set(4, -1.7, -1);
            scene.add(PastryL);
        });
    
    /*OYWY*/
        /*Pastry3*/
        loader.load('Model/OYWY/Pastry3.stl', function(geometry){
            CylinderUV(geometry);

            const material = new THREE.MeshStandardMaterial({
                map: Pastry3,
                roughness: 0.8,
                metalness: 0.1,
            });
            const mesh = new THREE.Mesh(geometry, material);
            mesh.scale.set(0.02, 0.02, 0.02);

            mesh.rotation.x -= 1.5;
            mesh.rotation.z += 0.785;

            PastryO.add(mesh);
        });

        /*Box2*/
        loader.load('Model/OYWY/Box3.stl', function(geometry){
            CylinderUV(geometry);

            const material = new THREE.MeshStandardMaterial({
                map: Box3,
                roughness: 0.3,
                metalness: 0.8,
            });
            const mesh = new THREE.Mesh(geometry, material);
            mesh.scale.set(0.02, 0.02, 0.02);

            mesh.rotation.x -= 1.5;
            mesh.rotation.z += 0.785;

            PastryO.add(mesh);
            PastryO.position.set(4, -1.2, -7.5);
            scene.add(PastryO);
        });
    
    /*WYY*/
        /*Pastry4*/
        loader.load('Model/WYY/Pastry4.stl', function(geometry){
            CylinderUV(geometry);

            const material = new THREE.MeshStandardMaterial({
                map: Pastry4,
                roughness: 0.7,
                metalness: 0.2,
            });
            const mesh = new THREE.Mesh(geometry, material);
            mesh.scale.set(0.04, 0.04, 0.04);

            mesh.rotation.x -= 1.5;

            PastryW.add(mesh);
            PastryW.position.set(-4, -1, -9);
            scene.add(PastryW);
        });

/*Control*/
const controls = new OrbitControls(camera, renderer.domElement);
controls.enableDamping = true;
controls.dampingFactor = 0.25;
controls.screenSpacePanning = true;

/*Choose Pastry*/
const raycaster = new THREE.Raycaster();
const mouse = new THREE.Vector2();
const targetPosition = new THREE.Vector3(0, 0, 0);

window.addEventListener('click', onMouseClick, false);
window.addEventListener('keydown', function(event){
    if(event.key ==='Escape'){
        resetScene();
        window.addEventListener('click', onMouseClick, false);
    }
})

/*Rotate*/
let isRotating = false;
let rotationTween = null;

window.addEventListener('keydown', function(event){
    if(event.key === ' '){ 
        if (!isRotating) {
            rotateScene();
        } else {
            stopRotation();
        }
    }
});

function rotateScene() {
    isRotating = true;
    rotationTween = gsap.to(scene.rotation, {
        y: "+=" + Math.PI * 20,
        duration: 5,
        repeat: -1,
        ease: "linear"
    });
}

function stopRotation() {
    isRotating = false;
    if (rotationTween) {
        rotationTween.kill();
        rotationTween = null;
    }
}

function onMouseClick(event){
    mouse.x = (event.clientX / window.innerWidth) * 2 - 1;
    mouse.y = -(event.clientY / window.innerHeight) * 2 + 1;
    raycaster.setFromCamera(mouse, camera);

    const intersects = raycaster.intersectObjects(scene.children, true);

    if(intersects.length > 0){
        const selectedObject = intersects[0].object;
        const parentGroup = findParentGroup(selectedObject);

        if(parentGroup){
            focusOnGroup(parentGroup);
            window.removeEventListener('click', onMouseClick);
        }
    }
}

function findParentGroup(object){
    let current = object;
    while(current.parent){
        if(current.parent instanceof THREE.Group){
            return current.parent;
        }
        current = current.parent;
    }
}

function focusOnGroup(group){
    if (!group) return;

    [PastryS, PastryL, PastryO, PastryW, Table].forEach(g =>{
        g.visible = (g === group);
    });

    group.getWorldPosition(targetPosition);

    controls.enabled = false;
    gsap.to(camera.position, {
        x: targetPosition.x+5, 
        y: targetPosition.y+5, 
        z: targetPosition.z+5,
        duration: 1, 
        ease: "power2.out",
        onUpdate: () => {
            controls.target.copy(targetPosition);
            controls.update();
        },
        onComplete: () => {
            controls.enabled = true;
        }
    });
}

function resetScene(){
    [PastryS, PastryL, PastryO, PastryW, Table].forEach(model =>{
        model.visible = true;
    });

    const newTargetPosition = new THREE.Vector3(0, 0, 0);

    controls.enabled = false;
    gsap.to(camera.position, {
        x: 0, 
        y: 0, 
        z: 5,
        duration: 1, 
        ease: "power2.out",
        onUpdate: () => {
            controls.target.copy(new THREE.Vector3(0, 0, 0));
            controls.update();
        },
        onComplete: () => {
            controls.enabled = true;
        }
    });
}

/*Animation*/
function animate(){
    requestAnimationFrame(animate);
    renderer.render(scene, camera);
    controls.update();
}

animate();