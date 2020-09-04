<template>
    <div class="title">
        <h1>Welcome Baseball App</h1>
        <br>
        <h3>Product by tkmsaaaam</h3>
        <a @click="openModal">Add a record</a>
    </div>
    <Modal title="新たなレコードの追加"
           :opened="modalOpened"
           @close-event="closeModal">
        <template v-slot:body>
            <h3>New Game.</h3>
        </template>
    </Modal>
</template>
<script>
    import Modal from '../../../../../app/javascript/molecules/Modal.vue';
    export default {
        data: function () {
            return {
                modalOpened: false,
            };
        },
        methods: {
            openModal: function () {
                this.modalOpened = true;
            },
            closeModal: function () {
                this.modalOpened = false;
            },
        },
        components: {
            Modal,
        },
    };
</script>