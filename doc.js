const html = `
<body>
  <p>hello, <b>world</b>!</p>
</body>
`;

const parser = new DOMParser();

const doc = parser.parseFromString(html, 'text/html');