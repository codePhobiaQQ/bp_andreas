const { sanitizeEntity } = require('strapi-utils');

module.exports = {
  async findOne(ctx) {
    const { slug } = ctx.params;
    const entity = await strapi.services.category.findOne({ slug });
    return sanitizeEntity(entity, { model: strapi.models.category });
  },
  async find(ctx) {
    const entity = await strapi.services.category.find();
    return sanitizeEntity(entity, { model: strapi.models.category });
  },
};
