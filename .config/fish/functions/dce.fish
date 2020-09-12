# Defined in - @ line 1
function dce --description 'alias dce docker-compose exec backend bundle exec'
	docker-compose exec backend bundle exec $argv;
end
