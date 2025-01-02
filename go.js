const fs = require('fs')
const path = require('path')

// console.log(
//   process.env.GITHUB_SERVER_URL,
//   'https://github.com',
//   process.env.GITHUB_REPOSITORY,
//   process.env.GITHUB_REF_NAME
// )

function get_readme_path(dir) {

  let res = []
  const files = fs.readdirSync(dir)

  files.forEach( filename => {

    const filepath = path.join(dir, filename)
    const stats = fs.statSync(filepath)

    if (stats.isDirectory() && filename.startsWith('level')) {
      res.push( ... get_readme_path(filepath))
    } else if (stats.isFile() && filename.endsWith('README.mdx') && ! filepath.endsWith('cfo/README.mdx')) {
      res.push(filepath)
      // console.log(filepath)
    }
  })

  return res
}


function get_readme_content() {

  let content = fs.readFileSync(__dirname + '/tokens.mdx', 'utf-8')
  let branch_addr = process.env.GITHUB_SERVER_URL + '/' + 
    process.env.GITHUB_REPOSITORY + '/tree/' + 
    process.env.GITHUB_REF_NAME + '?tab=readme-ov-file#'
  // console.log(branch_addr)

  content += 'Level '
  let n = 13//1
  for (let i = 0; i < n; i++) {
    num = i.toString()
    if (num.length == 1) { num = '0' + num }
    content += '[' + num + '](' + branch_addr + num + ')'
    // content += '[' + num + '](https://github.com/nuoxoxo/snowcrash/tree/main?tab=readme-ov-file#0' + num + ')'
    if (i < n - 1 ) { content += ' - ' }
  }

  const readmes = get_readme_path(__dirname)
  // console.log(__dirname)
  // /home/runner/work/cfo/cfo

  readmes.forEach(path => {
    content += '\n\n' + fs.readFileSync(path, 'utf-8')// + '\n\n' + content
  })
  return content
}


const README = get_readme_content()
console.log(README)
// console.log('hello, world')
