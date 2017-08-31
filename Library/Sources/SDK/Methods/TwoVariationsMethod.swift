extension Methods {
    public final class SuccessableFailbale: Basic {
        public func onSuccess(_ clousure: @escaping RequestCallbacks.Success) -> Failable {
            request.callbacks.onSuccess = clousure
            return .init(request)
        }
        
        public func onError(_ clousure: @escaping RequestCallbacks.Error) -> Successable {
            request.callbacks.onError = clousure
            return .init(request)
        }
    }
    
    public final class SuccessableConfigurable: Basic {
        public func onSuccess(_ clousure: @escaping RequestCallbacks.Success) -> Configurable {
            request.callbacks.onSuccess = clousure
            return .init(request)
        }
        
        public func configure(with config: Config) -> Successable {
            request.config = config
            return .init(request)
        }
    }
    
    public final class FailableConfigurable: Basic {
        public func onError(_ clousure: @escaping RequestCallbacks.Error) -> Configurable {
            request.callbacks.onError = clousure
            return .init(request)
        }
        
        public func configure(with config: Config) -> Failable {
            request.config = config
            return .init(request)
        }
    }
}
