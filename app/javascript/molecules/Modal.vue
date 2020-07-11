<template>
    <div>
        <modal :opened="opened" @close-event="close">
            <template v-slot:title>
                <h4>{{ title }}</h4>
                <p class="description">{{ description }}</p>
            </template>
            <template>
                <slot name="body"></slot>
                <div class="close-button-area">
                    <button class="modal-close-button" @click="close">閉じる</button>
                </div>
            </template>
        </modal>
    </div>
</template>
<script>
    import Modal from "../../atoms/Modal.vue";
    export default {
        props: {
            opened: Boolean,
            title: String,
            description: String,
        },
        methods: {
            close: function () {
                this.$emit("close-event");
            },
        },
        components: {
            Modal,
        },
    };
</script>