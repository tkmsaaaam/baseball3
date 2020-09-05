import SituationsIndex from '../components/organisms/situations/index.vue'
import SituationShow from '../components/organisms/situations/show.vue'
import * as VueMounter from "../application.js"

export const components = {
    SituationsIndex,
    SituationShow
};

VueMounter.mount(components);
