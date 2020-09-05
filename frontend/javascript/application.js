import Vue from "vue";

const mount = components => {
    document.addEventListener("DOMContentLoaded", () => {
        let templates = document.querySelectorAll("[data-vue]");

        for (let el of templates) {
            let app = new Vue({
                render: createElement => {
                    const context = {
                        props: { ...el.dataset }
                    };
                    return createElement(components[el.dataset.vue], context);
                }
            });
            app.$mount(el);
        }
    });
};

export { mount };
