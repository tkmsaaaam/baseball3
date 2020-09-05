import ActnessesIndex from '../components/organisms/actnesses/index.vue'
import ActnessShow from '../components/organisms/actnesses/show.vue'
import * as VueMounter from "../application.js"

export const components = {
    ActnessesIndex,
    ActnessShow
};

VueMounter.mount(components);
