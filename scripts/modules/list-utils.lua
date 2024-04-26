local List = {}

function List.isInList(list, id)
	if List.isValidList(list) == false then
		return false
	end

	for i, v in ipairs(list) do
		if v.id == id then
			return true
		end
	end

	return false
end

function List.getInList(list, key, value, key_nedded)
	if List.isValidList(list) == false then
		return false
	end

	for i, v in ipairs(list) do
		if v[key] == value then
			return v[key_nedded]
		end
	end

	return false
end

function List.changeInList(list, key, value, key_to_change, new_value)
	if List.isValidList(list) == false then
		return false
	end

	for i, v in ipairs(list) do
		if v[key] == value then
			v[key_to_change] = new_value
			return true
		end
	end

	return false
end

function List.isValidList(list)
	if list == nil then
		return false
	end

	if next(list) == nil then
		return false
	end

	if #list == 0 then
		return false
	end

	return true
end

function List.isValueInList(list, value)
	if List.isValidList(list) == false then
		return false
	end

	for i, v in ipairs(list) do
		if v == value then
			return true
		end
	end

	return false
end

function List.removeValueInList(list, value)
	if List.isValidList(list) == false then
		return false
	end

	for i, v in ipairs(list) do
		if v == value then
			table.remove(list, i)
			return list
		end
	end

	return false
end

return List