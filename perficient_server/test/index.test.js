const app = require('../index');
const chai = require('chai');
const chaiHttp = require('chai-http');

//simple unit test
const { expect } = chai;
chai.use(chaiHttp);
describe('Server!', () => {
  it('welcomes user to the api', done => {
    chai
      .request(app)
      .get('/employees')
      .end((err, res) => {
        expect(res).to.have.status(200);
        done();
      });
  });
});