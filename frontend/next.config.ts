module.exports = {
  async redirects() {
    return [
      {
        source: '/',
        destination: '/login',
        permanent: true, // Set to true if this is a permanent redirect
      },
    ];
  },
};
