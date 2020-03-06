const maxApi = require("max-api");
const crfsuite = require('crfsuite')
const tagger = new crfsuite.Tagger()

let is_opened = tagger.open('./path/to/crf.model')
console.log('File model is opened:', is_opened)

let tags = tagger.tag(input)
console.log('Tags: ', tags)