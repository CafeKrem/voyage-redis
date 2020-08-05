accessing
descriptionBuilder
	^ descriptionBuilder
		ifNil: [ descriptionBuilder := VORedisDescriptionBuilder repository: self ]