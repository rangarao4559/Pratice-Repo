trigger opportunity_handler on Opportunity (after insert) {
opportunity_handler.afterinsert(trigger.new);
}