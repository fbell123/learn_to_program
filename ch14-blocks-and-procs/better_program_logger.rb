

$logger_depth = 0

def log desc, &block
  prefix = ' '*$logger_depth

  puts prefix + 'Beginning "' + desc + '"...'
  $logger_depth = $logger_depth + 1
  result = block.call

  $logger_depth = $logger_depth - 1
  puts prefix + '..."' + desc + '" finished, returning: ' + result.to_s
end

log 'outer block' do
  log 'some little block' do
    log 'teeny-tiny block' do
      'LOts of LOVE'.downcase
    end
    7 * 6
  end
  log 'yet another block' do
    '!doof iahT ekil I'.reverse
  end
  '0' == "0"
end
