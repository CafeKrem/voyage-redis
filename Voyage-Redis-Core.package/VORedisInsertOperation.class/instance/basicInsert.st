operations
basicInsert
	repository insert: serialized fromOperation: self.
	repository cacheAt: id put: object.