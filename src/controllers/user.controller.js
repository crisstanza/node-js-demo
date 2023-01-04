const user = {
    test: (request, response, next) => {
        return response.status(200).send({ status: 'ok', now: new Date() });
    }
};

user.test.ENDPOINT = '/user/test';

exports.user = user;
