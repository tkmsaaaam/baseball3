import Vue from "vue";

const mount = (components) => {
    document.addEventListener("DOMContentLoaded", () => {
        let templates = document.querySelectorAll("[data-vue]");

        for (let el of templates) {
            let app = new Vue(components[el.dataset.vue]);
            app.$mount(el);
        }
    });
};

export  { mount };
