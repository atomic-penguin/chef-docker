cron 'docker_cleanup_containers' do
  command "docker ps -a | grep 'Exit' | awk '{ print $1 }' | xargs -L 1 -r docker rm"
  minute node['docker']['cleanup_cron']['containers']['minute']
  hour node['docker']['cleanup_cron']['containers']['hour']
  day node['docker']['cleanup_cron']['containers']['day']
  month node['docker']['cleanup_cron']['containers']['month']
  weekday node['docker']['cleanup_cron']['containers']['weekday']
end

cron 'docker_cleanup_images' do
  command "docker images -a | grep #{node['docker']['cleanup_cron']['images']['tag']} | awk '{ print $1 }' | xargs -L 1 -r docker rmi"
  minute node['docker']['cleanup_cron']['images']['minute']
  hour node['docker']['cleanup_cron']['images']['hour']
  day node['docker']['cleanup_cron']['images']['day']
  month node['docker']['cleanup_cron']['images']['month']
  weekday node['docker']['cleanup_cron']['images']['weekday']
end
