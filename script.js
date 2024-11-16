document.addEventListener('DOMContentLoaded', function() {
    const buttons = document.querySelectorAll('.nav-buttons button');
    buttons.forEach(button => {
        button.addEventListener('click', function() {
            const targetId = this.getAttribute('data-target');
            if (targetId) {
                const targetSection = document.getElementById(targetId);
                if (targetSection) {
                    targetSection.scrollIntoView({ behavior: 'smooth' });
                }
            }
        });
    });
});
const menuImage = document.getElementById('menuImage');
    const images = ['assets/menu.png', 'assets/menu2.png', 'assets/menu3.png', 'assets/menu4.png'];
    let currentIndex = 0;

    setInterval(() => {

        menuImage.style.opacity = 0;

        setTimeout(() => {
            currentIndex = (currentIndex + 1) % images.length; 
            menuImage.src = images[currentIndex];

            menuImage.style.opacity = 1;
        }, 1000); 
    }, 6000);
