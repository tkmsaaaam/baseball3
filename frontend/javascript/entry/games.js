import GamesIndex from '../components/organisms/games/index.vue'
import GameShow from '../components/organisms/games/show.vue'
import * as VueMounter from "../application.js"

export const components = {
    GamesIndex,
    GameShow
};

VueMounter.mount(components);
