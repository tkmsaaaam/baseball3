import RunningsIndex from '../components/organisms/runnings/index.vue'
import RunningShow from '../components/organisms/runnings/show.vue'
import * as VueMounter from "../application.js"

export const components = {
    RunningsIndex,
    RunningShow
};

VueMounter.mount(components);
