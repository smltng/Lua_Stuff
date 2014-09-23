--A pretty generic, yet oddly specific implementation of cosine similarity
function getSimilarity(coordA, coordB)
	local sum = 0
	local magnitudeA = 0
	local magnitudeB = 0
	
	--each coordinate table has four numbers
	for i=1, 4 do
		sum = sum + coordA[i]*coordB[i]
		magnitudeA = magnitudeA + coordA[i]^2
		magnitudeB = magnitudeB + coordB[i]^2
	end
	return sum / (math.sqrt(magnitudeA) * math.sqrt(magnitudeB))
end