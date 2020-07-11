<template>
    <div>
        <div v-show="opened" class="modal">
            <button class="modal-close" @click="close">×</button>
            <div class="modal-title">
                <slot name="title"></slot>
            </div>
            <div class="modal-contents">
                <slot></slot>
            </div>
        </div>
        <div class="overlay" v-show="opened" @click="closeOverlay"></div>
    </div>
</template>
<script>
    export default {
        props: {
            opened: Boolean,
            overlayCloseEnabled: Boolean,
        },
        methods: {
            closeOverlay: function () {
                if (this.overlayCloseEnabled) {
                    this.close();
                }
            },
            close: function () {
                this.$emit("close-event");
            },
        },
    };
</script>
<style lang="scss" scoped>
    .overlay {
        position: fixed;
        left: 0;
        top: 0;
        right: 0;
        bottom: 0;
        z-index: 9999;
        background-color: rgba(#393f48, 0.6);
    }
    .modal {
        font-size: $font-size-base;
        color: #333;
        position: fixed;
        left: 50%;
        top: 50%;
        transform: translate(-50%, -50%);
        width: calc(100% - 32px);
        max-width: 800px;
        box-sizing: border-box;
        padding: 24px 0 0 0;
        background-color: #fff;
        z-index: 99999;
        max-height: calc(100% - 32px);
        overflow: scroll;
        &-close {
            position: absolute;
            top: 10px;
            right: 10px;
            background: #eee;
            border: none;
            border-radius: 50%;
            outline: none;
            width: 30px;
            height: 30px;
            line-height: 30px;
            padding: 0;
            font-size: 12px;
        }
        &-title {
            padding: 0 24px;
            img {
                width: 60px;
            }
            p {
                font-size: 11px;
                margin-bottom: 10px;
            }
            h4 {
                font-size: 18px;
                margin-bottom: 16px;
            }
            p.description {
                font-size: $font-size-base;
                margin-bottom: 16px;
                &.pre-wrap {
                    white-space: pre-wrap;
                }
            }
        }
        &-contents-wrap {
            background: #f6f8fa;
            padding: 24px;
            margin-bottom: 16px;
        }
        .button-wrap {
            text-align: center;
            margin-top: 15px;
            a,
            button {
                width: 100% !important;
                max-width: 236px;
                margin: 0;
                padding: 15px 0;
                border: none;
                transition: all 0.2s ease-out;
                &:hover,
                &:active {
                    opacity: 0.7;
                }
                &.text-link {
                    background: none;
                    border: none;
                    padding: 10px 0;
                }
            }
        }
        .icon {
            i {
                font-size: 60px;
                margin: 0;
            }
        }
    }
</style>
