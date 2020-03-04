const path = require('path')
// const crfsuite = require('crfsuite')
const maxApi = require("max-api");
// const trainer = new crfsuite.Trainer()

maxApi.outlet("CRF script started");

// let model_filename = path.resolve('./model.crfsuite')

let xseq = [['walk'], ['walk', 'shop'], ['clean', 'shop']]
let yseq = ['sunny', 'sunny', 'rainy']

// submit training data to the trainer
// trainer.append(xseq, yseq)
// trainer.train(model_filename)

// output: ./model.crfsuite